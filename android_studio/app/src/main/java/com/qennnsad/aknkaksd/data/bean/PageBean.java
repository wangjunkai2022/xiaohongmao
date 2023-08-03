package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* loaded from: classes3.dex */
public class PageBean<T> {
    private List<T> list;
    private int page;
    private int page_cnt;
    private int page_count;
    private int page_index;
    private int page_size;
    private int row_count;
    private int size;
    @SerializedName("sum_coin")
    private Long sum_coin;
    @SerializedName("total")
    private int total;

    public List<T> getList() {
        return this.list;
    }

    public int getPage() {
        return this.page;
    }

    public int getPage_cnt() {
        return this.page_cnt;
    }

    public int getPage_count() {
        return this.page_count;
    }

    public int getPage_index() {
        return this.page_index;
    }

    public int getPage_size() {
        return this.page_size;
    }

    public int getRow_count() {
        return this.row_count;
    }

    public int getSize() {
        return this.size;
    }

    public Long getSum_coin() {
        return this.sum_coin;
    }

    public int getTotal() {
        return this.total;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public void setPage(int i4) {
        this.page = i4;
    }

    public void setPage_cnt(int i4) {
        this.page_cnt = i4;
    }

    public void setPage_count(int i4) {
        this.page_count = i4;
    }

    public void setPage_index(int i4) {
        this.page_index = i4;
    }

    public void setPage_size(int i4) {
        this.page_size = i4;
    }

    public void setRow_count(int i4) {
        this.row_count = i4;
    }

    public void setSize(int i4) {
        this.size = i4;
    }

    public void setSum_coin(Long l10) {
        this.sum_coin = l10;
    }

    public void setTotal(int i4) {
        this.total = i4;
    }

    public String toString() {
        return "PageBean{sum_coin=" + this.sum_coin + ", list=" + this.list + ", total=" + this.total + ", page=" + this.page + ", size=" + this.size + ", row_count=" + this.row_count + ", page_index=" + this.page_index + ", page_size=" + this.page_size + ", page_count=" + this.page_count + '}';
    }
}
