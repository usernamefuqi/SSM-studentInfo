package com.atguigu.crud.dao;

import com.atguigu.crud.bean.Grade;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface GradeMapper {
    int deleteByPrimaryKey(Integer id);

    /*添加成绩*/
    int insertGrade(Grade record);
    /*
     * 查询成绩
     * SELECT * FROM grade WHERE sid=201507021227 AND cid=2002
     * */
    String selectSidAndCid(@Param("sid") String sid, @Param("cid") String cid);

    Grade selectByPrimaryKey(Integer id);

    List<Grade> selectAll();

    int updateByPrimaryKey(Grade record);

    /**
     * 	查询学生自己的总学分
     */
    public String queryCreditsSum(String sid);

    /**
     * 	学生查看本人已修改课程
     */
    public List<Grade> getEedCourseBySid(Map<String, Object> data);


}