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
	
	//조회
	public List<UserService> selectListService(){return sqlSession.selectList(namespace + ".selectListService");}
	
	public UserService selectOneService(UserServiceVo vo) {return sqlSession.selectOne(namespace + ".selectOneService" , vo);}
	
	public UserService selectOneServiceReply(UserServiceVo vo) {return sqlSession.selectOne(namespace + ".selectOneServiceReply" , vo);}
	
	// 등록
	public int insertService(UserService dto) {return sqlSession.insert(namespace + ".insertService" , dto);}
	
	
	
	// 업데이트
	public int userServiceUpdt(UserService dto) {return sqlSession.update(namespace + ".userServiceUpdt" ,dto);}
	
	
	// 삭제
	public int userServiceDelete(UserServiceVo vo) {return sqlSession.delete(namespace + ".userServiceDelete", vo);}
	
	

}
