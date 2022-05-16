package com.jeonguggu.matnam.user.profile;

public interface ProfileService {

//	로그인
	public Profile selectOneLogin(Profile dto) throws Exception;
	
//	회원 프로필 조회
	public Profile selectOneProfile(ProfileVo vo) throws Exception;
	
//	회원 정보 조회
	public Profile selectOneUserMember(ProfileVo vo) throws Exception;
	
}
