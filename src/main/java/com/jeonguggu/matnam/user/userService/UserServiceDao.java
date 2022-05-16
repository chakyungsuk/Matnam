package com.jeonguggu.matnam.user.userService;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class UserServiceDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	private static String namespace = "com.jeonguggu.matnam.user.userService.UserServiceMpp";
	
	
	public List<UserService> selectListService(){return sqlSession.selectList(namespace + ".selectListService");}
	

}
