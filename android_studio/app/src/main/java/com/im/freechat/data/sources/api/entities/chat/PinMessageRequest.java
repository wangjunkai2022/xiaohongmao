package com.im.freechat.data.sources.api.entities.chat;

import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/PinMessageRequest;", "", "userId", "", b.f84734a, "", "pinnedMsgInfo", "Lcom/im/freechat/data/sources/api/entities/chat/PinnedMessageInfo;", "(ILjava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/PinnedMessageInfo;)V", "getChatId", "()Ljava/lang/String;", "getPinnedMsgInfo", "()Lcom/im/freechat/data/sources/api/entities/chat/PinnedMessageInfo;", "getUserId", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class PinMessageRequest {
    @g
    private final String chatId;
    @g
    private final PinnedMessageInfo pinnedMsgInfo;
    private final int userId;

    public PinMessageRequest(@com.squareup.moshi.g(name = "unique_name") int i4, @com.squareup.moshi.g(name = "conv_id") @g String chatId, @com.squareup.moshi.g(name = "pinned_msg_info") @g PinnedMessageInfo pinnedMsgInfo) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(pinnedMsgInfo, "pinnedMsgInfo");
        this.userId = i4;
        this.chatId = chatId;
        this.pinnedMsgInfo = pinnedMsgInfo;
    }

    public static /* synthetic */ PinMessageRequest copy$default(PinMessageRequest pinMessageRequest, int i4, String str, PinnedMessageInfo pinnedMessageInfo, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = pinMessageRequest.userId;
        }
        if ((i10 & 2) != 0) {
            str = pinMessageRequest.chatId;
        }
        if ((i10 & 4) != 0) {
            pinnedMessageInfo = pinMessageRequest.pinnedMsgInfo;
        }
        return pinMessageRequest.copy(i4, str, pinnedMessageInfo);
    }

    public final int component1() {
        return this.userId;
    }

    @g
    public final String component2() {
        return this.chatId;
    }

    @g
    public final PinnedMessageInfo component3() {
        return this.pinnedMsgInfo;
    }

    @g
    public final PinMessageRequest copy(@com.squareup.moshi.g(name = "unique_name") int i4, @com.squareup.moshi.g(name = "conv_id") @g String chatId, @com.squareup.moshi.g(name = "pinned_msg_info") @g PinnedMessageInfo pinnedMsgInfo) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(pinnedMsgInfo, "pinnedMsgInfo");
        return new PinMessageRequest(i4, chatId, pinnedMsgInfo);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinMessageRequest) {
            PinMessageRequest pinMessageRequest = (PinMessageRequest) obj;
            return this.userId == pinMessageRequest.userId && Intrinsics.areEqual(this.chatId, pinMessageRequest.chatId) && Intrinsics.areEqual(this.pinnedMsgInfo, pinMessageRequest.pinnedMsgInfo);
        }
        return false;
    }

    @g
    public final String getChatId() {
        return this.chatId;
    }

    @g
    public final PinnedMessageInfo getPinnedMsgInfo() {
        return this.pinnedMsgInfo;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (((this.userId * 31) + this.chatId.hashCode()) * 31) + this.pinnedMsgInfo.hashCode();
    }

    @g
    public String toString() {
        return "PinMessageRequest(userId=" + this.userId + ", chatId=" + this.chatId + ", pinnedMsgInfo=" + this.pinnedMsgInfo + ')';
    }
}
