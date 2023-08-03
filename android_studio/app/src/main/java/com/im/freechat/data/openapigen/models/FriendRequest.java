package com.im.freechat.data.openapigen.models;

import a5.a;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FriendRequest.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001eB1\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\tHÆ\u0003J5\u0010\u0017\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/im/freechat/data/openapigen/models/FriendRequest;", "", "user", "Lcom/im/freechat/data/openapigen/models/User;", "sentAt", "", "message", "", "status", "Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;", "(Lcom/im/freechat/data/openapigen/models/User;JLjava/lang/String;Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;)V", "getMessage", "()Ljava/lang/String;", "getSentAt", "()J", "getStatus", "()Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;", "getUser", "()Lcom/im/freechat/data/openapigen/models/User;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "Status", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class FriendRequest {
    @h
    private final String message;
    private final long sentAt;
    @h
    private final Status status;
    @g
    private final User user;

    /* compiled from: FriendRequest.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "sent", com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.h.f52599a, "accepted", "undefined", "rejected", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Status {
        sent("sent"),
        received(com.qennnsad.aknkaksd.presentation.ui.chat.im.chat_requests.h.f52599a),
        accepted("accepted"),
        undefined("undefined"),
        rejected("rejected");
        
        @g
        private final String value;

        Status(String str) {
            this.value = str;
        }

        @g
        public final String getValue() {
            return this.value;
        }
    }

    public FriendRequest(@com.squareup.moshi.g(name = "user") @g User user, @com.squareup.moshi.g(name = "sent_at") long j4, @com.squareup.moshi.g(name = "message") @h String str, @com.squareup.moshi.g(name = "status") @h Status status) {
        Intrinsics.checkNotNullParameter(user, "user");
        this.user = user;
        this.sentAt = j4;
        this.message = str;
        this.status = status;
    }

    public static /* synthetic */ FriendRequest copy$default(FriendRequest friendRequest, User user, long j4, String str, Status status, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            user = friendRequest.user;
        }
        if ((i4 & 2) != 0) {
            j4 = friendRequest.sentAt;
        }
        long j10 = j4;
        if ((i4 & 4) != 0) {
            str = friendRequest.message;
        }
        String str2 = str;
        if ((i4 & 8) != 0) {
            status = friendRequest.status;
        }
        return friendRequest.copy(user, j10, str2, status);
    }

    @g
    public final User component1() {
        return this.user;
    }

    public final long component2() {
        return this.sentAt;
    }

    @h
    public final String component3() {
        return this.message;
    }

    @h
    public final Status component4() {
        return this.status;
    }

    @g
    public final FriendRequest copy(@com.squareup.moshi.g(name = "user") @g User user, @com.squareup.moshi.g(name = "sent_at") long j4, @com.squareup.moshi.g(name = "message") @h String str, @com.squareup.moshi.g(name = "status") @h Status status) {
        Intrinsics.checkNotNullParameter(user, "user");
        return new FriendRequest(user, j4, str, status);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendRequest) {
            FriendRequest friendRequest = (FriendRequest) obj;
            return Intrinsics.areEqual(this.user, friendRequest.user) && this.sentAt == friendRequest.sentAt && Intrinsics.areEqual(this.message, friendRequest.message) && this.status == friendRequest.status;
        }
        return false;
    }

    @h
    public final String getMessage() {
        return this.message;
    }

    public final long getSentAt() {
        return this.sentAt;
    }

    @h
    public final Status getStatus() {
        return this.status;
    }

    @g
    public final User getUser() {
        return this.user;
    }

    public int hashCode() {
        int hashCode = ((this.user.hashCode() * 31) + a.a(this.sentAt)) * 31;
        String str = this.message;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Status status = this.status;
        return hashCode2 + (status != null ? status.hashCode() : 0);
    }

    @g
    public String toString() {
        return "FriendRequest(user=" + this.user + ", sentAt=" + this.sentAt + ", message=" + this.message + ", status=" + this.status + ')';
    }

    public /* synthetic */ FriendRequest(User user, long j4, String str, Status status, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(user, j4, (i4 & 4) != 0 ? null : str, (i4 & 8) != 0 ? null : status);
    }
}
