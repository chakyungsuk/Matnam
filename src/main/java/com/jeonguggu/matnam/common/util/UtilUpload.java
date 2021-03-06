package com.jeonguggu.matnam.common.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.jeonguggu.matnam.common.constants.Constants;
import com.jeonguggu.matnam.user.profile.Profile;
import com.jeonguggu.matnam.xmin.member.Member;
import com.jeonguggu.matnam.xmin.restaurant.Restaurant;

public class UtilUpload {
	
	public static void upload(MultipartFile multipartFile, String className, Member dto) throws Exception{
		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10);
		String path = "D:/factory/ws_sts_4130/Matnam/src/main/webapp/resources/uploaded/" + "/" + pathModule + "/" + pathDate + "/";

		createPath(path);

		multipartFile.transferTo(new File(path + uuidFileName));


		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
		dto.setPath("/resources/uploaded/" + pathModule + "/" + pathDate + "/");


	}

	public static String upload(MultipartFile multipartFile, String className, Profile dto) throws Exception{
		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10);
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
		String pathSave = "/resources/uploaded/" + pathModule + "/" + pathDate + "/";
		
		createPath(path);
		
		multipartFile.transferTo(new File(path + uuidFileName));
		
		
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
//		 dto.setPath("/resources/uploaded/" + pathModule + "/" + pathDate + "/"); 
		
		return pathSave;
	}
	
	public static String upload(MultipartFile multipartFile, String className, Restaurant dto) throws Exception{
		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10);
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
		String pathSave = "/resources/uploaded/" + pathModule + "/" + pathDate + "/";
		
		createPath(path);
		
		multipartFile.transferTo(new File(path + uuidFileName));
		
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
//		 dto.setPath("/resources/uploaded/" + pathModule + "/" + pathDate + "/"); 
		
		return pathSave;
	}
	
	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if(!uploadPath.exists()) {
			uploadPath.mkdirs();
		} else {
			// by pass
		}
	}
}