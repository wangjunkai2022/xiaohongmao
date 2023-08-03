package com.giphy.sdk.core.network.response;

import com.giphy.sdk.core.models.Channel;
import com.giphy.sdk.core.models.Meta;
import com.giphy.sdk.core.models.Pagination;
import java.util.List;
import kotlin.Metadata;
import m8.h;

/* compiled from: ChannelsSearchResponse.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B)\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tR\"\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcom/giphy/sdk/core/network/response/ChannelsSearchResponse;", "Lcom/giphy/sdk/core/network/response/GenericResponse;", "data", "", "Lcom/giphy/sdk/core/models/Channel;", "pagination", "Lcom/giphy/sdk/core/models/Pagination;", "meta", "Lcom/giphy/sdk/core/models/Meta;", "(Ljava/util/List;Lcom/giphy/sdk/core/models/Pagination;Lcom/giphy/sdk/core/models/Meta;)V", "getData", "()Ljava/util/List;", "setData", "(Ljava/util/List;)V", "getMeta", "()Lcom/giphy/sdk/core/models/Meta;", "setMeta", "(Lcom/giphy/sdk/core/models/Meta;)V", "getPagination", "()Lcom/giphy/sdk/core/models/Pagination;", "setPagination", "(Lcom/giphy/sdk/core/models/Pagination;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class ChannelsSearchResponse implements GenericResponse {
    @h
    private List<Channel> data;
    @h
    private Meta meta;
    @h
    private Pagination pagination;

    public ChannelsSearchResponse(@h List<Channel> list, @h Pagination pagination, @h Meta meta) {
        this.data = list;
        this.pagination = pagination;
        this.meta = meta;
    }

    @h
    public final List<Channel> getData() {
        return this.data;
    }

    @h
    public final Meta getMeta() {
        return this.meta;
    }

    @h
    public final Pagination getPagination() {
        return this.pagination;
    }

    public final void setData(@h List<Channel> list) {
        this.data = list;
    }

    public final void setMeta(@h Meta meta) {
        this.meta = meta;
    }

    public final void setPagination(@h Pagination pagination) {
        this.pagination = pagination;
    }
}
