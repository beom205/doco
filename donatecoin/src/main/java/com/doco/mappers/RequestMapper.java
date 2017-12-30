package com.doco.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.doco.domain.Request;

public interface RequestMapper extends CRUDMapper<Request, Integer> {
	
	
	@Select("select * from dtb_donation_req  order by no desc limit #{first} , #{second}")
	public List<Request> getList(@Param(value = "first") int first1,
			@Param(value = "second")int second1);

	@Update("update dtb_donation_req set" + 
			"		period = #{period}," + 
			"		password = #{password}," + 
			"		title = #{title}" +
			"		content = #{content}" + 
			"		comments = #{comments}" +  
			"		address = #{address}" +
			"		progress = #{progress}" + 
			"		lat = #{lat}" +
			"		lng = #{lng}" + 
			"		where no =  #{no}")
	public void updateRequest(Request request);
	
	@Delete("delete from dtb_donation_req where no = #{no}")
	public void deleteRequest(int no);

	
	public List<Request> listAll();

}

