package com.jeonguggu.matnam.user.profile;

import java.util.List;

public interface ProfileService {

//	로그인
	public Profile selectOneLogin(Profile dto) throws Exception;
	
//	회원 프로필 조회
	public Profile selectOneProfile(ProfileVo vo) throws Exception;
	
//	음식 취향 조회
	public List<Profile> selectListFriendRegion(Profile dto) throws Exception;
	
//	회원 프로필 수정
	public int updateProfile(Profile dto, ProfileVo vo) throws Exception;
	
//	회원 정보 조회
	public Profile selectOneUserMember(ProfileVo vo) throws Exception;
	
//	회원 정보 수정
	public int updateUserMember(Profile dto) throws Exception;
	
//	회원 가입
	public int checkId(ProfileVo vo) throws Exception;
	public int insert(Profile dto) throws Exception;
	
//	회원 리뷰 조회
	public List<Profile> selectListReview(ProfileVo vo) throws Exception;
	
}
