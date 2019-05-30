package org.ssmdeem.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.ssmdeem.dao.A602Mapper;
import org.ssmdeem.entity.*;
import org.ssmdeem.service.A602Service;
import org.ssmdeem.service.A629Service;
import org.ssmdeem.service.A636sService;
import org.ssmdeem.service.A636yService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class usertypeContrller {
    @Autowired
  private A602Service a602Service;
    @Autowired
    private A629Service a629Service;
    @Autowired
    private A636sService a636sService;
    @Autowired
    private A636yService a636yService;
@RequestMapping(value="basic/usertype",method = RequestMethod.GET)
    public String u(){
    return "usertype";
}
@RequestMapping(value = "basic/usertype",method = RequestMethod.POST)
public  String se(Model model, @ModelAttribute A602 record, @ModelAttribute A636s a636s, @ModelAttribute A636y a636y,@ModelAttribute A629 a629){

    record.setCityVillage(record.getCityVillage());
    record.setInternetbundle(record.getInternetbundle());
    record.setUserType(record.getUserType());
    List<A602>list=a602Service.find(record);
    model.addAttribute("list",list);
    a629.setCityVillage(a629.getCityVillage());
    a629.setInternetbundle(a629.getInternetbundle());
    a629.setNumberType(a629.getNumberType());
    List<A629>list2=a629Service.find(a629);
    model.addAttribute("list2",list2);
    a636s.setCityVillage(a636s.getCityVillage());
    a636s.setInternetbundle(a636s.getInternetbundle());
    a636s.setNumberType(a636s.getNumberType());
    List<A636s>list1=a636sService.find(a636s);
    model.addAttribute("list1",list1);
    a636y.setCityVillage(a636y.getCityVillage());
    a636y.setInternetbundle(a636y.getInternetbundle());
    a636y.setNumberType(a636y.getUserType());
    List<A636y>list3=a636yService.find(a636y);
    model.addAttribute("list3",list3);
    return "usertypetwo";
}
@RequestMapping(value = "/basic/usertype3" ,method =RequestMethod.GET)
public  String  t(@RequestParam ("id")Integer id ,
                  @RequestParam("tablename") String tablename,
                  A602 a602 ,A629 a629,A636y a636y,A636s a636s,HttpSession session){
    //tablename 判断那张表
    if (tablename.equals("A602")){
a602.setId(id);
a602.setTablename(tablename);}
    else if (tablename.equals("A629")){
        a629.setId(id);
        a629.setTablename(tablename);
    }
    else if (tablename.equals("A636y")){
        a636y.setId(id);
        a636y.setTablename(tablename);
    }
    else if (tablename.equals("A636s")){
        a636s.setId(id);
        a636s.setTablename(tablename);
    }
session.setAttribute("change",a602);
    return "usertype3";
}
@RequestMapping(value = "/basic/usertypechange" ,method = RequestMethod.POST)
public String change(@RequestParam("id")Integer id,
                     @RequestParam("cityVillage")String cityVillage,
                     @RequestParam("userType")String userType,
                     @RequestParam("internetbundle")String internetbundle,
                     @RequestParam("tablename")String tablename,
                     A602 a602, A629 a629, A636s a636s,A636y a636y){

    if (tablename.equals("A602")){
    a602.setId(id);
    a602.setInternetbundle(internetbundle);
    a602.setCityVillage(cityVillage);
    a602.setUserType(userType);
    a602Service.updateByPrimaryKeySelective(a602);}
    else if (tablename.equals("A629")){
        a629.setId(id);
        a629.setInternetbundle(internetbundle);
        a629.setCityVillage(cityVillage);
        a629.setUserType(userType);
        a629Service.updateByPrimaryKeySelective(a629);
    }
    else  if (tablename.equals("A636y")){
        a636y.setId(id);
        a636y.setCityVillage(cityVillage);
        a636y.setInternetbundle(internetbundle);
        a636y.setUserType(userType);
        a636yService.updateByPrimaryKeySelective(a636y);
    }
    else {
        a636s.setId(id);
        a636s.setCityVillage(cityVillage);
        a636s.setInternetbundle(internetbundle);
        a636s.setUserType(userType);
        a636sService.updateByPrimaryKeySelective(a636s);
    }
    return "redirect:/basic/usertype";
}
}
