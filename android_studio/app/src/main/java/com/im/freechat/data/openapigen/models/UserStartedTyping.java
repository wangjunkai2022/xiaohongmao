package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;
import m8.h;

/* compiled from: UserStartedTyping.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0018B%\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/data/openapigen/models/UserStartedTyping;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", b.f84734a, "", "userId", "type", "Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;", "(IILcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;)V", "getChatId", "()I", "getType", "()Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;", "getUserId", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UserStartedTyping implements SocketMessage {
    private final int chatId;
    @h
    private final Type type;
    private final int userId;

    /* compiled from: UserStartedTyping.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "userStartedTyping", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        userStartedTyping("UserStartedTyping");
        
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

    public UserStartedTyping(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "user_id") int i10, @com.squareup.moshi.g(name = "type") @h Type type) {
        this.chatId = i4;
        this.userId = i10;
        this.type = type;
    }

    public static /* synthetic */ UserStartedTyping copy$default(UserStartedTyping userStartedTyping, int i4, int i10, Type type, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = userStartedTyping.chatId;
        }
        if ((i11 & 2) != 0) {
            i10 = userStartedTyping.userId;
        }
        if ((i11 & 4) != 0) {
            type = userStartedTyping.type;
        }
        return userStartedTyping.copy(i4, i10, type);
    }

    public final int component1() {
        return this.chatId;
    }

    public final int component2() {
        return this.userId;
    }

    @h
    public final Type component3() {
        return this.type;
    }

    @g
    public final UserStartedTyping copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "user_id") int i10, @com.squareup.moshi.g(name = "type") @h Type type) {
        return new UserStartedTyping(i4, i10, type);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserStartedTyping) {
            UserStartedTyping userStartedTyping = (UserStartedTyping) obj;
            return this.chatId == userStartedTyping.chatId && this.userId == userStartedTyping.userId && this.type == userStartedTyping.type;
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
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
        int i4 = ((this.chatId * 31) + this.userId) * 31;
        Type type = this.type;
        return i4 + (type == null ? 0 : type.hashCode());
    }

    @g
    public String toString() {
        return "UserStartedTyping(chatId=" + this.chatId + ", userId=" + this.userId + ", type=" + this.type + ')';
    }

    public /* synthetic */ UserStartedTyping(int i4, int i10, Type type, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, i10, (i11 & 4) != 0 ? null : type);
    }
}
