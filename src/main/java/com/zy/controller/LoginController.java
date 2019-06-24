package com.zy.controller;

import com.zy.controller.common.GlobalConstant;
import com.zy.po.Userlogin;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author yyy
 * 登陆Controller层
 */
@Controller
public class LoginController {

    /**
     * 登录跳转
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/login", method = {RequestMethod.GET})
    public String loginUI() throws Exception {
        return "../../login";
    }

    /**
     * 登录表单处理
     * @param userlogin Userlogin对象
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/login", method = {RequestMethod.POST})
    public String login(Userlogin userlogin) throws Exception {

        //Shiro实现登录
    	/*收集实体/凭据信息
    	UsernamePasswordToken支持最常见的用户名/密码的认证机制。同时，由于它实现了RememberMeAuthenticationToken接口，
    	我们可以通过令牌设置“记住我”的功能。 但是，“已记住”和“已认证”是有区别的：   已记住的用户仅仅是非匿名用户
    	你可以通过subject.getPrincipals()获取用户信息。但是它并非是认证通过的用户，当你访问需要认证用户的功能时，
    	你仍然需要重新提交认证信息。   这一区别可以参考淘宝网站，网站会默认记住登录的用户，再次访问网站时，对于非敏感的页面功能，
    	页面上会显示记住的用户信息，但是当你访问网站账户信息时仍然需要再次进行登录认证。
    	*/
        UsernamePasswordToken token = new UsernamePasswordToken(userlogin.getName(),
                userlogin.getPassword());
        
        //提交实体/凭据信息
        Subject subject = SecurityUtils.getSubject();

        //如果获取不到用户名就是登录失败，但登录失败的话，会直接抛出异常
        subject.login(token);

        //所有用户均重定向对应的展示课程页面
        if (subject.hasRole(GlobalConstant.ROle_Type.ADMIN.getName())) {
            return "redirect:/admin/showCourse";
        } else if (subject.hasRole(GlobalConstant.ROle_Type.TEACHER.getName())) {
            return "redirect:/teacher/showCourse";
        } else if (subject.hasRole(GlobalConstant.ROle_Type.STUDENT.getName())) {
            return "redirect:/student/showCourse";
        }

        return "../../login";
    }

}
