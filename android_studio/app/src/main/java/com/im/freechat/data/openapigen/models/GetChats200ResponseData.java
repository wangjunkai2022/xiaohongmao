package com.im.freechat.data.openapigen.models;

import com.qennnsad.aknkaksd.data.repository.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: GetChats200ResponseData.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u000e\b\u0001\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0006HÆ\u0003J-\u0010\u0011\u001a\u00020\u00002\u000e\b\u0003\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0003\u0010\u0005\u001a\u00020\u00062\b\b\u0003\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;", "", "list", "", "Lcom/im/freechat/data/openapigen/models/Chat;", "total", "", f.f47744a, "(Ljava/util/List;II)V", "getList", "()Ljava/util/List;", "getPage", "()I", "getTotal", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class GetChats200ResponseData {
    @g
    private final List<Chat> list;
    private final int page;
    private final int total;

    public GetChats200ResponseData(@com.squareup.moshi.g(name = "list") @g List<Chat> list, @com.squareup.moshi.g(name = "total") int i4, @com.squareup.moshi.g(name = "page") int i10) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.list = list;
        this.total = i4;
        this.page = i10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetChats200ResponseData copy$default(GetChats200ResponseData getChats200ResponseData, List list, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = getChats200ResponseData.list;
        }
        if ((i11 & 2) != 0) {
            i4 = getChats200ResponseData.total;
        }
        if ((i11 & 4) != 0) {
            i10 = getChats200ResponseData.page;
        }
        return getChats200ResponseData.copy(list, i4, i10);
    }

    @g
    public final List<Chat> component1() {
        return this.list;
    }

    public final int component2() {
        return this.total;
    }

    public final int component3() {
        return this.page;
    }

    @g
    public final GetChats200ResponseData copy(@com.squareup.moshi.g(name = "list") @g List<Chat> list, @com.squareup.moshi.g(name = "total") int i4, @com.squareup.moshi.g(name = "page") int i10) {
        Intrinsics.checkNotNullParameter(list, "list");
        return new GetChats200ResponseData(list, i4, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetChats200ResponseData) {
            GetChats200ResponseData getChats200ResponseData = (GetChats200ResponseData) obj;
            return Intrinsics.areEqual(this.list, getChats200ResponseData.list) && this.total == getChats200ResponseData.total && this.page == getChats200ResponseData.page;
        }
        return false;
    }

    @g
    public final List<Chat> getList() {
        return this.list;
    }

    public final int getPage() {
        return this.page;
    }

    public final int getTotal() {
        return this.total;
    }

    public int hashCode() {
        return (((this.list.hashCode() * 31) + this.total) * 31) + this.page;
    }

    @g
    public String toString() {
        return "GetChats200ResponseData(list=" + this.list + ", total=" + this.total + ", page=" + this.page + ')';
    }
}
