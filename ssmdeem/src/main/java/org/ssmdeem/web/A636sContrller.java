package org.ssmdeem.web;

import jxl.read.biff.BiffException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.ssmdeem.entity.A625;
import org.ssmdeem.entity.A636s;
import org.ssmdeem.service.A625Service;
import org.ssmdeem.service.A636sService;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
public class A636sContrller {
    @Autowired
    private A636sService a636sService;
    @RequestMapping(value = "/date/a636s" , method = RequestMethod.GET)
    public  String add(){
        return "a636s";
    }
    @RequestMapping(value = "/date/a636s" , method = RequestMethod.POST)
    public  String add1(A636s a636s, Model model){
        a636sService.insert(a636s);

        return "redirect:/first.jsp" ;}
    @RequestMapping(value = "/import6", method = RequestMethod.POST)
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
        a636sService.importExcelInfo(filen);
        return "redirect:/first.jsp";
    }
}
