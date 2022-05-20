package com.jeonguggu.matnam.xmin.member;

import java.util.List;

public interface MemberService {
	
	int selectOneCount(MemberVo vo) throws Exception;
	List<Member> selectList(MemberVo vo) throws Exception; 
	List<Member> selectListMemberUploaded(MemberVo vo) throws Exception; 
	
	int insert(Member dto) throws Exception; 
	int insertMemberAddress(Member dto) throws Exception; 
	int insertMemberPhone(Member dto) throws Exception; 
	int insertUploaded(Member dto) throws Exception; 
	
	Member selectOne(MemberVo vo) throws Exception;
	int update(Member dto) throws Exception;
	int updateMobile(Member dto) throws Exception;
	int updateAddress(Member dto) throws Exception;
	int delete(MemberVo vo) throws Exception;
	
}