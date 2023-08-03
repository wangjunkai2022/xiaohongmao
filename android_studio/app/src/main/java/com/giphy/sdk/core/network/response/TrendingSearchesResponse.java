package com.giphy.sdk.core.network.response;

import com.giphy.sdk.core.models.Meta;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.h;

/* compiled from: TrendingSearchesResponse.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B#\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007R\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/giphy/sdk/core/network/response/TrendingSearchesResponse;", "Lcom/giphy/sdk/core/network/response/GenericResponse;", "data", "", "", "meta", "Lcom/giphy/sdk/core/models/Meta;", "(Ljava/util/List;Lcom/giphy/sdk/core/models/Meta;)V", "getData", "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", "getMeta", "()Lcom/giphy/sdk/core/models/Meta;", "setMeta", "(Lcom/giphy/sdk/core/models/Meta;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class TrendingSearchesResponse implements GenericResponse {
    @h
    private List<String> data;
    @h
    private Meta meta;

    public TrendingSearchesResponse() {
        this(null, null, 3, null);
    }

    public TrendingSearchesResponse(@h List<String> list, @h Meta meta) {
        this.data = list;
        this.meta = meta;
    }

    @h
    public final List<String> getData() {
        return this.data;
    }

    @h
    public final Meta getMeta() {
        return this.meta;
    }

    public final void setData(@h List<String> list) {
        this.data = list;
    }

    public final void setMeta(@h Meta meta) {
        this.meta = meta;
    }

    public /* synthetic */ TrendingSearchesResponse(List list, Meta meta, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : list, (i4 & 2) != 0 ? null : meta);
    }
}