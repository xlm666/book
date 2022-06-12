package cn.edu.svtcc.domain;

import java.util.List;

/**
 * 分页的Bean
 */
public class PageBean {
    private int pageNum;//当前是多少页
    private int pageSize;//每页显示的记录数20
    private int totalRecord;//总的记录数
    private int totalPage;//一共多少页
    private List list;//当前页显示的记录的集合
    private int start;//
    private int end;
    private int fromIndex;//当前页从集合的哪个地方开始
    private int toIndex;//当前页从集合的哪个地方结束

    /**
     * 构造函数
     * @param pageNum
     * @param pageSize
     * @param totalRecord
     */
    public PageBean(int pageNum, int pageSize, int totalRecord){
        this.pageNum=pageNum;
        this.pageSize=pageSize;
        this.totalRecord=totalRecord;
        fromIndex=(this.pageNum-1)*pageSize;
        toIndex=pageNum*pageSize>totalRecord?totalRecord:pageNum*pageSize;
        totalPage=totalRecord%pageSize==0?totalRecord/pageSize:totalRecord/pageSize+1;
        start=1;
        end=5;
        if(totalPage<5){
            end=totalPage;
        }
        else{
            start=pageNum-2;
            end=pageNum+2;
            if(start<1){
                start=1;
                end=5;
            }
            if(end>this.totalPage){
                end=totalPage;
                start=end-5;
            }
        }

    }
    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List getList() {
        return list;
    }

    public void setList(List list) {
        this.list = list.subList(fromIndex,toIndex);
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    public int getFromIndex() {
        return fromIndex;
    }

    public void setFromIndex(int fromIndex) {
        this.fromIndex = fromIndex;
    }

    public int getToIndex() {
        return toIndex;
    }

    public void setToIndex(int toIndex) {
        this.toIndex = toIndex;
    }

}
