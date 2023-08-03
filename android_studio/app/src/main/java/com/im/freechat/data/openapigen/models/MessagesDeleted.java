package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import java.util.List;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MessagesDeleted.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001bB+\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\bHÆ\u0003J/\u0010\u0013\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\u000e\b\u0003\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessagesDeleted;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", b.f84734a, "", "messageIds", "", "", "type", "Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;", "(ILjava/util/List;Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;)V", "getChatId", "()I", "getMessageIds", "()Ljava/util/List;", "getType", "()Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessagesDeleted implements SocketMessage {
    private final int chatId;
    @g
    private final List<Long> messageIds;
    @h
    private final Type type;

    /* compiled from: MessagesDeleted.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "messagesDeleted", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        messagesDeleted("MessagesDeleted");
        
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

    public MessagesDeleted(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_ids") @g List<Long> messageIds, @com.squareup.moshi.g(name = "type") @h Type type) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        this.chatId = i4;
        this.messageIds = messageIds;
        this.type = type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MessagesDeleted copy$default(MessagesDeleted messagesDeleted, int i4, List list, Type type, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = messagesDeleted.chatId;
        }
        if ((i10 & 2) != 0) {
            list = messagesDeleted.messageIds;
        }
        if ((i10 & 4) != 0) {
            type = messagesDeleted.type;
        }
        return messagesDeleted.copy(i4, list, type);
    }

    public final int component1() {
        return this.chatId;
    }

    @g
    public final List<Long> component2() {
        return this.messageIds;
    }

    @h
    public final Type component3() {
        return this.type;
    }

    @g
    public final MessagesDeleted copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_ids") @g List<Long> messageIds, @com.squareup.moshi.g(name = "type") @h Type type) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        return new MessagesDeleted(i4, messageIds, type);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagesDeleted) {
            MessagesDeleted messagesDeleted = (MessagesDeleted) obj;
            return this.chatId == messagesDeleted.chatId && Intrinsics.areEqual(this.messageIds, messagesDeleted.messageIds) && this.type == messagesDeleted.type;
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

    @g
    public final List<Long> getMessageIds() {
        return this.messageIds;
    }

    @h
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((this.chatId * 31) + this.messageIds.hashCode()) * 31;
        Type type = this.type;
        return hashCode + (type == null ? 0 : type.hashCode());
    }

    @g
    public String toString() {
        return "MessagesDeleted(chatId=" + this.chatId + ", messageIds=" + this.messageIds + ", type=" + this.type + ')';
    }

    public /* synthetic */ MessagesDeleted(int i4, List list, Type type, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, list, (i10 & 4) != 0 ? null : type);
    }
}
