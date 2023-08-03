package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FriendRequestReceived.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0016B\u001b\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/data/openapigen/models/FriendRequestReceived;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "friendRequest", "Lcom/im/freechat/data/openapigen/models/FriendRequest;", "type", "Lcom/im/freechat/data/openapigen/models/FriendRequestReceived$Type;", "(Lcom/im/freechat/data/openapigen/models/FriendRequest;Lcom/im/freechat/data/openapigen/models/FriendRequestReceived$Type;)V", "getFriendRequest", "()Lcom/im/freechat/data/openapigen/models/FriendRequest;", "getType", "()Lcom/im/freechat/data/openapigen/models/FriendRequestReceived$Type;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class FriendRequestReceived implements SocketMessage {
    @g
    private final FriendRequest friendRequest;
    @h
    private final Type type;

    /* compiled from: FriendRequestReceived.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/FriendRequestReceived$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "friendRequestReceived", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        friendRequestReceived("FriendRequestReceived");
        
        @g
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @g
        public final String getValue() {
            return this.value;
        }
    }

    public FriendRequestReceived(@com.squareup.moshi.g(name = "friend_request") @g FriendRequest friendRequest, @com.squareup.moshi.g(name = "type") @h Type type) {
        Intrinsics.checkNotNullParameter(friendRequest, "friendRequest");
        this.friendRequest = friendRequest;
        this.type = type;
    }

    public static /* synthetic */ FriendRequestReceived copy$default(FriendRequestReceived friendRequestReceived, FriendRequest friendRequest, Type type, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            friendRequest = friendRequestReceived.friendRequest;
        }
        if ((i4 & 2) != 0) {
            type = friendRequestReceived.type;
        }
        return friendRequestReceived.copy(friendRequest, type);
    }

    @g
    public final FriendRequest component1() {
        return this.friendRequest;
    }

    @h
    public final Type component2() {
        return this.type;
    }

    @g
    public final FriendRequestReceived copy(@com.squareup.moshi.g(name = "friend_request") @g FriendRequest friendRequest, @com.squareup.moshi.g(name = "type") @h Type type) {
        Intrinsics.checkNotNullParameter(friendRequest, "friendRequest");
        return new FriendRequestReceived(friendRequest, type);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendRequestReceived) {
            FriendRequestReceived friendRequestReceived = (FriendRequestReceived) obj;
            return Intrinsics.areEqual(this.friendRequest, friendRequestReceived.friendRequest) && this.type == friendRequestReceived.type;
        }
        return false;
    }

    @Override // com.im.freechat.data.openapigen.models.SocketMessage
    @g
    public String getClassName() {
        return SocketMessage.DefaultImpls.getClassName(this);
    }

    @g
    public final FriendRequest getFriendRequest() {
        return this.friendRequest;
    }

    @h
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = this.friendRequest.hashCode() * 31;
        Type type = this.type;
        return hashCode + (type == null ? 0 : type.hashCode());
    }

    @g
    public String toString() {
        return "FriendRequestReceived(friendRequest=" + this.friendRequest + ", type=" + this.type + ')';
    }

    public /* synthetic */ FriendRequestReceived(FriendRequest friendRequest, Type type, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(friendRequest, (i4 & 2) != 0 ? null : type);
    }
}
