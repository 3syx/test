package com.ssm.controller;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.entity.User;
import com.ssm.service.IUserService;


/** *  * @author liyongqiang * */
@Controller
//@RequestMapping("/user")
public class userController {
	@Resource
	private IUserService userService;
	
	/**   登录     *      * @param req     * @param mv     * @return     */    
	@RequestMapping("/login")    
	public ModelAndView login(HttpServletRequest req, ModelAndView mv) {        
		Map<String, String> map = new HashMap<String, String>();        
		map.put("username", req.getParameter("username"));        
		map.put("password", req.getParameter("password"));        
		User user = userService.login(map);        
		if (user != null) {
			//登录成功进入首页           
			mv.setViewName("one"); 
			System.out.println(mv);
		} else {
			//登录失败回到登录页面
			mv.addObject("message", "用户名或密码输入错误,请重新输入");
			mv.setViewName("login");
		}       
		return mv;
	}
	
	
	/** 注册 */
	@RequestMapping("/addUser")
	public String addUser(User user,String code) {
		String mv="add_user";
		if(code.equals("5555")) {
			userService.addUser(user);
			mv= "login";
		}
		return mv;
	}
	
//	/** 验证 
//	 * @throws ClientException 
//	 * @throws ServerException */
//	@RequestMapping("/verify")
//	public void verifyUser(String username,String res) throws ServerException, ClientException {
//		System.out.println(username);
//		System.out.println(res);
//		Ab.getPhonemsg(username);
//	}
//	
	
}
