package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: UserIsOffline.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0019B%\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/data/openapigen/models/UserIsOffline;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "userId", "", "lastSeen", "", "type", "Lcom/im/freechat/data/openapigen/models/UserIsOffline$Type;", "(ILjava/lang/String;Lcom/im/freechat/data/openapigen/models/UserIsOffline$Type;)V", "getLastSeen", "()Ljava/lang/String;", "getType", "()Lcom/im/freechat/data/openapigen/models/UserIsOffline$Type;", "getUserId", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UserIsOffline implements SocketMessage {
    @g
    private final String lastSeen;
    @h
    private final Type type;
    private final int userId;

    /* compiled from: UserIsOffline.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/UserIsOffline$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "userIsOffline", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        userIsOffline("UserIsOffline");
        
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

    public UserIsOffline(@com.squareup.moshi.g(name = "user_id") int i4, @com.squareup.moshi.g(name = "last_seen") @g String lastSeen, @com.squareup.moshi.g(name = "type") @h Type type) {
        Intrinsics.checkNotNullParameter(lastSeen, "lastSeen");
        this.userId = i4;
        this.lastSeen = lastSeen;
        this.type = type;
    }

    public static /* synthetic */ UserIsOffline copy$default(UserIsOffline userIsOffline, int i4, String str, Type type, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = userIsOffline.userId;
        }
        if ((i10 & 2) != 0) {
            str = userIsOffline.lastSeen;
        }
        if ((i10 & 4) != 0) {
            type = userIsOffline.type;
        }
        return userIsOffline.copy(i4, str, type);
    }

    public final int component1() {
        return this.userId;
    }

    @g
    public final String component2() {
        return this.lastSeen;
    }

    @h
    public final Type component3() {
        return this.type;
    }

    @g
    public final UserIsOffline copy(@com.squareup.moshi.g(name = "user_id") int i4, @com.squareup.moshi.g(name = "last_seen") @g String lastSeen, @com.squareup.moshi.g(name = "type") @h Type type) {
        Intrinsics.checkNotNullParameter(lastSeen, "lastSeen");
        return new UserIsOffline(i4, lastSeen, type);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserIsOffline) {
            UserIsOffline userIsOffline = (UserIsOffline) obj;
            return this.userId == userIsOffline.userId && Intrinsics.areEqual(this.lastSeen, userIsOffline.lastSeen) && this.type == userIsOffline.type;
        }
        return false;
    }

    @Override // com.im.freechat.data.openapigen.models.SocketMessage
    @g
    public String getClassName() {
        return SocketMessage.DefaultImpls.getClassName(this);
    }

    @g
    public final String getLastSeen() {
        return this.lastSeen;
    }

    @h
    public final Type getType() {
        return this.type;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((this.userId * 31) + this.lastSeen.hashCode()) * 31;
        Type type = this.type;
        return hashCode + (type == null ? 0 : type.hashCode());
    }

    @g
    public String toString() {
        return "UserIsOffline(userId=" + this.userId + ", lastSeen=" + this.lastSeen + ", type=" + this.type + ')';
    }

    public /* synthetic */ UserIsOffline(int i4, String str, Type type, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, str, (i10 & 4) != 0 ? null : type);
    }
}
