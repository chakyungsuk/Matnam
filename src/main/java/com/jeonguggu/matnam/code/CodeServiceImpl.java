package com.jeonguggu.matnam.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl {
	
	@Autowired
	CodeDao dao;
	
	@PostConstruct
	public void selectListForCache() throws Exception{
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListForCache();
		
		Code.cachedCodeArrayList.clear();
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " Checked!");		
	}
	
	public static List<Code> selectListCachedCode(String mncgSeq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if(codeRow.getMncgSeq().equals(mncgSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		
		return rt;
	}

}
