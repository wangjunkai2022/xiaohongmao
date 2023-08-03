package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;
import m8.h;

/* compiled from: UserIsOnline.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u001b\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/im/freechat/data/openapigen/models/UserIsOnline;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "userId", "", "type", "Lcom/im/freechat/data/openapigen/models/UserIsOnline$Type;", "(ILcom/im/freechat/data/openapigen/models/UserIsOnline$Type;)V", "getType", "()Lcom/im/freechat/data/openapigen/models/UserIsOnline$Type;", "getUserId", "()I", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UserIsOnline implements SocketMessage {
    @h
    private final Type type;
    private final int userId;

    /* compiled from: UserIsOnline.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/UserIsOnline$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "userIsOnline", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        userIsOnline("UserIsOnline");
        
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

    public UserIsOnline(@com.squareup.moshi.g(name = "user_id") int i4, @com.squareup.moshi.g(name = "type") @h Type type) {
        this.userId = i4;
        this.type = type;
    }

    public static /* synthetic */ UserIsOnline copy$default(UserIsOnline userIsOnline, int i4, Type type, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = userIsOnline.userId;
        }
        if ((i10 & 2) != 0) {
            type = userIsOnline.type;
        }
        return userIsOnline.copy(i4, type);
    }

    public final int component1() {
        return this.userId;
    }

    @h
    public final Type component2() {
        return this.type;
    }

    @g
    public final UserIsOnline copy(@com.squareup.moshi.g(name = "user_id") int i4, @com.squareup.moshi.g(name = "type") @h Type type) {
        return new UserIsOnline(i4, type);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserIsOnline) {
            UserIsOnline userIsOnline = (UserIsOnline) obj;
            return this.userId == userIsOnline.userId && this.type == userIsOnline.type;
        }
        return false;
    }

    @Override // com.im.freechat.data.openapigen.models.SocketMessage
    @g
    public String getClassName() {
        return SocketMessage.DefaultImpls.getClassName(this);
    }

    @h
    public final Type getType() {
        return this.type;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int i4 = this.userId * 31;
        Type type = this.type;
        return i4 + (type == null ? 0 : type.hashCode());
    }

    @g
    public String toString() {
        return "UserIsOnline(userId=" + this.userId + ", type=" + this.type + ')';
    }

    public /* synthetic */ UserIsOnline(int i4, Type type, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, (i10 & 2) != 0 ? null : type);
    }
}
