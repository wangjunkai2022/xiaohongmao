package com.im.freechat.data.sources.api.entities.chat;

import java.util.List;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0003J-\u0010\u0011\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00032\u000e\b\u0003\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageRequest;", "", "userId", "", b.f84734a, "mediaGroup", "", "Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "getChatId", "()Ljava/lang/String;", "getMediaGroup", "()Ljava/util/List;", "getUserId", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendMediaMessageRequest {
    @g
    private final String chatId;
    @g
    private final List<SendMessageRequest> mediaGroup;
    @g
    private final String userId;

    public SendMediaMessageRequest(@com.squareup.moshi.g(name = "unique_name") @g String userId, @com.squareup.moshi.g(name = "conv_id") @g String chatId, @com.squareup.moshi.g(name = "media_group") @g List<SendMessageRequest> mediaGroup) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(mediaGroup, "mediaGroup");
        this.userId = userId;
        this.chatId = chatId;
        this.mediaGroup = mediaGroup;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SendMediaMessageRequest copy$default(SendMediaMessageRequest sendMediaMessageRequest, String str, String str2, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = sendMediaMessageRequest.userId;
        }
        if ((i4 & 2) != 0) {
            str2 = sendMediaMessageRequest.chatId;
        }
        if ((i4 & 4) != 0) {
            list = sendMediaMessageRequest.mediaGroup;
        }
        return sendMediaMessageRequest.copy(str, str2, list);
    }

    @g
    public final String component1() {
        return this.userId;
    }

    @g
    public final String component2() {
        return this.chatId;
    }

    @g
    public final List<SendMessageRequest> component3() {
        return this.mediaGroup;
    }

    @g
    public final SendMediaMessageRequest copy(@com.squareup.moshi.g(name = "unique_name") @g String userId, @com.squareup.moshi.g(name = "conv_id") @g String chatId, @com.squareup.moshi.g(name = "media_group") @g List<SendMessageRequest> mediaGroup) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(mediaGroup, "mediaGroup");
        return new SendMediaMessageRequest(userId, chatId, mediaGroup);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendMediaMessageRequest) {
            SendMediaMessageRequest sendMediaMessageRequest = (SendMediaMessageRequest) obj;
            return Intrinsics.areEqual(this.userId, sendMediaMessageRequest.userId) && Intrinsics.areEqual(this.chatId, sendMediaMessageRequest.chatId) && Intrinsics.areEqual(this.mediaGroup, sendMediaMessageRequest.mediaGroup);
        }
        return false;
    }

    @g
    public final String getChatId() {
        return this.chatId;
    }

    @g
    public final List<SendMessageRequest> getMediaGroup() {
        return this.mediaGroup;
    }

    @g
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (((this.userId.hashCode() * 31) + this.chatId.hashCode()) * 31) + this.mediaGroup.hashCode();
    }

    @g
    public String toString() {
        return "SendMediaMessageRequest(userId=" + this.userId + ", chatId=" + this.chatId + ", mediaGroup=" + this.mediaGroup + ')';
    }
}
