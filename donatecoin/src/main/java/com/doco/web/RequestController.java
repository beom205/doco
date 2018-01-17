package com.doco.web;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.doco.domain.Member;
import com.doco.domain.Photo;
import com.doco.domain.Request;
import com.doco.service.RequestService;

import lombok.extern.java.Log;

@Log
@Controller
@RequestMapping("/request/*")
public class RequestController {

	@Autowired
	private RequestService service;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	@GetMapping("/register")
	public void registerGET(HttpSession session,Model model) {
		
		Member member = null;
		member = (Member)session.getAttribute("login");
		log.info("nickname : "+member);
		if(member != null) {
			log.info("닉네임은 널이 아님 name : "+ member.getName());
			model.addAttribute("name",member.getName());
		}
		
	}
	
		
	@PostMapping("/register")
	public String registPOST( Request request,MultipartHttpServletRequest msr, 
			RedirectAttributes rttr, MultipartFile f1,Model model){
		
//		
		
	//	request.getS
	//	HttpSession session = request.getSession();
		
		
//		
		
		log.info(f1.getOriginalFilename());
		log.info(f1.getContentType());
		log.info("" + f1.getSize());
		
		
		
		Photo photo = new Photo();
		
		String uuid = UUID.randomUUID().toString();
		String uploadName = f1.getOriginalFilename();
		log.info("filename : "+ uploadName);
		String fullName = "C:\\upload\\"+uuid+"_"+uploadName;
		
		try {
			OutputStream out = new FileOutputStream(fullName);
//			FileCopyUtils.copy(f1.getBytes(), out);
			//파일 저장
			FileCopyUtils.copy(f1.getInputStream(), out);
				
			/*if(f1.getContentType().startsWith("image")) {
				model.addAttribute("isImage", f1.getContentType().startsWith("image"));
				String uploadedName = makeThumbnail(uploadName);
				log.info("이미지아닌데 들어왔냐 왜!!");
				photo = new Photo();
				
				photo.setFullname(uploadName);
				photo.setNo(request.getNo());
			}*/

		} catch (Exception e) {
			log.warning(e.getMessage());
		}
		photo.setFilename(uploadName);
		photo.setFullname(fullName);
		photo.setNo(request.getNo());
		log.info("" + request);
		//photo.setFullname(uploadName);
		
		String reg_date = (new SimpleDateFormat("yyyy/MM/dd HH:mm")).format( new Date() );
		log.info("reg_date: "+reg_date);
		request.setReg_date(reg_date);
		log.info("request: " + request);
		int registRNO = service.regist(request, photo);
		
		rttr.addFlashAttribute("result", "success");
		
		return "redirect:/request/listAll?no="+registRNO;
	}
	

	private String makeThumbnail(String fileName) throws Exception {
		
		BufferedImage sourceImg = 
			      ImageIO.read(new File("C:\\upload\\", fileName));
			  
			  int dw = 150, dh = 100;
		      int ow = sourceImg.getWidth(); 
		      int oh = sourceImg.getHeight();
		      int nw = ow; 
		      int nh = (ow * dh) / dw;
		      if(nh > oh) { nw = (oh * dw) / dh; nh = oh; }
		      BufferedImage cropImg = Scalr.crop(sourceImg, (ow-nw)/2, (oh-nh)/2, nw, nh);
			  
		      BufferedImage destImg = Scalr.resize(cropImg, dw, dh);
			  
			  String thumbnailName = "C:\\upload\\" + File.separator +"s_"+ fileName; //s_ thumnail인지 구분하기 위해 추가
			  
		File newFile = new File(thumbnailName); //
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);

		ImageIO.write(destImg, formatName.toUpperCase(), newFile);

		log.info(thumbnailName);
		
		return thumbnailName;
	}

	@GetMapping("/listAll")
	public void listAll(Model model) {
		
		log.info("list all");
		
		model.addAttribute("list",service.listAll());
	}
	
	@GetMapping("/read")
	public void read(@RequestParam("no") int no , Model model) {
		model.addAttribute("read",service.read(no));
		model.addAttribute("photo",service.getPhoto(no));
	}
	
	@GetMapping(value="/download")
	@ResponseBody
	public ResponseEntity<byte[]> downloadFile(int no) {
	     
	     ResponseEntity<byte[]> result = null;
	     HttpHeaders headers = new HttpHeaders();
	     Photo photo= service.getPhoto(no);
	     String fullName = photo.getFullname();
	     log.info("fullName : "+fullName);
	     String fileName = photo.getFilename();
	     log.info("fileName : "+fullName);
	     
	     try {
	          InputStream in = new FileInputStream(fullName);
	          ByteArrayOutputStream bos = new ByteArrayOutputStream();
	          
	          IOUtils.copy(in, bos);   //IOUtils도 스프링에 들어가 있음, 얘를 사용해도 무방
	           /*headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);*/
	          headers.add("Content-Disposition", "attachment; filename=\""+
	               new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
	         
	          return new ResponseEntity<byte[]>(bos.toByteArray(), headers, HttpStatus.OK);
	     }catch(Exception e) {
	          e.printStackTrace();
	     }
	     return null;
	}


	
	
//	@GetMapping("/modify")
//	public void modifyGET(@RequestParam(name = "no")int no, Model model) {
//		model.addAttribute(service.read(no));
//	}
//	

	@PostMapping("/remove")
	public String remove(@RequestParam("no") int no, RedirectAttributes rttr) {
		
		service.remove(no);
		
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/request/listAll";
	}
	
}




