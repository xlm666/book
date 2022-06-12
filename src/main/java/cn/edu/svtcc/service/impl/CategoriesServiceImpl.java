package cn.edu.svtcc.service.impl;

import cn.edu.svtcc.dao.CategoriesDao;
import cn.edu.svtcc.domain.CategoriesDO;
import cn.edu.svtcc.service.CategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
@Service
public class CategoriesServiceImpl implements CategoriesService {
    @Autowired
    CategoriesDao categoriesDao;
    @Override
    public ArrayList<CategoriesDO> categoriesList() {
        System.out.println(categoriesDao.categoriesList());
        if (categoriesDao.categoriesList()!=null) {
            return categoriesDao.categoriesList();
        }
        return null;
    }
}
