package com.jeonguggu.matnam.xmin.restaurant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jeonguggu.matnam.common.util.UtilUpload;

@Service
public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	RestaurantDao dao;
	

	@Override
	public int selectOneCount(RestaurantVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}



	@Override
	public List<Restaurant> selectList(RestaurantVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Restaurant dto) throws Exception {
		
		dao.insert(dto);
		
		MultipartFile multipartFile;
		String pathModule;
		String path;
		
		multipartFile = dto.getFile();
		
		pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
		path = UtilUpload.upload(multipartFile, pathModule, dto);

		dto.setTableName("matnamUploaded");
		dto.setTypeCd(148);
		dto.setDefaultNy(1);
		dto.setPath(path);
		dto.setPseq(dto.getMnrtSeq()); 

		dao.insertUploadedRestaurant(dto);
		
		
		multipartFile = dto.getFile1();
		
		pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
		path = UtilUpload.upload(multipartFile, pathModule, dto);
		
		dto.setTableName("matnamUploaded");
		dto.setTypeCd(149);
		dto.setDefaultNy(1);
		dto.setPath(path);
		dto.setPseq(dto.getMnrtSeq()); 
		
		dao.insertUploadedRestaurant(dto);
		
		return 1;
	}



	

}
