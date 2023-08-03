package com.im.freechat.shared.entities;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: PagedList.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/im/freechat/shared/entities/PagedList;", ExifInterface.GPS_DIRECTION_TRUE, "", "pageInfo", "Lcom/im/freechat/shared/entities/PageInfo;", "list", "", "(Lcom/im/freechat/shared/entities/PageInfo;Ljava/util/List;)V", "getList", "()Ljava/util/List;", "getPageInfo", "()Lcom/im/freechat/shared/entities/PageInfo;", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PagedList<T> {
    @g
    private final List<T> list;
    @g
    private final PageInfo pageInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public PagedList(@g PageInfo pageInfo, @g List<? extends T> list) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        Intrinsics.checkNotNullParameter(list, "list");
        this.pageInfo = pageInfo;
        this.list = list;
    }

    @g
    public final List<T> getList() {
        return this.list;
    }

    @g
    public final PageInfo getPageInfo() {
        return this.pageInfo;
    }
}
