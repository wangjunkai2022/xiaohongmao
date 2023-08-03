package com.im.freechat.data.openapigen.models;

import com.ksyun.media.player.e.b;
import com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.h;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: GetFriendStatus200Response.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0018B#\u0012\b\b\u0003\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response;", "", "code", "", "msg", "", "data", "Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;", "(ILjava/lang/String;Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;)V", "getCode", "()I", "getData", "()Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;", "getMsg", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", b.f45488a, "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class GetFriendStatus200Response {
    private final int code;
    @g
    private final Data data;
    @g
    private final String msg;

    /* compiled from: GetFriendStatus200Response.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/im/freechat/data/openapigen/models/GetFriendStatus200Response$Data;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "sent", h.f52599a, "accepted", "undefined", "rejected", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Data {
        sent("sent"),
        received(h.f52599a),
        accepted("accepted"),
        undefined("undefined"),
        rejected("rejected");
        
        @g
        private final String value;

        Data(String str) {
            this.value = str;
        }

        @g
        public final String getValue() {
            return this.value;
        }
    }

    public GetFriendStatus200Response(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg, @com.squareup.moshi.g(name = "data") @g Data data) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(data, "data");
        this.code = i4;
        this.msg = msg;
        this.data = data;
    }

    public static /* synthetic */ GetFriendStatus200Response copy$default(GetFriendStatus200Response getFriendStatus200Response, int i4, String str, Data data, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = getFriendStatus200Response.code;
        }
        if ((i10 & 2) != 0) {
            str = getFriendStatus200Response.msg;
        }
        if ((i10 & 4) != 0) {
            data = getFriendStatus200Response.data;
        }
        return getFriendStatus200Response.copy(i4, str, data);
    }

    public final int component1() {
        return this.code;
    }

    @g
    public final String component2() {
        return this.msg;
    }

    @g
    public final Data component3() {
        return this.data;
    }

    @g
    public final GetFriendStatus200Response copy(@com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "msg") @g String msg, @com.squareup.moshi.g(name = "data") @g Data data) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(data, "data");
        return new GetFriendStatus200Response(i4, msg, data);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetFriendStatus200Response) {
            GetFriendStatus200Response getFriendStatus200Response = (GetFriendStatus200Response) obj;
            return this.code == getFriendStatus200Response.code && Intrinsics.areEqual(this.msg, getFriendStatus200Response.msg) && this.data == getFriendStatus200Response.data;
        }
        return false;
    }

    public final int getCode() {
        return this.code;
    }

    @g
    public final Data getData() {
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
        return "GetFriendStatus200Response(code=" + this.code + ", msg=" + this.msg + ", data=" + this.data + ')';
    }

    public /* synthetic */ GetFriendStatus200Response(int i4, String str, Data data, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0 : i4, (i10 & 2) != 0 ? "ok" : str, data);
    }
}
