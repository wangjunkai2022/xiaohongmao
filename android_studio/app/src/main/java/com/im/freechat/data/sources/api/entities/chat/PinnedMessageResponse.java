package com.im.freechat.data.sources.api.entities.chat;

import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0003J!\u0010\u000b\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/PinnedMessageResponse;", "", "msgId", "", "pinnedUserId", "(Ljava/lang/String;Ljava/lang/String;)V", "getMsgId", "()Ljava/lang/String;", "getPinnedUserId", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class PinnedMessageResponse {
    @h
    private final String msgId;
    @h
    private final String pinnedUserId;

    public PinnedMessageResponse(@g(name = "msg_id") @h String str, @g(name = "user_id") @h String str2) {
        this.msgId = str;
        this.pinnedUserId = str2;
    }

    public static /* synthetic */ PinnedMessageResponse copy$default(PinnedMessageResponse pinnedMessageResponse, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = pinnedMessageResponse.msgId;
        }
        if ((i4 & 2) != 0) {
            str2 = pinnedMessageResponse.pinnedUserId;
        }
        return pinnedMessageResponse.copy(str, str2);
    }

    @h
    public final String component1() {
        return this.msgId;
    }

    @h
    public final String component2() {
        return this.pinnedUserId;
    }

    @m8.g
    public final PinnedMessageResponse copy(@g(name = "msg_id") @h String str, @g(name = "user_id") @h String str2) {
        return new PinnedMessageResponse(str, str2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinnedMessageResponse) {
            PinnedMessageResponse pinnedMessageResponse = (PinnedMessageResponse) obj;
            return Intrinsics.areEqual(this.msgId, pinnedMessageResponse.msgId) && Intrinsics.areEqual(this.pinnedUserId, pinnedMessageResponse.pinnedUserId);
        }
        return false;
    }

    @h
    public final String getMsgId() {
        return this.msgId;
    }

    @h
    public final String getPinnedUserId() {
        return this.pinnedUserId;
    }

    public int hashCode() {
        String str = this.msgId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.pinnedUserId;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "PinnedMessageResponse(msgId=" + this.msgId + ", pinnedUserId=" + this.pinnedUserId + ')';
    }
}
