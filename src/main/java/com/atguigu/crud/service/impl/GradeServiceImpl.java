package com.atguigu.crud.service.impl;

import com.atguigu.crud.bean.Grade;
import com.atguigu.crud.dao.GradeMapper;
import com.atguigu.crud.service.GradeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GradeServiceImpl implements GradeService {

	@Autowired
	private GradeMapper gradeMapper;
	
	@Override
	public int insertGrade(Grade grade) {
		
		return gradeMapper.insertGrade(grade);
	}

	@Override
	public int selectSidAndCid(String sid, String cid) {
		String t= gradeMapper.selectSidAndCid(sid,cid);
		System.out.println(t);
		if(t==null){
			return 1;
		}
		return 0;
	}

	@Override
	public String queryCreditsSum(String sid) {
		return gradeMapper.queryCreditsSum(sid);
	}

	@Override
	public List<Grade> getEedCourseBySid(int pageNo, int pageSize, String sid) {
		Map<String, Object> data = new HashMap<String, Object>();
        data.put("pageNo",(pageNo-1) * pageSize);
        data.put("pageSize",pageSize);
        data.put("sid",sid);
        return gradeMapper.getEedCourseBySid(data);
	}

}
