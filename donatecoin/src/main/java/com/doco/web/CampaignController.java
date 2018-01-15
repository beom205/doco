package com.doco.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import com.doco.web.CampaignController;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.doco.domain.Campaign;
import com.doco.domain.Criteria;
import com.doco.domain.PageMaker;
import com.doco.service.CampaignService;
import com.doco.util.MediaUtils;

@Controller
@RequestMapping("/campaign/*")
public class CampaignController {
	private static final Logger logger = LoggerFactory.getLogger(CampaignController.class);
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Inject
	private CampaignService service;

	// 동록하기
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET() throws Exception {

		logger.info("register get...................");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(Campaign board, RedirectAttributes rttr, MultipartFile video) throws Exception {
		
		logger.info("register post.................,");
		logger.info(board.toString());
		logger.info("=================================");
		
		//동영상
		logger.info("originalName: " + video.getOriginalFilename());
		String savedName = uploadFile(video.getOriginalFilename(), video.getBytes());
		
		board.setMovieFile(savedName);
		//동여상 끝
		
		
		if (board.getFiles() != null) {
			
			logger.info("" + Arrays.toString(board.getFiles()));
		}
		
		service.register(board);
		// model.addAttribute("result", "success");
		rttr.addFlashAttribute("msg", "success");
		
		// return "/board/success";
		return "redirect:/campaign/listPage";
	}
	// 전체목록
	/*
	 * @RequestMapping(value = "/listAll", method = RequestMethod.GET) public void
	 * listAll(Model model) throws Exception {
	 * 
	 * logger.info("show all list..................."); model.addAttribute("list",
	 * service.listAll()); }
	 */

	// 조회하기
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, Model model) throws Exception {
		//model.addAttribute("read", service.read(bno));
		model.addAttribute(service.read(bno));
	}

	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void read(@RequestParam("bno") int bno, @ModelAttribute("cri") Criteria cri, Model model) throws Exception {

		model.addAttribute("campaign1", service.read(bno));
		model.addAttribute("campaign2", service.getAttach(bno));
		model.addAttribute("campaign3", service.getMoive(bno));
	}

	// 수정하기
/*	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modify(int bno, Model model) throws Exception {
		model.addAttribute(service.read(bno));
	}
	

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(Campaign board, RedirectAttributes rttr) throws Exception {

		logger.info("modify post.................,");

		service.modify(board);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/campaign/listPage";
	}*/
	@RequestMapping(value = "/modifyPage", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("bno") int bno, @ModelAttribute("cri") Criteria cri, Model model)
			throws Exception {

		model.addAttribute(service.read(bno));
	}

	@RequestMapping(value = "/modifyPage", method = RequestMethod.POST)
	public String modifyPagingPOST(Campaign baord, Criteria cri, RedirectAttributes rttr) throws Exception {
		logger.info("modify 들어옴");
		service.modify(baord);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/campaign/listPage";
	}
	
	// 삭제하기
	@RequestMapping(value = "/removePage", method = RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, Criteria cri, RedirectAttributes rttr) throws Exception {
		logger.info("remove 들어옴");
		service.remove(bno);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addFlashAttribute("msg", "SUCCESS");
		
		return "redirect:/campaign/listPage";
	}
	
	// 페이징 처리
	@RequestMapping(value = "/listCri", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model) throws Exception {

		logger.info("show list Page with Criteria............");

		model.addAttribute("list", service.listCriteria(cri));
	}

	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void listPage(Criteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		// pageMaker.setTotalCount(131); 
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		
		

		model.addAttribute("pageMaker", pageMaker);
		
	}



	@RequestMapping("/getAttach/{bno}")
	@ResponseBody
	public List<String> getAttach(@PathVariable("bno") Integer bno) throws Exception {
		return service.getAttach(bno);
	}

	// 미리보기
	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {

		InputStream in = null;
		ResponseEntity<byte[]> entity = null;

		logger.info("FILE NAME: " + fileName);

		try {

			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

			MediaType mType = MediaUtils.getMediaType(formatName);

			HttpHeaders headers = new HttpHeaders();

			in = new FileInputStream(uploadPath + fileName);

			if (mType != null) {
				headers.setContentType(mType);
			} else {

				fileName = fileName.substring(fileName.indexOf("_") + 1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition",
						"attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
			}

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}
	
	@ResponseBody
	@RequestMapping("/displayMovie")
	public ResponseEntity<byte[]> displayMovie(String fileName) throws Exception {

		InputStream in = null;
		ResponseEntity<byte[]> entity = null;

		logger.info("FILE NAME: " + fileName);

		try {

			HttpHeaders headers = new HttpHeaders();

			in = new FileInputStream(uploadPath + "\\" + fileName);

			logger.info("uoloadPath" + uploadPath);

			headers.add("Content-Type", "video/mp4");

			// HttpStatus.OK : 보여주기 , HttpStatus.create : 다운받기
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close();
		}
		return entity;
	}
	
	private String uploadFile(String originalName, byte[] fileData) throws Exception {

		UUID uid = UUID.randomUUID();

		String savedName = uid.toString() + "_" + originalName;

		//String savedName = "movie.mp4";

		File machineFileName = new File(uploadPath, "movie.mp4");
		File dbFileName = new File(uploadPath, savedName);
		
		FileCopyUtils.copy(fileData, machineFileName);
		FileCopyUtils.copy(fileData, dbFileName);

		return savedName;

	}

}
