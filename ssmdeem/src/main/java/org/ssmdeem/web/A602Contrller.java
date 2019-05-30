package org.ssmdeem.web;

import jxl.read.biff.BiffException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.ssmdeem.entity.A435_2;
import org.ssmdeem.entity.A602;
import org.ssmdeem.service.A435_2Service;
import org.ssmdeem.service.A602Service;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class A602Contrller {
    @Autowired
    private A602Service a602Service;

    @RequestMapping(value = "/date/a602", method = RequestMethod.GET)
    public String add() {
        return "a602";
    }

    @RequestMapping(value = "/date/a602", method = RequestMethod.POST)
    public String add1(A602 a602) {
        a602Service.insert(a602);

        return "redirect:/first.jsp";
    }

    @RequestMapping(value = "/import2", method = RequestMethod.POST)

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
        a602Service.importExcelInfo(filen);
        return "redirect:/first.jsp";
    }
}