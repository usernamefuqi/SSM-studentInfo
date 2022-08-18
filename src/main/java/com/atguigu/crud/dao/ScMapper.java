package com.atguigu.crud.dao;

import com.atguigu.crud.bean.Sc;
import com.atguigu.crud.bean.StuExitSelect;
import com.atguigu.crud.bean.StuSelectResult;
import com.atguigu.crud.bean.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface ScMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Sc record);

    Sc selectByPrimaryKey(Integer id);

    List<Sc> selectAll();

    int updateByPrimaryKey(Sc record);

    /**
     * 选课
     * @return  选课结果
     */
    public int selectCourse(@Param("cid") String cid, @Param("sid") String sid);

    /**
     * 判断是否加入过此课程
     * @param cid   课程编号
     * @param sid   学号
     * @return
     */
    public String existCourse(@Param("cid") String cid, @Param("sid") String sid);

    /**
     * 查询全部
     * @param data
     * @return  查询结果
     */
    public List<Sc> getAllSC(Map<String, Object> data);

    /**
     * 根据课程编号查询课程选课信息
     * @param data
     * @return  查询结果
     */
    public List<Sc> getSCByCid(Map<String, Object> data);

    /**
     * 根据学号查询本人已选课程
     * @param data
     * @return  查询结果
     */
    public List<StuSelectResult> getSCBySid(Map<String, Object> data);

    /**
     * 根据学号退选（待确定··）
     * @param data
     * @return  查询结果
     */
    public List<StuExitSelect> getExitBysid(Map<String, Object> data);

    /**
     * 退选
     * @param cid
     * @return
     */
    public int deleteSC(@Param("cid") String cid,@Param("sid") String sid);

    /**
     * 查看课程已选人数
     * @param data
     * @return
     */
    public List<StuExitSelect> getLookByTid(Map<String, Object> data);

    /**
     * 查看课程的学生详细信息
     * @param data
     * @return
     */
    public List<Student> getByStuSid(Map<String, Object> data);
}