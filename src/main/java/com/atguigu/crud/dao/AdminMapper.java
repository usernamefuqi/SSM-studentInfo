package com.atguigu.crud.dao;

import com.atguigu.crud.bean.Admin;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminMapper {
    int deleteByPrimaryKey(String aname);

    int insert(Admin record);

    Admin selectByPrimaryKey(String aname);

    List<Admin> selectAll();

    int updateByPrimaryKey(Admin record);

    /*管理员登录*/
    public String queryByNamePwd(@Param("aname") String aname, @Param("apassword") String apassword);
}