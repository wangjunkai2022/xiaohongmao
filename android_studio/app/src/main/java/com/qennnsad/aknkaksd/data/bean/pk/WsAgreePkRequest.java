package com.qennnsad.aknkaksd.data.bean.pk;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.websocket.WsRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WsPkRequest.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B!\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J+\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\n¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/pk/WsAgreePkRequest;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;", "user_id", "", "sender_room_id", "(Ljava/lang/String;Ljava/lang/String;)V", "sender_uid", "method", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getMethod", "()Ljava/lang/String;", "getSender_room_id", "getSender_uid", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WsAgreePkRequest implements WsRequest {
    @SerializedName("_method_")
    @g
    private final String method;
    @h
    private final String sender_room_id;
    @h
    private final String sender_uid;

    public WsAgreePkRequest(@h String str, @h String str2, @g String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        this.sender_uid = str;
        this.sender_room_id = str2;
        this.method = method;
    }

    public static /* synthetic */ WsAgreePkRequest copy$default(WsAgreePkRequest wsAgreePkRequest, String str, String str2, String str3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = wsAgreePkRequest.sender_uid;
        }
        if ((i4 & 2) != 0) {
            str2 = wsAgreePkRequest.sender_room_id;
        }
        if ((i4 & 4) != 0) {
            str3 = wsAgreePkRequest.method;
        }
        return wsAgreePkRequest.copy(str, str2, str3);
    }

    @h
    public final String component1() {
        return this.sender_uid;
    }

    @h
    public final String component2() {
        return this.sender_room_id;
    }

    @g
    public final String component3() {
        return this.method;
    }

    @g
    public final WsAgreePkRequest copy(@h String str, @h String str2, @g String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        return new WsAgreePkRequest(str, str2, method);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WsAgreePkRequest) {
            WsAgreePkRequest wsAgreePkRequest = (WsAgreePkRequest) obj;
            return Intrinsics.areEqual(this.sender_uid, wsAgreePkRequest.sender_uid) && Intrinsics.areEqual(this.sender_room_id, wsAgreePkRequest.sender_room_id) && Intrinsics.areEqual(this.method, wsAgreePkRequest.method);
        }
        return false;
    }

    @g
    public final String getMethod() {
        return this.method;
    }

    @h
    public final String getSender_room_id() {
        return this.sender_room_id;
    }

    @h
    public final String getSender_uid() {
        return this.sender_uid;
    }

    public int hashCode() {
        String str = this.sender_uid;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.sender_room_id;
        return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.method.hashCode();
    }

    @g
    public String toString() {
        return "WsAgreePkRequest(sender_uid=" + this.sender_uid + ", sender_room_id=" + this.sender_room_id + ", method=" + this.method + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WsAgreePkRequest(@g String user_id, @g String sender_room_id) {
        this(user_id, sender_room_id, "interactionAgree");
        Intrinsics.checkNotNullParameter(user_id, "user_id");
        Intrinsics.checkNotNullParameter(sender_room_id, "sender_room_id");
    }
}
