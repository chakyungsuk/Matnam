package com.jeonguggu.matnam.xmin.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.jeonguggu.matnam.common.util.UtilDateTime;
import com.jeonguggu.matnam.common.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDao dao;

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo); 
	}

	@Override
	public List<Member> selectListMemberUploaded(MemberVo vo) throws Exception {
		return dao.selectListMemberUploaded(vo);
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		
		
		/*
		 * for(MultipartFile multipartFile : dto.getFile0() ) { String pathModule =
		 * this.getClass().getSimpleName().toString().toLowerCase().replace(
		 * "serviceimpl", ""); UtilUpload.upload(multipartFile, pathModule, dto );
		 * 
		 * dto.setTableName("matnamUploaded"); dto.setType(0); dto.setDefaultNy(0);
		 * dto.setSort(0); dto.setPseq(dto.getMnMmSeq());
		 * 
		 * dao.insertUploaded(dto); }
		 */
		
		dto.setRegDateTime(UtilDateTime.nowDate());		// 날짜
		
		dao.insert(dto);
		dao.insertMemberAddress(dto);
		dao.insertMemberPhone(dto);
		
		return 1;
	}

	@Override
	public int insertMemberAddress(Member dto) throws Exception {
		return dao.insertMemberAddress(dto);
	}

	@Override
	public int insertMemberPhone(Member dto) throws Exception {
		return dao.insertMemberPhone(dto);
	}

	@Override
	public int insertUploaded(Member dto) throws Exception {
		return dao.insertUploaded(dto);
	}
	
	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Member dto) throws Exception {
		return dao.update(dto); 
	}

	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo); 
	}


	
}