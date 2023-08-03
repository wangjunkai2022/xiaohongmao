package com.im.freechat.data.openapigen.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: GetSentFriendRequests200Response.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0001\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J-\u0010\u0013\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\u000e\b\u0003\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/data/openapigen/models/GetSentFriendRequests200Response;", "", "code", "", "msg", "", "data", "", "Lcom/im/freechat/data/openapigen/models/FriendRequest;", "(ILjava/lang/String;Ljava/util/List;)V", "getCode", "()I", "getData", "()Ljava/util/List;", "getMsg", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class GetSentFriendRequests200Response {
    private final int code;
    @g
    private final List<FriendRequest> data;
    @g
    private final String msg;

    public GetSentFriendRequests200Response(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg, @com.squareup.moshi.g(name = "data") @g List<FriendRequest> data) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(data, "data");
        this.code = i4;
        this.msg = msg;
        this.data = data;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetSentFriendRequests200Response copy$default(GetSentFriendRequests200Response getSentFriendRequests200Response, int i4, String str, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = getSentFriendRequests200Response.code;
        }
        if ((i10 & 2) != 0) {
            str = getSentFriendRequests200Response.msg;
        }
        if ((i10 & 4) != 0) {
            list = getSentFriendRequests200Response.data;
        }
        return getSentFriendRequests200Response.copy(i4, str, list);
    }

    public final int component1() {
        return this.code;
    }

    @g
    public final String component2() {
        return this.msg;
    }

    @g
    public final List<FriendRequest> component3() {
        return this.data;
    }

    @g
    public final GetSentFriendRequests200Response copy(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg, @com.squareup.moshi.g(name = "data") @g List<FriendRequest> data) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(data, "data");
        return new GetSentFriendRequests200Response(i4, msg, data);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetSentFriendRequests200Response) {
            GetSentFriendRequests200Response getSentFriendRequests200Response = (GetSentFriendRequests200Response) obj;
            return this.code == getSentFriendRequests200Response.code && Intrinsics.areEqual(this.msg, getSentFriendRequests200Response.msg) && Intrinsics.areEqual(this.data, getSentFriendRequests200Response.data);
        }
        return false;
    }

    public final int getCode() {
        return this.code;
    }

    @g
    public final List<FriendRequest> getData() {
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
        return "GetSentFriendRequests200Response(code=" + this.code + ", msg=" + this.msg + ", data=" + this.data + ')';
    }

    public /* synthetic */ GetSentFriendRequests200Response(int i4, String str, List list, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i4, (i10 & 2) != 0 ? "ok" : str, list);
    }
}
