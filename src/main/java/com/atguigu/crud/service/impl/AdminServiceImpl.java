package com.atguigu.crud.service.impl;


import com.atguigu.crud.dao.AdminMapper;
import com.atguigu.crud.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName: AdminServiceImpl
 * @Description: 管理员service具体实现类
 */
@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;
    /**
     *  管理员登录设置
     * @param aname   管理员账号（唯一）
     * @param apassword   密码
     * @return
     */
    public String queryByNamePwd(String aname, String apassword) {
        return adminMapper.queryByNamePwd(aname,apassword);
    }
}
