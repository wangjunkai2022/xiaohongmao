package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SendEndTyping.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SendEndTyping;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "type", "Lcom/im/freechat/data/openapigen/models/SendEndTyping$Type;", b.f84734a, "", "(Lcom/im/freechat/data/openapigen/models/SendEndTyping$Type;I)V", "getChatId", "()I", "getType", "()Lcom/im/freechat/data/openapigen/models/SendEndTyping$Type;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendEndTyping implements SocketMessage {
    private final int chatId;
    @g
    private final Type type;

    /* compiled from: SendEndTyping.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SendEndTyping$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "sendEndTyping", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        sendEndTyping("SendEndTyping");
        
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

    public SendEndTyping(@com.squareup.moshi.g(name = "type") @g Type type, @com.squareup.moshi.g(name = "chat_id") int i4) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.chatId = i4;
    }

    public static /* synthetic */ SendEndTyping copy$default(SendEndTyping sendEndTyping, Type type, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            type = sendEndTyping.type;
        }
        if ((i10 & 2) != 0) {
            i4 = sendEndTyping.chatId;
        }
        return sendEndTyping.copy(type, i4);
    }

    @g
    public final Type component1() {
        return this.type;
    }

    public final int component2() {
        return this.chatId;
    }

    @g
    public final SendEndTyping copy(@com.squareup.moshi.g(name = "type") @g Type type, @com.squareup.moshi.g(name = "chat_id") int i4) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new SendEndTyping(type, i4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendEndTyping) {
            SendEndTyping sendEndTyping = (SendEndTyping) obj;
            return this.type == sendEndTyping.type && this.chatId == sendEndTyping.chatId;
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
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + this.chatId;
    }

    @g
    public String toString() {
        return "SendEndTyping(type=" + this.type + ", chatId=" + this.chatId + ')';
    }
}
