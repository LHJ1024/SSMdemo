package org.ssmdeem.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.ssmdeem.dao.A625Mapper;
import org.ssmdeem.dao.A627Mapper;
import org.ssmdeem.dao.GetruleMapper;
import org.ssmdeem.dao.TelephonecontractMapper;
import org.ssmdeem.entity.*;
import org.ssmdeem.service.A625Service;
import org.ssmdeem.service.TelephonecontractService;

import javax.servlet.http.HttpSession;
import javax.xml.ws.Action;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.SimpleFormatter;

@Controller
public class TelephonecontractContrller {
    @Autowired
    private TelephonecontractMapper telephonecontractMapper;
    @Autowired
    private A625Mapper a625Mapper;
    @Autowired
    private A627Mapper a627Mapper;
    @Autowired
    private GetruleMapper getruleMapper;

    @RequestMapping(value = "/contract/telephonecontract", method = RequestMethod.GET)
    public String select() {
        return "telephonecontract";
    }

    @RequestMapping(value = "/contract/telephonecontract1", method = RequestMethod.POST)
    public String insert(@RequestParam("contractNumber") Integer contractNumber,
                         @RequestParam("collectionType") String collectionType,
                         @RequestParam("accessNumber") String accessNumber,
                         @RequestParam("distributionRatio") Integer distributionRatio,
                         @RequestParam("dateclass") String dateclass,
                         @RequestParam("moneysubject") String moneysubject,
                         @RequestParam("sp") String sp,
                         @RequestParam("dividedInstructions") String dividedInstructions,
                         @RequestParam("serialNumber") Integer serialNumber,
                         @RequestParam("bigclass") String bigclass,
                         @RequestParam("smallclass") String smallclass,
                         @RequestParam("numberType") String numberType,
                         @RequestParam("tablename") String tablename,
                         @RequestParam("startTime") String startTime,
                         @RequestParam("endTime") String endTime,
                         Model model
    )throws Exception {
        Telephonecontract telephonecontract = new Telephonecontract();
        Getrule getrule = new Getrule();
        System.out.print(startTime);
        SimpleDateFormat stime = new SimpleDateFormat("yyyy-MM-dd");
        telephonecontract.setContractNumber(contractNumber);
        List<Telephonecontract> list = telephonecontractMapper.repeat(telephonecontract);
        if (list.size() == 0) {
            telephonecontract.setSerialNumber(serialNumber);
            telephonecontract.setSp(sp);
            telephonecontract.setAccessNumber(accessNumber);
            telephonecontract.setCollectionType(collectionType);
            telephonecontract.setMoneysubject(moneysubject);
            telephonecontract.setDateclass(dateclass);
            telephonecontract.setDistributionRatio(distributionRatio);
            telephonecontract.setDividedInstructions(dividedInstructions);
            telephonecontract.setStartTime(stime.parse(startTime));
            telephonecontract.setEndTime(stime.parse(endTime));
            getrule.setCollectionType(collectionType);
            getrule.setBigclass(bigclass);
            getrule.setSmallclass(smallclass);
            getrule.setContractNumber(contractNumber);
            getrule.setNumberType(numberType);
            getrule.setTablen(tablename);
            getrule.setSp(sp);
            getrule.setMoneysubject(moneysubject);
            getrule.setDistributionRatio(distributionRatio);
            getrule.setSpdistributionRatio(100-distributionRatio);
            getruleMapper.insert(getrule);
            telephonecontractMapper.insert(telephonecontract);
            model.addAttribute("status", 1);
            System.out.print(list.size());
        }
        else {
            model.addAttribute("status", 2);
            System.out.print("重复了，但是前端未显示");
        }

        return "telephonecontract";
    }

    @RequestMapping(value = "/xianshi", method = RequestMethod.GET)
    public String select1(Model model, HttpSession session,
                          @RequestParam("tablename") String tablename,
                          @RequestParam("id") Integer id
    ) {
        A625 a625 = new A625();
        a625.setTablename(tablename);
        a625.setId(id);
        A627 a627 = new A627();
        a627.setId(id);
        a627.setTablename(tablename);
        if (tablename.equals("A625")) {
            List<A625> list = a625Mapper.selectByPrimaryKey(id);
            model.addAttribute("list", list);
            session.setAttribute("A", a625);

        } else {
            List<A627> list = a627Mapper.selectByPrimaryKey(id);
            model.addAttribute("list1", list);
            session.setAttribute("A", a627);
        }
        return "/telephone1";
    }

    @RequestMapping(value = "/usertype", method = RequestMethod.GET)
    public String fou() {
        return "/telephonecontract";
    }

    @RequestMapping(value = "/basic/spName", method = RequestMethod.GET)
    public String select2(Model model,@RequestParam(required = true, defaultValue = "1") Integer page) {
        int totalCount=telephonecontractMapper.count2();
        PageInfo<Telephonecontract>pageInfo=new PageInfo<Telephonecontract>(page, 7, totalCount);
        List<Telephonecontract> list = telephonecontractMapper.find1(pageInfo);
        pageInfo.setList(list);
        model.addAttribute("page", pageInfo);
        model.addAttribute("list", list);
        return "spname";
    }

    @RequestMapping(value = "/basic/update", method = RequestMethod.GET)
    public String update(@RequestParam("id") Integer id,
                         @RequestParam("sp") String sp,
                         Telephonecontract telephonecontract) {
        telephonecontract.setId(id);
        telephonecontract.setSp(sp);
        telephonecontractMapper.updateByPrimaryKeySelective(telephonecontract);
        return "redirect:/basic/spName";
    }
}
