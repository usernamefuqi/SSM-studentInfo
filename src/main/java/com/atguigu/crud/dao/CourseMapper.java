package com.atguigu.crud.dao;

import com.atguigu.crud.bean.Course;
import java.util.List;
import java.util.Map;

public interface CourseMapper {
    /*根据课程编号删除课程信息信息,
    * 删除结果，!=0则删除成功*/
    int deleteByPrimaryKey(String cid);

    /*添加课程
    * 结果！=0，插入成功*/
    int insert(Course record);

    Course selectByPrimaryKey(String cid);

    List<Course> selectAll();

    /*修改课程信息*/
    int updateByPrimaryKey(Course record);

    /**
     *  根据课程编号查询出课程实体
     * @param cid
     * @return
     */
    public Course getByCouCid(String cid);


    /**
     * 查询全部课程，接住sql语句进行分页
     * @param data
     * @return      查询结果
     */
    public List<Course> selectCourseBySql(Map<String, Object> data);

    /**
     * 根据课程编号查询课程信息
     * @param data
     * @return  查询结果
     */
    public List<Course> getByCourseCid(Map<String, Object> data);

    /**
     * 根据课程名称查询课程信息
     * @param data
     * @return  查询结果
     */
    public List<Course> getByCourseCname(Map<String, Object> data);

    /**
     *  根据学院查询课程信息
     * @param data
     * @return 结果
     */
    public List<Course> getByCourseCol(Map<String, Object> data);

    /**
     *  根据课程类型查询课程信息
     * @param data
     * @return  结果
     */
    public List<Course> getByCourseType(Map<String, Object> data);

    /**
     *  ajax验证课程编号是否存在
     * @param cid   课程编号
     * @return  结果
     */
    public String ajaxQueryByCid(String cid);
}