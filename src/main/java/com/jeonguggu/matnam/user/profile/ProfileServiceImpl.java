package com.jeonguggu.matnam.user.profile;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jeonguggu.matnam.common.util.UtilDateTime;
@Service
public class ProfileServiceImpl implements ProfileService {
	
	@Autowired
	ProfileDao dao;

//	로그인
	@Override
	public Profile selectOneLogin(Profile dto) throws Exception {
		return dao.selectOneLogin(dto);
	}
	
//	회원 프로필 조회
	@Override
	public Profile selectOneProfile(ProfileVo vo) throws Exception {
		
		return dao.selectOneProfile(vo);
	}
	
//	회원 프로필 수정
	@Override
	public int updateProfile(Profile dto, ProfileVo vo) throws Exception {
		dao.updateProfile(dto);
		dao.updateProfilePhone(dto);
		dao.updateProfileAddress(dto);
		
		dao.deleteMemberRegion(vo);
		
		for(int i = 0; i < dto.getMnmlLocationCdArray().length; i++) {
			dto.setMnmlLocationCd(dto.getMnmlLocationCdArray()[i]);
			
			dao.insertMemberRegion(dto);
		}
		
		return 1;
	}
	
//	지역 조회
	@Override
	public List<Profile> selectListFriendRegion(Profile dto) throws Exception {
		
		return dao.selectListFriendRegion(dto);
	}
	
//	회원 정보 조회
	@Override
	public Profile selectOneUserMember(ProfileVo vo) throws Exception {
		
		return dao.selectOneUserMember(vo);
	}
	
//	회원 정보 수정
	@Override
	public int updateUserMember(Profile dto) throws Exception {
		dao.updateUserMember(dto);
		dao.updateUserMemberAddress(dto);
		dao.updateUserMemberPhone(dto);
		
		return 1;
	}

//	회원 가입
	@Override
	public int checkId(ProfileVo vo) throws Exception {
		return dao.checkId(vo);
	}
	
	@Override
	public int insert(Profile dto) throws Exception {
		
		dto.setRegDateTime(UtilDateTime.nowDate());
		dto.setModDateTime(UtilDateTime.nowDate());
		
		dao.insertUserMember(dto);
		dao.insertUserMemberPhone(dto);
		dao.insertUserMemberAddress(dto);
		dao.insertUserMemberAddressProfile(dto);
		
		for(int i = 0; i < dto.getMnmtTasteCdArray().length; i++) {
			dto.setMnmtTasteCd(dto.getMnmtTasteCdArray()[i]);
			
			dao.insertUserMemberTaste(dto);
		}
		
		return 1;
	}

//	리뷰 조회
	@Override
	public List<Profile> selectListReview(ProfileVo vo) throws Exception {
		
		return dao.selectListReview(vo);
	}
	
//	리뷰 삭제
	@Override
	public int uptDelReview(ProfileVo vo) throws Exception {
		dao.uptDelReview(vo);
		
		return 1;
	}

}
