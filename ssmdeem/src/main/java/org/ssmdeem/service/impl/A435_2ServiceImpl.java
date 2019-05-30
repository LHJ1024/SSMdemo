package org.ssmdeem.service.impl;

import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.ssmdeem.dao.A435_2Mapper;
import org.ssmdeem.entity.A435_2;
import org.ssmdeem.entity.A435_2;
import org.ssmdeem.service.A435_2Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

@Service
public class A435_2ServiceImpl implements A435_2Service {
    @Autowired
    private A435_2Mapper a435_2Mapper;
    public int insert(A435_2 record){
        return a435_2Mapper.insert(record);
    }
    public void importExcelInfo(String filePath) throws IOException, BiffException {

        List<A435_2> list = new ArrayList<A435_2>();

        File file = new File(filePath);
        String suffix = file.getName().substring(file.getName().lastIndexOf(".") + 1);

        if (suffix.equals("xls")) {
            // 创建输入流，读取Excel
            InputStream is = new FileInputStream(file.getAbsolutePath());
            // jxl提供的Workbook类
            Workbook wb = Workbook.getWorkbook(is);

            // Excel的页签数量
            int sheet_size = wb.getNumberOfSheets();
            for (int index = 0; index < sheet_size; index++) {
//                List<List> outerList = new ArrayList<List>();
                // 每个页签创建一个Sheet对象
                Sheet sheet = wb.getSheet(index);
                //检测excel排列
                String no1 = sheet.getCell(0, 0).getContents();
                String no2 = sheet.getCell(1, 0).getContents();
                String no3 = sheet.getCell(2, 0).getContents();
                String no4 = sheet.getCell(3, 0).getContents();
                String no5 = sheet.getCell(4, 0).getContents();
                String no6 = sheet.getCell(5, 0).getContents();
//                System.out.print(sheet.getRows());
                // sheet.getRows()返回该页的总行数，第二行开始
                for (int i = 1; i < sheet.getRows(); i++) {
//                    A435_2 user = new A435_2(sheet.getCell(0, i).getContents(), sheet.getCell(1, i).getContents(), sheet.getCell(2, i).getContents(), sheet.getCell(3, i).getContents() , Double.valueOf(sheet.getCell(5, i).getContents()));
                    A435_2 user = new A435_2();
                    user.setPlacename(sheet.getCell(0, i).getContents());
                    user.setSp(sheet.getCell(1, i).getContents());
                    user.setVoicestation(sheet.getCell(2, i).getContents());
                    user.setBeforFee(Double.valueOf(sheet.getCell(3, i).getContents()));
                    user.setFee(Double.valueOf(sheet.getCell(4, i).getContents()));
                    user.setAfterFee(Double.valueOf(sheet.getCell(5, i).getContents()));
                    list.add(user);
                }

            }
        }
        else if (suffix.equals("xlsx")) {
            InputStream is = new FileInputStream(file);
            XSSFWorkbook xssfWorkbook = new XSSFWorkbook(is);
            // 获取每一个工作薄
            for (int numSheet = 0; numSheet < xssfWorkbook.getNumberOfSheets(); numSheet++) {
                XSSFSheet xssfSheet = xssfWorkbook.getSheetAt(numSheet);
                if (xssfSheet == null) {
                    continue;
                }
                // 获取当前工作薄的每一行，第2行开始
                for (int rowNum = 1; rowNum <= xssfSheet.getLastRowNum(); rowNum++) {

                    XSSFRow xssfRow = xssfSheet.getRow(rowNum);
                    // XSSFCell cell = xssfRow.getCell(rowNum);
                    // cell.setCellType(CellType.STRING);
                    if (xssfRow != null) {
                        XSSFCell one = xssfRow.getCell(0);
                        one.setCellType(CellType.STRING);
//                        if(one==null){
//                            break;
//                        }
                        //读取第一列数据
                        XSSFCell two = xssfRow.getCell(1);
                        two.setCellType(CellType.STRING);
                        //读取第二列数据
                        XSSFCell three = xssfRow.getCell(2);
                        three.setCellType(CellType.STRING);

                        XSSFCell four = xssfRow.getCell(3);
                        four.setCellType(CellType.STRING);
                        XSSFCell five= xssfRow.getCell(4);
                        five.setCellType(CellType.STRING);

                        //读取第三列数据
                        //给对象设置值
                        XSSFCell six = xssfRow.getCell(5);
                        six.setCellType(CellType.STRING);
                        //A435_2 user = new A435_2(one.getStringCellValue(), two.getStringCellValue(), three.getStringCellValue(), four.getStringCellValue(), Double.valueOf(six.getStringCellValue()));
//                        A435_2 aa=new A435_2(one.getStringCellValue());
                        A435_2 user=new A435_2();
                        user.setPlacename(one.getStringCellValue());
                        user.setSp(two.getStringCellValue());
                        user.setVoicestation(three.getStringCellValue());
                        user.setBeforFee( Double.valueOf(four.getStringCellValue()));
                        user.setFee( Double.valueOf(five.getStringCellValue()));
                        user.setAfterFee( Double.valueOf(six.getStringCellValue()));
                        list.add(user);
                    }
                }

            }
        }
        a435_2Mapper.insertInfoBatch(list);
    }
}
