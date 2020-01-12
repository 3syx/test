package com.ssm.service;
 
import java.util.Map;
 
import com.ssm.entity.User;
 
public interface IUserService {
 
 
    /** 登录 */
    public User login(Map<String, String> map);
    
    /** 注册 */
    public void addUser(User user);
}