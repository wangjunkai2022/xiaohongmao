package com.im.freechat.data.sources.api.entities.chat;

import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001f\u0010\r\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/PinnedMessageInfo;", "", "messageId", "", "userSign", "", "(Ljava/lang/String;I)V", "getMessageId", "()Ljava/lang/String;", "getUserSign", "()I", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class PinnedMessageInfo {
    @h
    private final String messageId;
    private final int userSign;

    public PinnedMessageInfo(@g(name = "msg_id") @h String str, @g(name = "user_id") int i4) {
        this.messageId = str;
        this.userSign = i4;
    }

    public static /* synthetic */ PinnedMessageInfo copy$default(PinnedMessageInfo pinnedMessageInfo, String str, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = pinnedMessageInfo.messageId;
        }
        if ((i10 & 2) != 0) {
            i4 = pinnedMessageInfo.userSign;
        }
        return pinnedMessageInfo.copy(str, i4);
    }

    @h
    public final String component1() {
        return this.messageId;
    }

    public final int component2() {
        return this.userSign;
    }

    @m8.g
    public final PinnedMessageInfo copy(@g(name = "msg_id") @h String str, @g(name = "user_id") int i4) {
        return new PinnedMessageInfo(str, i4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinnedMessageInfo) {
            PinnedMessageInfo pinnedMessageInfo = (PinnedMessageInfo) obj;
            return Intrinsics.areEqual(this.messageId, pinnedMessageInfo.messageId) && this.userSign == pinnedMessageInfo.userSign;
        }
        return false;
    }

    @h
    public final String getMessageId() {
        return this.messageId;
    }

    public final int getUserSign() {
        return this.userSign;
    }

    public int hashCode() {
        String str = this.messageId;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.userSign;
    }

    @m8.g
    public String toString() {
        return "PinnedMessageInfo(messageId=" + this.messageId + ", userSign=" + this.userSign + ')';
    }
}
