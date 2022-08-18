package com.atguigu.crud.dao;

import com.atguigu.crud.bean.CourseGrade;
import com.atguigu.crud.bean.CoursePlan;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface CoursePlanMapper {
    /**
     *  根据排课班级名删除课程信息信息
     * @param排课班级名
     * @return  删除结果，!=0则删除成功
     */
    int deleteCoursePlan(String courseclass);

    /**
     *  添加课程安排
     * @param
     * @return  插入结果 !=0则插入成功
     */
    int insertCoursePlan(CoursePlan record);

    /**
     *  修改课程信息
     * @paramcoursePlan课程安排信息
     * @return  修改结果 !=0则修改成功
     */
    int modifyCoursePlan(CoursePlan record);

    /**
     * 根据排课班级名查询课程安排信息
     * @param data
     * @return  查询结果
     */
    public List<CoursePlan> getByCoursePlanCourseclass(Map<String, Object> data);

    /**
     * 根据教师id查询该教师所安排课程信息
     * @param data
     * @return  查询结果
     */
    public List<CoursePlan> getByCoursePlanTid(Map<String, Object> data);

    /**
     * 根据教师id查询该教师所安排课程的课程编号，以方便查询课程具体信息
     * @param data
     * @return  查询结果
     */
    public List<CoursePlan> getCidByCoursePlanTid(Map<String, Object> data);

    /**
     * 根据课程id查询该课程的上课教师，以方便查询教师具体信息
     * @param data
     * @return  查询结果
     */
    public List<CoursePlan> getTidByCoursePlanCid(Map<String, Object> data);

    /**
     * 根据上课时间、地点、查询课程安排信息，为了ajax查重
     * @param coursetime    上课时间
     * @param courseweek    上课周
     * @param classroom     上课教室
     * @return  查询结果
     */
    public String ajaxGetCoursePlan(@Param("coursetime") String coursetime, @Param("courseweek") String courseweek, @Param("classroom") String classroom);

    /**
     *  	根据课程编号查询该课程，用于查询是否有有安排课程
     * @param cid
     * @return
     */
    public String existsCoursePlan(String cid);

    /**
     * 根据课程编号查询该课程学分
     * @param cid
     * @return
     */
    public Integer getCreditsByCid(String cid);


    /**
     * 根据课程id查询该课程的上课教师，以方便查询教师具体信息
     * @param data
     * @return  查询结果
     */
    public List<CourseGrade> getCourseGrade(Map<String, Object> data);

}