package com.jeonguggu.matnam.user.profile;

public interface ProfileService {

//	�α���
	public Profile selectOneLogin(Profile dto) throws Exception;
	
//	ȸ�� ������ ��ȸ
	public Profile selectOneProfile(ProfileVo vo) throws Exception;
	
//	ȸ�� ���� ��ȸ
	public Profile selectOneUserMember(ProfileVo vo) throws Exception;
	
}
