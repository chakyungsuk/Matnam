package com.jeonguggu.matnam.xmin.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.jeonguggu.matnam.xmin.member.MemberMpp";
	
	public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo);}	
	public List<Member> selectList(MemberVo vo) { List<Member> list = sqlSession.selectList(namespace + ".selectList", vo); return list;}
	public List<Member> selectListMemberUploaded(MemberVo vo) { List<Member> list = sqlSession.selectList(namespace + ".selectListMemberUploaded", vo); return list;}
	
	public int insert(Member dto){return sqlSession.insert(namespace + ".insert", dto);}
	public int insertMemberAddress(Member dto){return sqlSession.insert(namespace + ".insertMemberAddress", dto);}
	public int insertMemberPhone(Member dto){return sqlSession.insert(namespace + ".insertMemberPhone", dto);}
	public int insertUploaded(Member dto){return sqlSession.insert(namespace + ".insertUploaded", dto);}
	
	
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo);}	
	public int update(Member dto) { return sqlSession.update(namespace + ".update", dto);}	
	public int delete(MemberVo vo) { return sqlSession.delete(namespace + ".delete", vo);}	
	
}