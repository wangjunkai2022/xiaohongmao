package com.im.freechat.data.sources.api.entities;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Response.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B/\u0012\n\b\u0001\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0001\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0015\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/Response;", ExifInterface.GPS_DIRECTION_TRUE, "", "data", "code", "", "message", "", "requestId", "(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V", "getCode", "()I", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getMessage", "()Ljava/lang/String;", "getRequestId", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Response<T> {
    private final int code;
    @h
    private final T data;
    @g
    private final String message;
    @g
    private final String requestId;

    public Response(@com.squareup.moshi.g(name = "data") @h T t9, @com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "message") @g String message, @com.squareup.moshi.g(name = "request-id") @g String requestId) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        this.data = t9;
        this.code = i4;
        this.message = message;
        this.requestId = requestId;
    }

    public final int getCode() {
        return this.code;
    }

    @h
    public final T getData() {
        return this.data;
    }

    @g
    public final String getMessage() {
        return this.message;
    }

    @g
    public final String getRequestId() {
        return this.requestId;
    }
}
