package cn.edu.svtcc.controller;

import cn.edu.svtcc.domain.BooksDO;
import cn.edu.svtcc.service.BookService;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.util.List;
@Controller
public class exportAllBooksController {
    @Autowired
    BookService bookService;
    @RequestMapping("/exportExcel")
    public void exportAllActivitys(HttpServletResponse response) throws Exception{
        List<BooksDO> booksList = bookService.getAllBooks();
        //用apache的poi创建excel文件,并把activityList写入excel文件中
        //创建HSSFWorkbook对象，对应一个excel文件
        HSSFWorkbook wb = new HSSFWorkbook();
        //使用wb创建HSSFSheet对象，对应wb文件中的一页
        HSSFSheet sheet = wb.createSheet("图书");//设置页名
        //使用sheet创建HSSFRow对象，对应sheet中的一行
        HSSFRow row = sheet.createRow(0);//索引为0就是第一行
        //使用row创建HSSFCell对象，对应row中的列
        HSSFCell cell = row.createCell(0);//索引为0就是第一列
        //往列里设置值
        cell.setCellValue("ID");
        cell = row.createCell(1);
        cell.setCellValue("书名");
        cell = row.createCell(2);
        cell.setCellValue("作者");
        cell = row.createCell(3);
        cell.setCellValue("封面");
        cell = row.createCell(4);
        cell.setCellValue("翻译人");
        cell = row.createCell(5);
        cell.setCellValue("内容");
        cell = row.createCell(6);
        cell.setCellValue("作者简介");
        cell = row.createCell(7);
        cell.setCellValue("分类id");

        //遍历BooksList,创建Row
        //先判断list有没有数据
        if(booksList!=null&&booksList.size()>0){
            BooksDO booksDO=null;//拿到外面定义就不用每次循环都创建，效率更高
            for(int i=0;i<booksList.size();i++){
                booksDO = booksList.get(i);
                //每遍历出一个activity，生成一行
                row=sheet.createRow(i+1);
                cell = row.createCell(0);
                cell.setCellValue(booksDO.getBookId());
                cell = row.createCell(1);
                cell.setCellValue(booksDO.getBookName());
                cell = row.createCell(2);
                cell.setCellValue(booksDO.getBookAuthor());
                cell = row.createCell(3);
                cell.setCellValue(booksDO.getBookImg());
                cell = row.createCell(4);
                cell.setCellValue(booksDO.getBookTranslators());
                cell = row.createCell(5);
                cell.setCellValue(booksDO.getBookContent());
                cell = row.createCell(6);
                cell.setCellValue(booksDO.getBookAuthorIntroduce());
                cell = row.createCell(7);
                cell.setCellValue(booksDO.getCategoriesId());
            }
        }


        //改进后！！！！！！！！！！！！！！！！！！！！！

        //设置响应类型 application/octet-stream表示excel文件
        response.setContentType("application/octet-stream;charset=UTF-8");
        //设置响应头  Content-Disposition打开方式 attachment以附件的形式
        response.addHeader("Content-Disposition","attachment;filename=BooksList.xls");
        OutputStream out = response.getOutputStream();
        wb.write(out);
        wb.close();
        out.flush();//out由response生成的，tomcat会自己关闭，不能自己关闭，不flush可能会数据丢失
    }
}
