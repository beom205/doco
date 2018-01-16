package com.doco.mappers;

import com.doco.domain.Photo;

public interface PhotoMapper extends CRUDMapper<Photo, Integer>{
	
	public void registPhoto(Photo photo);
	
	//public void registPhoto(@Param("no")int no, @Param("fullname")String fullname);
	
	public void modiPhoto(Photo photo);
	
	public Photo readPhoto(int no);

	
}
