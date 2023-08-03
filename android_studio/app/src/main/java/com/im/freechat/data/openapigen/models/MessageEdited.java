package com.im.freechat.data.openapigen.models;

import a5.a;
import com.im.freechat.data.openapigen.models.SocketMessage;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MessageEdited.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0001)BS\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\rHÆ\u0003JW\u0010\"\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00052\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\rHÆ\u0001J\u0013\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\nHÖ\u0001R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006*"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessageEdited;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", b.f84734a, "", "messageId", "", "editedAt", "type", "Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;", "text", "", "caption", "media", "Lcom/im/freechat/data/openapigen/models/MediaGroup;", "(IJJLcom/im/freechat/data/openapigen/models/MessageEdited$Type;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MediaGroup;)V", "getCaption", "()Ljava/lang/String;", "getChatId", "()I", "getEditedAt", "()J", "getMedia", "()Lcom/im/freechat/data/openapigen/models/MediaGroup;", "getMessageId", "getText", "getType", "()Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "toString", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageEdited implements SocketMessage {
    @h
    private final String caption;
    private final int chatId;
    private final long editedAt;
    @h
    private final MediaGroup media;
    private final long messageId;
    @h
    private final String text;
    @h
    private final Type type;

    /* compiled from: MessageEdited.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "messageEdited", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        messageEdited("MessageEdited");
        
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

    public MessageEdited(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_id") long j4, @com.squareup.moshi.g(name = "edited_at") long j10, @com.squareup.moshi.g(name = "type") @h Type type, @com.squareup.moshi.g(name = "text") @h String str, @com.squareup.moshi.g(name = "caption") @h String str2, @com.squareup.moshi.g(name = "media") @h MediaGroup mediaGroup) {
        this.chatId = i4;
        this.messageId = j4;
        this.editedAt = j10;
        this.type = type;
        this.text = str;
        this.caption = str2;
        this.media = mediaGroup;
    }

    public final int component1() {
        return this.chatId;
    }

    public final long component2() {
        return this.messageId;
    }

    public final long component3() {
        return this.editedAt;
    }

    @h
    public final Type component4() {
        return this.type;
    }

    @h
    public final String component5() {
        return this.text;
    }

    @h
    public final String component6() {
        return this.caption;
    }

    @h
    public final MediaGroup component7() {
        return this.media;
    }

    @g
    public final MessageEdited copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_id") long j4, @com.squareup.moshi.g(name = "edited_at") long j10, @com.squareup.moshi.g(name = "type") @h Type type, @com.squareup.moshi.g(name = "text") @h String str, @com.squareup.moshi.g(name = "caption") @h String str2, @com.squareup.moshi.g(name = "media") @h MediaGroup mediaGroup) {
        return new MessageEdited(i4, j4, j10, type, str, str2, mediaGroup);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageEdited) {
            MessageEdited messageEdited = (MessageEdited) obj;
            return this.chatId == messageEdited.chatId && this.messageId == messageEdited.messageId && this.editedAt == messageEdited.editedAt && this.type == messageEdited.type && Intrinsics.areEqual(this.text, messageEdited.text) && Intrinsics.areEqual(this.caption, messageEdited.caption) && Intrinsics.areEqual(this.media, messageEdited.media);
        }
        return false;
    }

    @h
    public final String getCaption() {
        return this.caption;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @Override // com.im.freechat.data.openapigen.models.SocketMessage
    @g
    public String getClassName() {
        return SocketMessage.DefaultImpls.getClassName(this);
    }

    public final long getEditedAt() {
        return this.editedAt;
    }

    @h
    public final MediaGroup getMedia() {
        return this.media;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    @h
    public final String getText() {
        return this.text;
    }

    @h
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        int a10 = ((((this.chatId * 31) + a.a(this.messageId)) * 31) + a.a(this.editedAt)) * 31;
        Type type = this.type;
        int hashCode = (a10 + (type == null ? 0 : type.hashCode())) * 31;
        String str = this.text;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.caption;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        MediaGroup mediaGroup = this.media;
        return hashCode3 + (mediaGroup != null ? mediaGroup.hashCode() : 0);
    }

    @g
    public String toString() {
        return "MessageEdited(chatId=" + this.chatId + ", messageId=" + this.messageId + ", editedAt=" + this.editedAt + ", type=" + this.type + ", text=" + this.text + ", caption=" + this.caption + ", media=" + this.media + ')';
    }

    public /* synthetic */ MessageEdited(int i4, long j4, long j10, Type type, String str, String str2, MediaGroup mediaGroup, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, j4, j10, (i10 & 8) != 0 ? null : type, (i10 & 16) != 0 ? null : str, (i10 & 32) != 0 ? null : str2, (i10 & 64) != 0 ? null : mediaGroup);
    }
}
