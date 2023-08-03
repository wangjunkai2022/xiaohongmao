package com.im.freechat.data.openapigen.models;

import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SendTextRequest.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\fJ.\u0010\u0013\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SendTextRequest;", "", b.f84734a, "", "text", "", "replyToMessageId", "", "(ILjava/lang/String;Ljava/lang/Long;)V", "getChatId", "()I", "getReplyToMessageId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getText", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(ILjava/lang/String;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/SendTextRequest;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendTextRequest {
    private final int chatId;
    @h
    private final Long replyToMessageId;
    @g
    private final String text;

    public SendTextRequest(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "text") @g String text, @com.squareup.moshi.g(name = "reply_to_message_id") @h Long l10) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.chatId = i4;
        this.text = text;
        this.replyToMessageId = l10;
    }

    public static /* synthetic */ SendTextRequest copy$default(SendTextRequest sendTextRequest, int i4, String str, Long l10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = sendTextRequest.chatId;
        }
        if ((i10 & 2) != 0) {
            str = sendTextRequest.text;
        }
        if ((i10 & 4) != 0) {
            l10 = sendTextRequest.replyToMessageId;
        }
        return sendTextRequest.copy(i4, str, l10);
    }

    public final int component1() {
        return this.chatId;
    }

    @g
    public final String component2() {
        return this.text;
    }

    @h
    public final Long component3() {
        return this.replyToMessageId;
    }

    @g
    public final SendTextRequest copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "text") @g String text, @com.squareup.moshi.g(name = "reply_to_message_id") @h Long l10) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new SendTextRequest(i4, text, l10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendTextRequest) {
            SendTextRequest sendTextRequest = (SendTextRequest) obj;
            return this.chatId == sendTextRequest.chatId && Intrinsics.areEqual(this.text, sendTextRequest.text) && Intrinsics.areEqual(this.replyToMessageId, sendTextRequest.replyToMessageId);
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @h
    public final Long getReplyToMessageId() {
        return this.replyToMessageId;
    }

    @g
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        int hashCode = ((this.chatId * 31) + this.text.hashCode()) * 31;
        Long l10 = this.replyToMessageId;
        return hashCode + (l10 == null ? 0 : l10.hashCode());
    }

    @g
    public String toString() {
        return "SendTextRequest(chatId=" + this.chatId + ", text=" + this.text + ", replyToMessageId=" + this.replyToMessageId + ')';
    }

    public /* synthetic */ SendTextRequest(int i4, String str, Long l10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, str, (i10 & 4) != 0 ? null : l10);
    }
}
