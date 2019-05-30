package org.ssmdeem.web;

import jxl.read.biff.BiffException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.ssmdeem.dao.A627Mapper;
import org.ssmdeem.entity.A627;
import org.ssmdeem.entity.PageInfo;
import org.ssmdeem.service.A627Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;


@Controller
public class A627Contrller {
    @Autowired
    private A627Service a627Service;
    @Autowired
    private A627Mapper a627Mapper;
    @RequestMapping(value ="/date/a627",method = RequestMethod.GET)
    public  String add1(){
        return "a627" ;}
    @RequestMapping(value = "/date/a627", method =RequestMethod.POST)

    public  String add(A627 a627)
    {
        a627Service.insert(a627);
        System.out.println(a627);
        return "redirect:/first.jsp" ;}

    @RequestMapping(value = "/contract/a627", method = RequestMethod.GET)
    public String select(Model model, @RequestParam(required = true, defaultValue = "1") Integer page) {
        int totalCount = a627Mapper.count2();
        PageInfo<A627> pageInfo=new PageInfo<A627>(page,10,totalCount);
        List<A627> list = a627Mapper.find1(pageInfo);
        pageInfo.setList(list);
        model.addAttribute("page", pageInfo);
        model.addAttribute("list", list);
        return "/a627contract";
    }
    @RequestMapping(value = "/a627/select",method = RequestMethod.POST)
    public String select1(Model model,A627 a627,
                          @RequestParam("placename")String placename,
                          @RequestParam("bigclass")String bigclass,
                          @RequestParam("smallclass")String smallclass,
                          @RequestParam("numberName")String numberName){
        a627.setPlacename(placename);
        a627.setBigclass(bigclass);
        a627.setSmallclass(smallclass);
        a627.setNumberName(numberName);
        List<A627>list=a627Mapper.find2(a627);
        model.addAttribute("list",list);
        return "/a627index";
    }
    @RequestMapping(value = "/a627/back", method = RequestMethod.GET)
    public String back(){
        return "redirect:/contract/a627";
    }
    @RequestMapping(value = "/import4", method = RequestMethod.POST)
    public String upload(@RequestParam("upfile") MultipartFile[] file, HttpServletRequest request) throws IOException, BiffException {
        String path = request.getSession().getServletContext().getRealPath("/excel/uploadfile/");
        String filen = "";

        for (int i = 0; i < file.length; i++) {
            String fileName = file[i].getOriginalFilename();

            filen = path + fileName;
            File dir = new File(filen);
            dir.mkdirs();
            file[i].transferTo(dir);
            //MultipartFile自带的解析方法
        }
        a627Service.importExcelInfo(filen);
        return "redirect:/first.jsp";
    }
}