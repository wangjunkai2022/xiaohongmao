package com.qennnsad.aknkaksd.data.bean.pk;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.websocket.WsRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WsPkRequest.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0006\u0012\u0006\u0010\u0004\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001d\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J'\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/pk/WsCreatePkRequest;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/WsRequest;", "interactionTime", "", "receiverId", "(Ljava/lang/String;Ljava/lang/String;)V", "", "(II)V", "method", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getInteractionTime", "()Ljava/lang/String;", "getMethod", "getReceiverId", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WsCreatePkRequest implements WsRequest {
    @SerializedName("interaction_time")
    @g
    private final String interactionTime;
    @SerializedName("_method_")
    @g
    private final String method;
    @SerializedName("receiver_uid")
    @g
    private final String receiverId;

    public WsCreatePkRequest(@g String method, @g String interactionTime, @g String receiverId) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(interactionTime, "interactionTime");
        Intrinsics.checkNotNullParameter(receiverId, "receiverId");
        this.method = method;
        this.interactionTime = interactionTime;
        this.receiverId = receiverId;
    }

    public static /* synthetic */ WsCreatePkRequest copy$default(WsCreatePkRequest wsCreatePkRequest, String str, String str2, String str3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = wsCreatePkRequest.method;
        }
        if ((i4 & 2) != 0) {
            str2 = wsCreatePkRequest.interactionTime;
        }
        if ((i4 & 4) != 0) {
            str3 = wsCreatePkRequest.receiverId;
        }
        return wsCreatePkRequest.copy(str, str2, str3);
    }

    @g
    public final String component1() {
        return this.method;
    }

    @g
    public final String component2() {
        return this.interactionTime;
    }

    @g
    public final String component3() {
        return this.receiverId;
    }

    @g
    public final WsCreatePkRequest copy(@g String method, @g String interactionTime, @g String receiverId) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(interactionTime, "interactionTime");
        Intrinsics.checkNotNullParameter(receiverId, "receiverId");
        return new WsCreatePkRequest(method, interactionTime, receiverId);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WsCreatePkRequest) {
            WsCreatePkRequest wsCreatePkRequest = (WsCreatePkRequest) obj;
            return Intrinsics.areEqual(this.method, wsCreatePkRequest.method) && Intrinsics.areEqual(this.interactionTime, wsCreatePkRequest.interactionTime) && Intrinsics.areEqual(this.receiverId, wsCreatePkRequest.receiverId);
        }
        return false;
    }

    @g
    public final String getInteractionTime() {
        return this.interactionTime;
    }

    @g
    public final String getMethod() {
        return this.method;
    }

    @g
    public final String getReceiverId() {
        return this.receiverId;
    }

    public int hashCode() {
        return (((this.method.hashCode() * 31) + this.interactionTime.hashCode()) * 31) + this.receiverId.hashCode();
    }

    @g
    public String toString() {
        return "WsCreatePkRequest(method=" + this.method + ", interactionTime=" + this.interactionTime + ", receiverId=" + this.receiverId + ')';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WsCreatePkRequest(@g String interactionTime, @g String receiverId) {
        this("interactionCreate", interactionTime, receiverId);
        Intrinsics.checkNotNullParameter(interactionTime, "interactionTime");
        Intrinsics.checkNotNullParameter(receiverId, "receiverId");
    }

    public WsCreatePkRequest(int i4, int i10) {
        this(String.valueOf(i4), String.valueOf(i10));
    }
}
