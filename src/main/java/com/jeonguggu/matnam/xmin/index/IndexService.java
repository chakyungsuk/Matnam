package com.jeonguggu.matnam.xmin.index;

import java.util.List;

import com.jeonguggu.matnam.xmin.member.Member;
import com.jeonguggu.matnam.xmin.member.MemberVo;

public interface IndexService {
	
	int selectOneCount(MemberVo vo) throws Exception;
	List<Member> selectList(MemberVo vo) throws Exception; 
}
