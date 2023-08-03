package com.im.freechat.data.sources.api.entities;

import com.qennnsad.aknkaksd.data.repository.f;
import com.squareup.moshi.g;
import kotlin.Metadata;
import m8.h;

/* compiled from: PageInfoResponse.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B;\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\n¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;", "", f.f47744a, "", "pageNum", f.f47745b, "totalPage", "totalCount", "(ILjava/lang/Integer;Ljava/lang/Integer;II)V", "getPage", "()I", "getPageNum", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSize", "getTotalCount", "getTotalPage", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class PageInfoResponse {
    private final int page;
    @h
    private final Integer pageNum;
    @h
    private final Integer size;
    private final int totalCount;
    private final int totalPage;

    public PageInfoResponse(@g(name = "page") int i4, @g(name = "pageNum") @h Integer num, @g(name = "size") @h Integer num2, @g(name = "totalPage") int i10, @g(name = "totalCount") int i11) {
        this.page = i4;
        this.pageNum = num;
        this.size = num2;
        this.totalPage = i10;
        this.totalCount = i11;
    }

    public final int getPage() {
        return this.page;
    }

    @h
    public final Integer getPageNum() {
        return this.pageNum;
    }

    @h
    public final Integer getSize() {
        return this.size;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    public final int getTotalPage() {
        return this.totalPage;
    }
}
