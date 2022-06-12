package cn.edu.svtcc.domain;

/**
 * 图书实体类，对应数据库的book表
 */
public class BooksDO {
    private Integer bookId;//图书id
    private String bookName;//图书名称
    private String bookAuthor;//书的作者
    private String bookImg;//书的封面
    private String bookTranslators;//图书翻译员
    private String bookContent;//图书内容
    private String bookAuthorIntroduce;//作者介绍
    private Integer categoriesId;//图书分类

    public BooksDO() {
    }

    public BooksDO(Integer bookId, String bookName, String bookAuthor, String bookImg, String bookTranslators, String bookContent, String bookAuthorIntroduce, Integer categoriesId) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookAuthor = bookAuthor;
        this.bookImg = bookImg;
        this.bookTranslators = bookTranslators;
        this.bookContent = bookContent;
        this.bookAuthorIntroduce = bookAuthorIntroduce;
        this.categoriesId = categoriesId;
    }

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public String getBookImg() {
        return bookImg;
    }

    public void setBookImg(String bookImg) {
        this.bookImg = bookImg;
    }

    public String getBookTranslators() {
        return bookTranslators;
    }

    public void setBookTranslators(String bookTranslators) {
        this.bookTranslators = bookTranslators;
    }

    public String getBookContent() {
        return bookContent;
    }

    public void setBookContent(String bookContent) {
        this.bookContent = bookContent;
    }

    public String getBookAuthorIntroduce() {
        return bookAuthorIntroduce;
    }

    public void setBookAuthorIntroduce(String bookAuthorIntroduce) {
        this.bookAuthorIntroduce = bookAuthorIntroduce;
    }

    public Integer getCategoriesId() {
        return categoriesId;
    }

    public void setCategoriesId(Integer categoriesId) {
        this.categoriesId = categoriesId;
    }

    @Override
    public String toString() {
        return "BooksDO{" +
                "bookId=" + bookId +
                ", bookName='" + bookName + '\'' +
                ", bookAuthor='" + bookAuthor + '\'' +
                ", bookImg='" + bookImg + '\'' +
                ", bookTranslators='" + bookTranslators + '\'' +
                ", bookContent='" + bookContent + '\'' +
                ", bookAuthorIntroduce='" + bookAuthorIntroduce + '\'' +
                ", categoriesId=" + categoriesId +
                '}';
    }
}
