package org.ssmdeem.web;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.ssmdeem.dao.A435_1Mapper;
import org.ssmdeem.dao.A602Mapper;
import org.ssmdeem.dao.A625Mapper;
import org.ssmdeem.entity.*;
import org.ssmdeem.service.*;


import java.util.List;

@Controller
public class UserPlaceContrller {
    @Autowired
    private A602Mapper a602Mapper;
    @Autowired
    private A625Mapper a625Mapper;
    @Autowired
    private A602Service a602Service;
    @Autowired
    private A435_1Mapper a435_1Mapper;
    @Autowired
    private A625Service a625Service;
    @Autowired
    private A627Service a627Service;
    @Autowired
    private A629Service a629Service;
    @Autowired
    private A636sService a636sService;
    @Autowired
    private A636yService a636yService;

    @RequestMapping(value = "basic/place", method = RequestMethod.GET)
    public String select(Model model) {
        List<A602> list = a602Service.findAll();
        List<A435_1> list1 = a435_1Mapper.findAll();
//    List<A625>list2=a625Service.findAll();
//    List<A627>list3=a627Service.findAll();
        List<A629> list4 = a629Service.findAll();
        List<A636s> list5 = a636sService.findAll();
        List<A636y> list6 = a636yService.findAll();
        model.addAttribute("list", list);
        model.addAttribute("list1", list1);
//    model.addAttribute("list2",list2);
//    model.addAttribute("list3",list3);
        model.addAttribute("list4", list4);
        model.addAttribute("list5", list5);
        model.addAttribute("list6", list6);
        return "userplace";
    }

    @RequestMapping(value = "basic/change", method = RequestMethod.GET)
    public String change(Model model, @RequestParam(required = true, defaultValue = "1") Integer page) {
        int totalCount = a625Mapper.count2();
        PageInfo<A625> pageInfo = new PageInfo<A625>(page, 7, totalCount);
        List<A625> list = a625Mapper.find1(pageInfo);
        pageInfo.setList(list);
        model.addAttribute("page", pageInfo);
        model.addAttribute("list", list);

        return "userPlaceChange";
    }

    @RequestMapping(value = "/baojia", method = RequestMethod.GET)
    public String update(A602 a602, A435_1 a435_1, A625 a625, A627 a627, A629 a629, A636s a636s, A636y a636y,
                         @RequestParam("id") Integer id,
                         @RequestParam("placename") String placename,
                         @RequestParam("tablename") String tablename) {
        if (tablename.equals("A435")) {
            a435_1.setId(id);
            a435_1.setPlacename(placename);
            a435_1Mapper.update(a435_1);
        }
        if (tablename.equals("A602")) {
            a602.setId(id);
            a602.setPlacename(placename);
            a602Mapper.update(a602);
        }
        if (tablename.equals("A625")) {
            a625.setId(id);
            a625.setPlacename(placename);
            a625Service.update(a625);
        }
        if (tablename.equals("A627")) {
            a627.setId(id);
            a627.setPlacename(placename);
            a627Service.update(a627);
        }
        if (tablename.equals("A629")) {
            a629.setId(id);
            a629.setPlacename(placename);
            a629Service.update(a629);
        }
        if (tablename.equals("A636s")) {
            a636s.setId(id);
            a636s.setPlacename(placename);
            a636sService.update(a636s);
        }
        if (tablename.equals("A636y")) {
            a636y.setId(id);
            a636y.setPlacename(placename);
            a636yService.update(a636y);
        }
        return "redirect:/basic/change";
    }
}
