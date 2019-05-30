package org.ssmdeem.web;

import jxl.read.biff.BiffException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.ssmdeem.dao.A435_1Mapper;
import org.ssmdeem.entity.A435_1;
import org.ssmdeem.entity.A627;
import org.ssmdeem.service.A435_1Service;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Controller
public class A435_1Contrller {
    @Autowired
    private A435_1Mapper a435_1Mapper;
    @Autowired
    private A435_1Service a435_1Service;

    @RequestMapping(value = "/date/a435_1", method = RequestMethod.GET)
    public String add() {
        return "a435_1";
    }

    @RequestMapping(value = "/date/a435_1", method = RequestMethod.POST)
    public String add1(A435_1 a435_1, Model model) {
        a435_1Service.insert(a435_1);
        return "redirect:/first.jsp";
    }

//    @RequestMapping(value = "/import",method = RequestMethod.POST)
//    public String impotr(HttpServletRequest request, Model model) throws Exception {
//        Integer id = 1;
//        //获取上传的文件
//        MultipartHttpServletRequest multipart = (MultipartHttpServletRequest) request;
//        MultipartFile file = multipart.getFile("upfile");
////        String month = request.getParameter("month");
//        InputStream in = file.getInputStream();
//
//        //数据导入
////        a435_1Service.importExcelInfo(file);
//        in.close();
//        return "redirect:/first.jsp";
//
//    }
    @RequestMapping(value = "/import", method = RequestMethod.POST)

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
        a435_1Service.importExcelInfo(filen);
        return "redirect:/first.jsp";
    }
}