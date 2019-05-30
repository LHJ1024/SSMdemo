package org.ssmdeem.web;

import jxl.read.biff.BiffException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.ssmdeem.entity.A435_1;
import org.ssmdeem.entity.A435_2;
import org.ssmdeem.service.A435_1Service;
import org.ssmdeem.service.A435_2Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
public class A435_2Contrller {
    @Autowired
    private A435_2Service a435_2Service;
    @RequestMapping(value = "/date/a435_2" , method = RequestMethod.GET)
    public  String add(){
        return "a435_2";
    }
    @RequestMapping(value = "/date/a435_2" , method = RequestMethod.POST)
    public  String add1(A435_2 a435_2, Model model){
        a435_2Service.insert(a435_2);

        return "redirect:/first.jsp" ;}
    @RequestMapping(value = "/import1", method = RequestMethod.POST)

    public String upload(@RequestParam("upfile") MultipartFile[] file, HttpServletRequest request) throws IOException, BiffException {
        String path = request.getSession().getServletContext().getRealPath("/excel/uploadfile/");
        String filen="";

        for (int i = 0; i < file.length; i++) {
            String fileName = file[i].getOriginalFilename();

            filen =path+fileName;
            File dir = new File(filen);
            dir.mkdirs();
            file[i].transferTo(dir);
            //MultipartFile自带的解析方法
        }
        a435_2Service.importExcelInfo(filen);
        return "redirect:/first.jsp";
    }

}
