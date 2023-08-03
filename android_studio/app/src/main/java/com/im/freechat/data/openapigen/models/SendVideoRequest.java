package com.im.freechat.data.openapigen.models;

import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SendVideoRequest.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0010J:\u0010\u0018\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/im/freechat/data/openapigen/models/SendVideoRequest;", "", b.f84734a, "", "video", "Lcom/im/freechat/data/openapigen/models/Video;", "caption", "", "replyToMessageId", "", "(ILcom/im/freechat/data/openapigen/models/Video;Ljava/lang/String;Ljava/lang/Long;)V", "getCaption", "()Ljava/lang/String;", "getChatId", "()I", "getReplyToMessageId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getVideo", "()Lcom/im/freechat/data/openapigen/models/Video;", "component1", "component2", "component3", "component4", "copy", "(ILcom/im/freechat/data/openapigen/models/Video;Ljava/lang/String;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/SendVideoRequest;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendVideoRequest {
    @h
    private final String caption;
    private final int chatId;
    @h
    private final Long replyToMessageId;
    @g
    private final Video video;

    public SendVideoRequest(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "video") @g Video video, @com.squareup.moshi.g(name = "caption") @h String str, @com.squareup.moshi.g(name = "reply_to_message_id") @h Long l10) {
        Intrinsics.checkNotNullParameter(video, "video");
        this.chatId = i4;
        this.video = video;
        this.caption = str;
        this.replyToMessageId = l10;
    }

    public static /* synthetic */ SendVideoRequest copy$default(SendVideoRequest sendVideoRequest, int i4, Video video, String str, Long l10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = sendVideoRequest.chatId;
        }
        if ((i10 & 2) != 0) {
            video = sendVideoRequest.video;
        }
        if ((i10 & 4) != 0) {
            str = sendVideoRequest.caption;
        }
        if ((i10 & 8) != 0) {
            l10 = sendVideoRequest.replyToMessageId;
        }
        return sendVideoRequest.copy(i4, video, str, l10);
    }

    public final int component1() {
        return this.chatId;
    }

    @g
    public final Video component2() {
        return this.video;
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
    public final SendVideoRequest copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "video") @g Video video, @com.squareup.moshi.g(name = "caption") @h String str, @com.squareup.moshi.g(name = "reply_to_message_id") @h Long l10) {
        Intrinsics.checkNotNullParameter(video, "video");
        return new SendVideoRequest(i4, video, str, l10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendVideoRequest) {
            SendVideoRequest sendVideoRequest = (SendVideoRequest) obj;
            return this.chatId == sendVideoRequest.chatId && Intrinsics.areEqual(this.video, sendVideoRequest.video) && Intrinsics.areEqual(this.caption, sendVideoRequest.caption) && Intrinsics.areEqual(this.replyToMessageId, sendVideoRequest.replyToMessageId);
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

    @h
    public final Long getReplyToMessageId() {
        return this.replyToMessageId;
    }

    @g
    public final Video getVideo() {
        return this.video;
    }

    public int hashCode() {
        int hashCode = ((this.chatId * 31) + this.video.hashCode()) * 31;
        String str = this.caption;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l10 = this.replyToMessageId;
        return hashCode2 + (l10 != null ? l10.hashCode() : 0);
    }

    @g
    public String toString() {
        return "SendVideoRequest(chatId=" + this.chatId + ", video=" + this.video + ", caption=" + this.caption + ", replyToMessageId=" + this.replyToMessageId + ')';
    }

    public /* synthetic */ SendVideoRequest(int i4, Video video, String str, Long l10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, video, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : l10);
    }
}
