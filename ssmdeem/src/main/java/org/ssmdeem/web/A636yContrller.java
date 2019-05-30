package org.ssmdeem.web;

import jxl.read.biff.BiffException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.ssmdeem.entity.A636s;
import org.ssmdeem.entity.A636y;
import org.ssmdeem.service.A636sService;
import org.ssmdeem.service.A636yService;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
public class A636yContrller {
    @Autowired
    private A636yService a636yService;
    @RequestMapping(value = "/date/a636y" , method = RequestMethod.GET)
    public  String add(){
        return "a636y";
    }
    @RequestMapping(value = "/date/a636y" , method = RequestMethod.POST)
    public  String add1(A636y a636y, Model model){
        a636yService.insert(a636y);

        return "redirect:/first.jsp" ;}
    @RequestMapping(value = "/import7", method = RequestMethod.POST)
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
        a636yService.importExcelInfo(filen);
        return "redirect:/first.jsp";
    }
}
