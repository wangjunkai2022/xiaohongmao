package com.im.freechat.data.openapigen.models;

import a5.a;
import com.im.freechat.data.openapigen.models.SocketMessage;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;
import m8.h;

/* compiled from: MessagePinned.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u001aB%\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessagePinned;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", b.f84734a, "", "messageId", "", "type", "Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;", "(IJLcom/im/freechat/data/openapigen/models/MessagePinned$Type;)V", "getChatId", "()I", "getMessageId", "()J", "getType", "()Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessagePinned implements SocketMessage {
    private final int chatId;
    private final long messageId;
    @h
    private final Type type;

    /* compiled from: MessagePinned.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "messagePinned", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        messagePinned("MessagePinned");
        
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

    public MessagePinned(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_id") long j4, @com.squareup.moshi.g(name = "type") @h Type type) {
        this.chatId = i4;
        this.messageId = j4;
        this.type = type;
    }

    public static /* synthetic */ MessagePinned copy$default(MessagePinned messagePinned, int i4, long j4, Type type, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = messagePinned.chatId;
        }
        if ((i10 & 2) != 0) {
            j4 = messagePinned.messageId;
        }
        if ((i10 & 4) != 0) {
            type = messagePinned.type;
        }
        return messagePinned.copy(i4, j4, type);
    }

    public final int component1() {
        return this.chatId;
    }

    public final long component2() {
        return this.messageId;
    }

    @h
    public final Type component3() {
        return this.type;
    }

    @g
    public final MessagePinned copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_id") long j4, @com.squareup.moshi.g(name = "type") @h Type type) {
        return new MessagePinned(i4, j4, type);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessagePinned) {
            MessagePinned messagePinned = (MessagePinned) obj;
            return this.chatId == messagePinned.chatId && this.messageId == messagePinned.messageId && this.type == messagePinned.type;
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

    public final long getMessageId() {
        return this.messageId;
    }

    @h
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int a10 = ((this.chatId * 31) + a.a(this.messageId)) * 31;
        Type type = this.type;
        return a10 + (type == null ? 0 : type.hashCode());
    }

    @g
    public String toString() {
        return "MessagePinned(chatId=" + this.chatId + ", messageId=" + this.messageId + ", type=" + this.type + ')';
    }

    public /* synthetic */ MessagePinned(int i4, long j4, Type type, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, j4, (i10 & 4) != 0 ? null : type);
    }
}
