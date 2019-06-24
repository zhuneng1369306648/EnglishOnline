package com.zy.service.impl;

import com.zy.mapper.RoleMapper;
import com.zy.po.Role;
import com.zy.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author yyy
 * 用户类型Service层实现类
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    /**
     * 根据用户类型查询
     * @param id 用户类型id
     * @return Role对象
     * @throws Exception
     */
    @Override
    public Role findByid(Integer id) throws Exception {
        return roleMapper.selectByPrimaryKey(id);
    }
}
