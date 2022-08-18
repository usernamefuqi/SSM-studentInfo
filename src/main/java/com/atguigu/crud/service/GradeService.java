package com.atguigu.crud.service;


import com.atguigu.crud.bean.Grade;

import java.util.List;

public interface GradeService {
	
	/**
     * 	 添加成绩
     * @paramgrand   成绩
     * @return  插入结果 !=0则插入成功
     */
    public int insertGrade(Grade grade);
    /*
    * 查询成绩
    * SELECT * FROM grade WHERE sid=201507021227 AND cid=2002
    * */
    public int selectSidAndCid(String sid,String cid);
    /**
     * 	查询学生自己的总学分
     */
    public String queryCreditsSum(String sid);
    /**
     * 	学生查看本人已修改课程
     */
    public List<Grade> getEedCourseBySid(int pageNo, int pageSize, String sid);

}
