package com.im.freechat.data.sources.api.entities;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: PagedListResponse.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u001f\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/PagedListResponse;", ExifInterface.GPS_DIRECTION_TRUE, "", "pageInfoResponse", "Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;", "list", "", "(Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;Ljava/util/List;)V", "getList", "()Ljava/util/List;", "getPageInfoResponse", "()Lcom/im/freechat/data/sources/api/entities/PageInfoResponse;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class PagedListResponse<T> {
    @g
    private final List<T> list;
    @g
    private final PageInfoResponse pageInfoResponse;

    /* JADX WARN: Multi-variable type inference failed */
    public PagedListResponse(@com.squareup.moshi.g(name = "page_info") @g PageInfoResponse pageInfoResponse, @com.squareup.moshi.g(name = "list") @g List<? extends T> list) {
        Intrinsics.checkNotNullParameter(pageInfoResponse, "pageInfoResponse");
        Intrinsics.checkNotNullParameter(list, "list");
        this.pageInfoResponse = pageInfoResponse;
        this.list = list;
    }

    @g
    public final List<T> getList() {
        return this.list;
    }

    @g
    public final PageInfoResponse getPageInfoResponse() {
        return this.pageInfoResponse;
    }
}
