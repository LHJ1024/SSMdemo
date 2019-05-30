package org.ssmdeem.web;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import org.ssmdeem.entity.Users;
import org.ssmdeem.service.UsersService;
import org.ssmdeem.uitl.Encryption;


import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;

@Controller
public class UsersContrller {

    @Autowired
    private UsersService usersService;


    //登录
    @RequestMapping(value = "/user/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/user/login", method = RequestMethod.POST)
    public String loginValidate(HttpSession session, Model model, @ModelAttribute Users users) {

        Users record = new Users();
        record.setUsername(users.getUsername());
        List<Users> list = usersService.selectSelective(record);
        if (list.size() == 0) {
            model.addAttribute("status", 1);
        } else {
            record.setPassword(Encryption.MD5(users.getPassword()));
            list = usersService.selectSelective(record);
            if (list.size() == 0) {
                model.addAttribute("status", 2);
            }
            if (list.size() > 0) {
                record = list.get(0);
                model.addAttribute("status", 0);
            }

            session.setAttribute("users", record);


        }
        return "login";
    }

    //注销
    @RequestMapping(value = "/user/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate();
        return "login";
    }//主页

    @RequestMapping(value = "/user/userInfo", method = RequestMethod.GET)
    public String userInfo(Model model, HttpSession session) {
        Users users = (Users) session.getAttribute("userinfo");
        if (users != null) {
            model.addAttribute("user", users);
        }

        return "redirect:/index.jsp";
    }

    //注册
    @RequestMapping(value = "/user/register", method = RequestMethod.GET)
    public String register() {
        return "register";
    }

    @RequestMapping(value = "/user/register", method = RequestMethod.POST)
    public String addUser(HttpSession session, @ModelAttribute Users users, Model model) {
        Users record = new Users();
        record.setUsername(users.getUsername());
        List<Users> list = usersService.selectSelective(record);
        if (list.size() == 0) {
            record.setName(users.getName());
            List<Users> list1 = usersService.selectSelective(record);
            if (list1.size() > 0) {
                model.addAttribute("status", 2);
            } else  {
                users.setPassword(Encryption.MD5(users.getPassword()));
                usersService.insert(users);
                model.addAttribute("status", 0);
                session.setAttribute("users", record);
            }
        }
        if (list.size() > 0) {
            model.addAttribute("status", 1);
        }
        return "register";
    }
}
