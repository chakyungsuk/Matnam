package com.jeonguggu.matnam.user.profile;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProfileDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.jeonguggu.matnam.user.profile.ProfileMpp";
	
//	�α���
	public Profile selectOneLogin(Profile dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
//	ȸ�� ������ ��ȸ
	public Profile selectOneProfile(ProfileVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneProfile", vo);
	}
}
