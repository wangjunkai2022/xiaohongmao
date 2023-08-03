package com.im.freechat.data.openapigen.models;

import com.squareup.moshi.g;
import kotlin.Metadata;
import m8.h;

/* compiled from: AcceptFriendRequestRequest.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\u0003HÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/data/openapigen/models/AcceptFriendRequestRequest;", "", "senderId", "", "(I)V", "getSenderId", "()I", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class AcceptFriendRequestRequest {
    private final int senderId;

    public AcceptFriendRequestRequest(@g(name = "sender_id") int i4) {
        this.senderId = i4;
    }

    public static /* synthetic */ AcceptFriendRequestRequest copy$default(AcceptFriendRequestRequest acceptFriendRequestRequest, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = acceptFriendRequestRequest.senderId;
        }
        return acceptFriendRequestRequest.copy(i4);
    }

    public final int component1() {
        return this.senderId;
    }

    @m8.g
    public final AcceptFriendRequestRequest copy(@g(name = "sender_id") int i4) {
        return new AcceptFriendRequestRequest(i4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AcceptFriendRequestRequest) && this.senderId == ((AcceptFriendRequestRequest) obj).senderId;
    }

    public final int getSenderId() {
        return this.senderId;
    }

    public int hashCode() {
        return this.senderId;
    }

    @m8.g
    public String toString() {
        return "AcceptFriendRequestRequest(senderId=" + this.senderId + ')';
    }
}
