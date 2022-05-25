package com.jeonguggu.matnam.user.profile;

import java.util.List;

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
	
//	회원 프로필 수정
	public int updateProfile(Profile dto) {
		return sqlSession.update(namespace + ".updateProfile", dto);
	}
	public int updateProfilePhone(Profile dto) {
		return sqlSession.update(namespace + ".updateProfilePhone", dto);
	}
	public int updateProfileAddress(Profile dto) {
		return sqlSession.update(namespace + ".updateProfileAddress", dto);
	}
	
//	회원 정보 조회
	public Profile selectOneUserMember(ProfileVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneUserMember", vo);
	}
	
//	회원 정보 수정
	public int updateUserMember(Profile dto) {
		return sqlSession.update(namespace + ".updateUserMember", dto);
	}
	public int updateUserMemberPhone(Profile dto) {
		return sqlSession.update(namespace + ".updateUserMemberPhone", dto);
	}
	public int updateUserMemberAddress(Profile dto) {
		return sqlSession.update(namespace + ".updateUserMemberAddress", dto);
	}
	
//	회원가입
	public int checkId(ProfileVo vo) {
		return sqlSession.selectOne(namespace + ".checkId", vo);
	}
	public int insertUserMember(Profile dto) {
		return sqlSession.insert(namespace + ".insertUserMember", dto);
	}
	public int insertUserMemberPhone(Profile dto) {
		return sqlSession.insert(namespace + ".insertUserMemberPhone", dto);
	}
	public int insertUserMemberTaste(Profile dto) {
		return sqlSession.insert(namespace + ".insertUserMemberTaste", dto);
	}
	public int insertUserMemberAddress(Profile dto) {
		return sqlSession.insert(namespace + ".insertUserMemberAddress", dto);
	}
	public int insertUserMemberAddressProfile(Profile dto) {
		return sqlSession.insert(namespace + ".insertUserMemberAddressProfile", dto);
	}
	
	//회원 리뷰 조회
	public List<Profile> selectListReview(ProfileVo vo) {
		return sqlSession.selectList(namespace + ".selectListReview", vo);
	}
}
