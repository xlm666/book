package cn.edu.svtcc.dao;

import cn.edu.svtcc.domain.CategoriesDO;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import java.util.ArrayList;

/**
 * CategoriesDao接口提供分类相关操作
 */

@Repository("CategoriesDao")
public interface CategoriesDao {
    /**
     * 获取全部的类别名称，存入列表
     * @return
     */
    @Select("select * from categories")
    @Results(id = "CategoriesDao",value = {
            @Result(id = true,column = "categories_id",property = "categoriesId"),
            @Result(column = "categories_name",property = "categoriesName")
    })
    ArrayList<CategoriesDO> categoriesList();

}
