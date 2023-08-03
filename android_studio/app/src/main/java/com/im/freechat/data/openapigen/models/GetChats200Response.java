package com.im.freechat.data.openapigen.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: GetChats200Response.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/data/openapigen/models/GetChats200Response;", "", "code", "", "msg", "", "data", "Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;", "(ILjava/lang/String;Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;)V", "getCode", "()I", "getData", "()Lcom/im/freechat/data/openapigen/models/GetChats200ResponseData;", "getMsg", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class GetChats200Response {
    private final int code;
    @g
    private final GetChats200ResponseData data;
    @g
    private final String msg;

    public GetChats200Response(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg, @com.squareup.moshi.g(name = "data") @g GetChats200ResponseData data) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(data, "data");
        this.code = i4;
        this.msg = msg;
        this.data = data;
    }

    public static /* synthetic */ GetChats200Response copy$default(GetChats200Response getChats200Response, int i4, String str, GetChats200ResponseData getChats200ResponseData, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = getChats200Response.code;
        }
        if ((i10 & 2) != 0) {
            str = getChats200Response.msg;
        }
        if ((i10 & 4) != 0) {
            getChats200ResponseData = getChats200Response.data;
        }
        return getChats200Response.copy(i4, str, getChats200ResponseData);
    }

    public final int component1() {
        return this.code;
    }

    @g
    public final String component2() {
        return this.msg;
    }

    @g
    public final GetChats200ResponseData component3() {
        return this.data;
    }

    @g
    public final GetChats200Response copy(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg, @com.squareup.moshi.g(name = "data") @g GetChats200ResponseData data) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(data, "data");
        return new GetChats200Response(i4, msg, data);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetChats200Response) {
            GetChats200Response getChats200Response = (GetChats200Response) obj;
            return this.code == getChats200Response.code && Intrinsics.areEqual(this.msg, getChats200Response.msg) && Intrinsics.areEqual(this.data, getChats200Response.data);
        }
        return false;
    }

    public final int getCode() {
        return this.code;
    }

    @g
    public final GetChats200ResponseData getData() {
        return this.data;
    }

    @g
    public final String getMsg() {
        return this.msg;
    }

    public int hashCode() {
        return (((this.code * 31) + this.msg.hashCode()) * 31) + this.data.hashCode();
    }

    @g
    public String toString() {
        return "GetChats200Response(code=" + this.code + ", msg=" + this.msg + ", data=" + this.data + ')';
    }

    public /* synthetic */ GetChats200Response(int i4, String str, GetChats200ResponseData getChats200ResponseData, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i4, (i10 & 2) != 0 ? "ok" : str, getChats200ResponseData);
    }
}
