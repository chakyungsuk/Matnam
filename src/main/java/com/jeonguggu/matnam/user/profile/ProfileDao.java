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
	
//	로그인
	public Profile selectOneLogin(Profile dto) {
		return sqlSession.selectOne(namespace + ".selectOneLogin", dto);
	}
	
//	회원 프로필 조회
	public Profile selectOneProfile(ProfileVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneProfile", vo);
	}
}
