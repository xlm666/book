package cn.edu.svtcc.domain;

/**
 * 图书分类的实体类,对应数据库categories表
 */
public class CategoriesDO {
    private Integer categoriesId;//分类Id
    private String categoriesName;//分类的类名

    public CategoriesDO(Integer categoriesId, String categoriesName) {
        this.categoriesId = categoriesId;
        this.categoriesName = categoriesName;
    }

    public CategoriesDO() {

    }

    public Integer getCategoriesId() {
        return categoriesId;
    }

    public void setCategoriesId(Integer categoriesId) {
        this.categoriesId = categoriesId;
    }

    public String getCategoriesName() {
        return categoriesName;
    }

    public void setCategoriesName(String categoriesName) {
        this.categoriesName = categoriesName;
    }

    @Override
    public String toString() {
        return "CategoriesDO{" +
                "categoriesId=" + categoriesId +
                ", categoriesName='" + categoriesName + '\'' +
                '}';
    }
}

