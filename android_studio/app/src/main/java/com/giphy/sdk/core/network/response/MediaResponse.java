package com.giphy.sdk.core.network.response;

import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.core.models.Meta;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.h;

/* compiled from: MediaResponse.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/giphy/sdk/core/network/response/MediaResponse;", "Lcom/giphy/sdk/core/network/response/GenericResponse;", "data", "Lcom/giphy/sdk/core/models/Media;", "meta", "Lcom/giphy/sdk/core/models/Meta;", "(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/Meta;)V", "getData", "()Lcom/giphy/sdk/core/models/Media;", "setData", "(Lcom/giphy/sdk/core/models/Media;)V", "getMeta", "()Lcom/giphy/sdk/core/models/Meta;", "setMeta", "(Lcom/giphy/sdk/core/models/Meta;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class MediaResponse implements GenericResponse {
    @h
    private Media data;
    @h
    private Meta meta;

    public MediaResponse() {
        this(null, null, 3, null);
    }

    public MediaResponse(@h Media media, @h Meta meta) {
        this.data = media;
        this.meta = meta;
    }

    @h
    public final Media getData() {
        return this.data;
    }

    @h
    public final Meta getMeta() {
        return this.meta;
    }

    public final void setData(@h Media media) {
        this.data = media;
    }

    public final void setMeta(@h Meta meta) {
        this.meta = meta;
    }

    public /* synthetic */ MediaResponse(Media media, Meta meta, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : media, (i4 & 2) != 0 ? null : meta);
    }
}
