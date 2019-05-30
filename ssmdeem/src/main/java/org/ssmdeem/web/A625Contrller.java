package org.ssmdeem.web;
import jxl.read.biff.BiffException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.ssmdeem.dao.A625Mapper;
import org.ssmdeem.entity.A625;
import org.ssmdeem.service.A625Service;
import org.ssmdeem.entity.PageInfo;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class A625Contrller {
    @Autowired
    private A625Service a625Service;
    @Autowired
    private A625Mapper a625Mapper;

    @RequestMapping(value = "/date/a625", method = RequestMethod.GET)
    public String add() {
        return "a625";
    }

    @RequestMapping(value = "/date/a625", method = RequestMethod.POST)
    public String add1(A625 a625) {
        a625Service.insert(a625);
        return "redirect:/first.jsp";
    }

    @RequestMapping(value = "/contract/a625", method = RequestMethod.GET)
    public String select(Model model, @RequestParam(required = true, defaultValue = "1") Integer page) {
        int totalCount = a625Mapper.count2();
        PageInfo<A625> pageInfo = new PageInfo<A625>(page, 7, totalCount);
        List<A625> list = a625Mapper.find1(pageInfo);
        pageInfo.setList(list);
        model.addAttribute("page", pageInfo);
        model.addAttribute("list", list);
        return "/a625contract";
    }

    //查询，使用动态SQL
    @RequestMapping(value = "/a625/select", method = RequestMethod.POST)
    public String select1(Model model, @RequestParam("placename") String placename,
                          @RequestParam("bigclass") String bigclass,
                          @RequestParam("smallclass") String smallclass,
                          @RequestParam("numberType") String numberType) {
        A625 a625 = new A625();
        a625.setPlacename(placename);
        a625.setBigclass(bigclass);
        a625.setSmallclass(smallclass);
        a625.setNumberType(numberType);
        List<A625> list1 = a625Mapper.find2(a625);
        model.addAttribute("list1", list1);
        return "/a625index";
    }

    @RequestMapping(value = "/a625/back", method = RequestMethod.GET)
     public String back(){
        return "redirect:/contract/a625";
    }
    @RequestMapping(value = "/import3", method = RequestMethod.POST)
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
        a625Service.importExcelInfo(filen);
        return "redirect:/first.jsp";
    }
}
