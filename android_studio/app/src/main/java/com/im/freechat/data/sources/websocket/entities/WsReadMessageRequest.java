package com.im.freechat.data.sources.websocket.entities;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WsRequest.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0003\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/data/sources/websocket/entities/WsReadMessageRequest;", "Lcom/im/freechat/data/sources/websocket/entities/WsRequest;", "messageId", "", "method", "(Ljava/lang/String;Ljava/lang/String;)V", "getMessageId", "()Ljava/lang/String;", "getMethod", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WsReadMessageRequest implements WsRequest {
    @g
    private final String messageId;
    @g
    private final String method;

    public WsReadMessageRequest(@com.squareup.moshi.g(name = "msg_id") @g String messageId, @com.squareup.moshi.g(name = "method") @g String method) {
        Intrinsics.checkNotNullParameter(messageId, "messageId");
        Intrinsics.checkNotNullParameter(method, "method");
        this.messageId = messageId;
        this.method = method;
    }

    public static /* synthetic */ WsReadMessageRequest copy$default(WsReadMessageRequest wsReadMessageRequest, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = wsReadMessageRequest.messageId;
        }
        if ((i4 & 2) != 0) {
            str2 = wsReadMessageRequest.method;
        }
        return wsReadMessageRequest.copy(str, str2);
    }

    @g
    public final String component1() {
        return this.messageId;
    }

    @g
    public final String component2() {
        return this.method;
    }

    @g
    public final WsReadMessageRequest copy(@com.squareup.moshi.g(name = "msg_id") @g String messageId, @com.squareup.moshi.g(name = "method") @g String method) {
        Intrinsics.checkNotNullParameter(messageId, "messageId");
        Intrinsics.checkNotNullParameter(method, "method");
        return new WsReadMessageRequest(messageId, method);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WsReadMessageRequest) {
            WsReadMessageRequest wsReadMessageRequest = (WsReadMessageRequest) obj;
            return Intrinsics.areEqual(this.messageId, wsReadMessageRequest.messageId) && Intrinsics.areEqual(this.method, wsReadMessageRequest.method);
        }
        return false;
    }

    @g
    public final String getMessageId() {
        return this.messageId;
    }

    @g
    public final String getMethod() {
        return this.method;
    }

    public int hashCode() {
        return (this.messageId.hashCode() * 31) + this.method.hashCode();
    }

    @g
    public String toString() {
        return "WsReadMessageRequest(messageId=" + this.messageId + ", method=" + this.method + ')';
    }

    public /* synthetic */ WsReadMessageRequest(String str, String str2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i4 & 2) != 0 ? WsMethod.READ_MESSAGE.getType() : str2);
    }
}
