package com.im.freechat.data.openapigen.models;

import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SendPhotoRequest.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0012J:\u0010\u0018\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001f"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;", "", b.f84734a, "", "photo", "Lcom/im/freechat/data/openapigen/models/Photo;", "caption", "", "replyToMessageId", "", "(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;)V", "getCaption", "()Ljava/lang/String;", "getChatId", "()I", "getPhoto", "()Lcom/im/freechat/data/openapigen/models/Photo;", "getReplyToMessageId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "copy", "(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendPhotoRequest {
    @h
    private final String caption;
    private final int chatId;
    @g
    private final Photo photo;
    @h
    private final Long replyToMessageId;

    public SendPhotoRequest(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "photo") @g Photo photo, @com.squareup.moshi.g(name = "caption") @h String str, @com.squareup.moshi.g(name = "reply_to_message_id") @h Long l10) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        this.chatId = i4;
        this.photo = photo;
        this.caption = str;
        this.replyToMessageId = l10;
    }

    public static /* synthetic */ SendPhotoRequest copy$default(SendPhotoRequest sendPhotoRequest, int i4, Photo photo, String str, Long l10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = sendPhotoRequest.chatId;
        }
        if ((i10 & 2) != 0) {
            photo = sendPhotoRequest.photo;
        }
        if ((i10 & 4) != 0) {
            str = sendPhotoRequest.caption;
        }
        if ((i10 & 8) != 0) {
            l10 = sendPhotoRequest.replyToMessageId;
        }
        return sendPhotoRequest.copy(i4, photo, str, l10);
    }

    public final int component1() {
        return this.chatId;
    }

    @g
    public final Photo component2() {
        return this.photo;
    }

    @h
    public final String component3() {
        return this.caption;
    }

    @h
    public final Long component4() {
        return this.replyToMessageId;
    }

    @g
    public final SendPhotoRequest copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "photo") @g Photo photo, @com.squareup.moshi.g(name = "caption") @h String str, @com.squareup.moshi.g(name = "reply_to_message_id") @h Long l10) {
        Intrinsics.checkNotNullParameter(photo, "photo");
        return new SendPhotoRequest(i4, photo, str, l10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendPhotoRequest) {
            SendPhotoRequest sendPhotoRequest = (SendPhotoRequest) obj;
            return this.chatId == sendPhotoRequest.chatId && Intrinsics.areEqual(this.photo, sendPhotoRequest.photo) && Intrinsics.areEqual(this.caption, sendPhotoRequest.caption) && Intrinsics.areEqual(this.replyToMessageId, sendPhotoRequest.replyToMessageId);
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

    @g
    public final Photo getPhoto() {
        return this.photo;
    }

    @h
    public final Long getReplyToMessageId() {
        return this.replyToMessageId;
    }

    public int hashCode() {
        int hashCode = ((this.chatId * 31) + this.photo.hashCode()) * 31;
        String str = this.caption;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l10 = this.replyToMessageId;
        return hashCode2 + (l10 != null ? l10.hashCode() : 0);
    }

    @g
    public String toString() {
        return "SendPhotoRequest(chatId=" + this.chatId + ", photo=" + this.photo + ", caption=" + this.caption + ", replyToMessageId=" + this.replyToMessageId + ')';
    }

    public /* synthetic */ SendPhotoRequest(int i4, Photo photo, String str, Long l10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, photo, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : l10);
    }
}
