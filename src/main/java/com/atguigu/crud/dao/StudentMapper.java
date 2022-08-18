package com.atguigu.crud.dao;

import com.atguigu.crud.bean.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface StudentMapper {
    /**
     *  根据学号删除学生信息
     * @param sid   学号
     * @return  删除结果，!=0则删除成功
     */
    int deleteByPrimaryKey(String sid);

    /**
     *  添加学生
     * @paramstudent   学生信息
     * @return  插入结果 !=0则插入成功
     */
    int insert(Student record);

    Student selectByPrimaryKey(String sid);

    List<Student> selectAll();
    /**
     *  修改学生信息
     * @paramstudent   学生信息
     * @return  修改结果 !=0则修改成功
     */
    int updateByPrimaryKey(Student record);
    /**
     *  修改学生密码
     * @param spassword     修改后的密码
     * @param sid   查询条件学号
     * @return  修改结果 !=0则修改成功
     */
    public int modifyStudentPwd(@Param("spassword") String spassword, @Param("sid") String sid);

    /**
     *  根据学号查询出学生实体
     * @param sid
     * @return
     */
    public Student getByStuSid(String sid);

    /**
     *  学生登录设置
     * @param sid   学号（唯一）
     * @param spassword   密码
     * @return
     */
    public String queryByNamePwd(@Param("sid") String sid, @Param("spassword") String spassword);

    /**
     * 查询全部学生，接住sql语句进行分页
     * @param data
     * @return      查询结果
     */
    public List<Student> selectStudentBySql(Map<String, Object> data);

    /**
     * 根据学号查询学生信息
     * @param data
     * @return  查询结果
     */
    public List<Student> getByStudentSid(Map<String, Object> data);

    /**
     *  根据学院查询学生信息
     * @param data
     * @return 结果
     */
    public List<Student> getByStudentCol(Map<String, Object> data);

    /**
     *  根据专业查询学生信息
     * @param data
     * @return  结果
     */
    public List<Student> getByStudentPro(Map<String, Object> data);

    /**
     *  根据班级查询学生信息
     * @param data
     * @return  结果
     */
    public List<Student> getByStudentCla(Map<String, Object> data);

    /**
     *  ajax验证学号是否存在
     * @param sid   学号
     * @return  结果
     */
    public String ajaxQueryBySid(String sid);
}