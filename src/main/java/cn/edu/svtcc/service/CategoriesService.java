package cn.edu.svtcc.service;

import cn.edu.svtcc.domain.CategoriesDO;
import java.util.ArrayList;

/**
 * categories接口
 */
public interface CategoriesService {
    //获取分类列表
    ArrayList<CategoriesDO> categoriesList();

}
