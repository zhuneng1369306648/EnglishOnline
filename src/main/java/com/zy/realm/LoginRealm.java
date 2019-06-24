package com.zy.realm;

import com.zy.controller.common.SHA1Utils;
import com.zy.po.Role;
import com.zy.po.Userlogin;
import com.zy.service.RoleService;
import com.zy.service.UserloginService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.Set;

/**
 ** @author yyy
 * 身份验证
 */
@Component
public class LoginRealm extends AuthorizingRealm{

    @Resource(name = "userloginServiceImpl")
    private UserloginService userloginService;

    @Resource(name = "roleServiceImpl")
    private RoleService roleService;

    /**
     * 获取身份信息，从数据库获取该用户的权限和角色信息，当调用权限验证时自动调用。
     * @param principalCollection
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String name = (String) getAvailablePrincipal(principalCollection);

        Role role = null;

        try {
            Userlogin userlogin = userloginService.findByName(name);
            //获取角色对象
            role = roleService.findByid(userlogin.getRole());
        } catch (Exception e) {
            e.printStackTrace();
        }
        //通过用户名从数据库获取权限/角色信息
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        Set<String> r = new HashSet<String>();
        if (role != null) {
            r.add(role.getName());
            info.setRoles(r);
        }

        return info;
    }

    /**
     * 进行身份验证，登陆时自动调用
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取基于用户名和密码的令牌 
        //实际上这个authcToken是从LoginController里面 currentUser.login(token)传过来的
        //用户名
        String username = (String) token.getPrincipal();
        //密码
        String password = new String((char[])token.getCredentials());

        Userlogin userlogin = null;
        try {
            userlogin = userloginService.findByName(username);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (userlogin == null) {
            //没有该用户名
            throw new UnknownAccountException("该用户不存在！");
        } else if (!SHA1Utils.validatePassword(password, userlogin.getPassword())) {
            //密码错误
            throw new IncorrectCredentialsException("密码错误！");
        }

        //身份验证通过,返回一个身份信息
        AuthenticationInfo aInfo = new SimpleAuthenticationInfo(username,password,getName());

        return aInfo;
    }
}
