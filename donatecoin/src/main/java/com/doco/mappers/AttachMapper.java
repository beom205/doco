package com.doco.mappers;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface AttachMapper {
	
	@Insert("insert into dtd_attach (no,filename) vlaues (LAST_INSERT_ID(),#{filename})")
	public void addAttach(@Param("no") long l, 
			@Param("filename") String filename);
	
	
}
