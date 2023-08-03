package com.im.freechat.data.openapigen.models;

import a5.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SendText200Response.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SendText200Response;", "", "code", "", "msg", "", "data", "", "(ILjava/lang/String;J)V", "getCode", "()I", "getData", "()J", "getMsg", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendText200Response {
    private final int code;
    private final long data;
    @g
    private final String msg;

    public SendText200Response(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg, @com.squareup.moshi.g(name = "data") long j4) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.code = i4;
        this.msg = msg;
        this.data = j4;
    }

    public static /* synthetic */ SendText200Response copy$default(SendText200Response sendText200Response, int i4, String str, long j4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = sendText200Response.code;
        }
        if ((i10 & 2) != 0) {
            str = sendText200Response.msg;
        }
        if ((i10 & 4) != 0) {
            j4 = sendText200Response.data;
        }
        return sendText200Response.copy(i4, str, j4);
    }

    public final int component1() {
        return this.code;
    }

    @g
    public final String component2() {
        return this.msg;
    }

    public final long component3() {
        return this.data;
    }

    @g
    public final SendText200Response copy(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg, @com.squareup.moshi.g(name = "data") long j4) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        return new SendText200Response(i4, msg, j4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendText200Response) {
            SendText200Response sendText200Response = (SendText200Response) obj;
            return this.code == sendText200Response.code && Intrinsics.areEqual(this.msg, sendText200Response.msg) && this.data == sendText200Response.data;
        }
        return false;
    }

    public final int getCode() {
        return this.code;
    }

    public final long getData() {
        return this.data;
    }

    @g
    public final String getMsg() {
        return this.msg;
    }

    public int hashCode() {
        return (((this.code * 31) + this.msg.hashCode()) * 31) + a.a(this.data);
    }

    @g
    public String toString() {
        return "SendText200Response(code=" + this.code + ", msg=" + this.msg + ", data=" + this.data + ')';
    }

    public /* synthetic */ SendText200Response(int i4, String str, long j4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i4, (i10 & 2) != 0 ? "ok" : str, j4);
    }
}
