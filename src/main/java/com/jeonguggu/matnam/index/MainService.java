package com.jeonguggu.matnam.index;

import java.util.List;

public interface MainService {
	
	public Main selectCountRestaurant() throws Exception;
	public Main selectCountUser() throws Exception;
	public Main selectCountReview() throws Exception;
	
	public List<Main> selectFriend() throws Exception;
	
	
	
	
}
