package com.im.freechat.data.openapigen.models;

import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SendStickerRequest.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\fJ.\u0010\u0013\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SendStickerRequest;", "", b.f84734a, "", "sticker", "", "replyToMessageId", "", "(ILjava/lang/String;Ljava/lang/Long;)V", "getChatId", "()I", "getReplyToMessageId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getSticker", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "(ILjava/lang/String;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/SendStickerRequest;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendStickerRequest {
    private final int chatId;
    @h
    private final Long replyToMessageId;
    @g
    private final String sticker;

    public SendStickerRequest(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "sticker") @g String sticker, @com.squareup.moshi.g(name = "reply_to_message_id") @h Long l10) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        this.chatId = i4;
        this.sticker = sticker;
        this.replyToMessageId = l10;
    }

    public static /* synthetic */ SendStickerRequest copy$default(SendStickerRequest sendStickerRequest, int i4, String str, Long l10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = sendStickerRequest.chatId;
        }
        if ((i10 & 2) != 0) {
            str = sendStickerRequest.sticker;
        }
        if ((i10 & 4) != 0) {
            l10 = sendStickerRequest.replyToMessageId;
        }
        return sendStickerRequest.copy(i4, str, l10);
    }

    public final int component1() {
        return this.chatId;
    }

    @g
    public final String component2() {
        return this.sticker;
    }

    @h
    public final Long component3() {
        return this.replyToMessageId;
    }

    @g
    public final SendStickerRequest copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "sticker") @g String sticker, @com.squareup.moshi.g(name = "reply_to_message_id") @h Long l10) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        return new SendStickerRequest(i4, sticker, l10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendStickerRequest) {
            SendStickerRequest sendStickerRequest = (SendStickerRequest) obj;
            return this.chatId == sendStickerRequest.chatId && Intrinsics.areEqual(this.sticker, sendStickerRequest.sticker) && Intrinsics.areEqual(this.replyToMessageId, sendStickerRequest.replyToMessageId);
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
    public final String getSticker() {
        return this.sticker;
    }

    public int hashCode() {
        int hashCode = ((this.chatId * 31) + this.sticker.hashCode()) * 31;
        Long l10 = this.replyToMessageId;
        return hashCode + (l10 == null ? 0 : l10.hashCode());
    }

    @g
    public String toString() {
        return "SendStickerRequest(chatId=" + this.chatId + ", sticker=" + this.sticker + ", replyToMessageId=" + this.replyToMessageId + ')';
    }

    public /* synthetic */ SendStickerRequest(int i4, String str, Long l10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, str, (i10 & 4) != 0 ? null : l10);
    }
}
