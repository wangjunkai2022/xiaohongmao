package com.im.freechat.data.openapigen.models;

import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: SendFriendRequestRequest.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SendFriendRequestRequest;", "", "receiverId", "", "message", "", "(ILjava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "getReceiverId", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendFriendRequestRequest {
    @h
    private final String message;
    private final int receiverId;

    public SendFriendRequestRequest(@g(name = "receiver_id") int i4, @g(name = "message") @h String str) {
        this.receiverId = i4;
        this.message = str;
    }

    public static /* synthetic */ SendFriendRequestRequest copy$default(SendFriendRequestRequest sendFriendRequestRequest, int i4, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = sendFriendRequestRequest.receiverId;
        }
        if ((i10 & 2) != 0) {
            str = sendFriendRequestRequest.message;
        }
        return sendFriendRequestRequest.copy(i4, str);
    }

    public final int component1() {
        return this.receiverId;
    }

    @h
    public final String component2() {
        return this.message;
    }

    @m8.g
    public final SendFriendRequestRequest copy(@g(name = "receiver_id") int i4, @g(name = "message") @h String str) {
        return new SendFriendRequestRequest(i4, str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendFriendRequestRequest) {
            SendFriendRequestRequest sendFriendRequestRequest = (SendFriendRequestRequest) obj;
            return this.receiverId == sendFriendRequestRequest.receiverId && Intrinsics.areEqual(this.message, sendFriendRequestRequest.message);
        }
        return false;
    }

    @h
    public final String getMessage() {
        return this.message;
    }

    public final int getReceiverId() {
        return this.receiverId;
    }

    public int hashCode() {
        int i4 = this.receiverId * 31;
        String str = this.message;
        return i4 + (str == null ? 0 : str.hashCode());
    }

    @m8.g
    public String toString() {
        return "SendFriendRequestRequest(receiverId=" + this.receiverId + ", message=" + this.message + ')';
    }

    public /* synthetic */ SendFriendRequestRequest(int i4, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, (i10 & 2) != 0 ? null : str);
    }
}
