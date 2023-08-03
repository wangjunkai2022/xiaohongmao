package com.giphy.sdk.core.network.response;

import com.giphy.sdk.core.models.Meta;
import com.giphy.sdk.core.models.RandomGif;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: RandomGifResponse.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000f\u001a\u00020\u0010R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/giphy/sdk/core/network/response/RandomGifResponse;", "Lcom/giphy/sdk/core/network/response/GenericResponse;", "data", "Lcom/giphy/sdk/core/models/RandomGif;", "meta", "Lcom/giphy/sdk/core/models/Meta;", "(Lcom/giphy/sdk/core/models/RandomGif;Lcom/giphy/sdk/core/models/Meta;)V", "getData", "()Lcom/giphy/sdk/core/models/RandomGif;", "setData", "(Lcom/giphy/sdk/core/models/RandomGif;)V", "getMeta", "()Lcom/giphy/sdk/core/models/Meta;", "setMeta", "(Lcom/giphy/sdk/core/models/Meta;)V", "toGifResponse", "Lcom/giphy/sdk/core/network/response/MediaResponse;", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class RandomGifResponse implements GenericResponse {
    @h
    private RandomGif data;
    @h
    private Meta meta;

    public RandomGifResponse() {
        this(null, null, 3, null);
    }

    public RandomGifResponse(@h RandomGif randomGif, @h Meta meta) {
        this.data = randomGif;
        this.meta = meta;
    }

    @h
    public final RandomGif getData() {
        return this.data;
    }

    @h
    public final Meta getMeta() {
        return this.meta;
    }

    public final void setData(@h RandomGif randomGif) {
        this.data = randomGif;
    }

    public final void setMeta(@h Meta meta) {
        this.meta = meta;
    }

    @g
    public final MediaResponse toGifResponse() {
        MediaResponse mediaResponse = new MediaResponse(null, null, 3, null);
        RandomGif randomGif = this.data;
        Intrinsics.checkNotNull(randomGif);
        mediaResponse.setData(randomGif.toGif());
        mediaResponse.setMeta(this.meta);
        return mediaResponse;
    }

    public /* synthetic */ RandomGifResponse(RandomGif randomGif, Meta meta, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : randomGif, (i4 & 2) != 0 ? null : meta);
    }
}
