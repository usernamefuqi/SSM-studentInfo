package com.atguigu.crud.dao;

import com.atguigu.crud.bean.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface TeacherMapper {
    /**
     *  根据教师编号删除教师信息
     * @param tid   教师编号
     * @return  删除结果，!=0则删除成功
     */
    int deleteByPrimaryKey(String tid);

    /**
     *  添加教师
     * @paramteacher   学生教师
     * @return  插入结果 !=0则插入成功
     */
    int insert(Teacher record);

    /**
     *  根据教师编号查询出教师实体
     * @param tid
     * @return
     */
    Teacher selectByPrimaryKey(String tid);

    List<Teacher> selectAll();
    /**
     *  修改教师信息
     * @paramteacher   教师信息
     * @return  修改结果 !=0则修改成功
     */
    int updateByPrimaryKey(Teacher record);
    /**
     *  修改教师密码
     * @param tpassword     修改后的密码
     * @param tid   查询条件教师编号
     * @return  修改结果 !=0则修改成功
     */
    public int modifyTeacherPwd(@Param("tpassword") String tpassword, @Param("tid") String tid);
    /**
     *  教师登录设置
     * @param tid   教师编号（唯一）
     * @param tpassword   密码
     * @return
     */
    public String queryByNamePwd(@Param("tid") String tid, @Param("tpassword") String tpassword);

    /*
     * sql后加limit实现分页
     * 查询全部教师
     * */
    public List<Teacher> selectTeacherBySql(Map<String, Object> data);

    /**
     * 根据学号查询教师信息
     * @param data
     * @return  查询结果
     */
    public List<Teacher> getByTeacherTid(Map<String, Object> data);

    /**
     *  ajax验证教师是否存在
     * @param tid   教师编号
     * @return  结果
     */
    public String ajaxQueryByTid(String tid);
}