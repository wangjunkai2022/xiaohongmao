package com.im.freechat.data.openapigen.models;

import a5.a;
import com.squareup.moshi.g;
import k4.b;
import kotlin.Metadata;
import m8.h;

/* compiled from: ForwardMessageRequest.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00032\b\b\u0003\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;", "", b.f84734a, "", "fromChatId", "forwardMessageId", "", "(IIJ)V", "getChatId", "()I", "getForwardMessageId", "()J", "getFromChatId", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ForwardMessageRequest {
    private final int chatId;
    private final long forwardMessageId;
    private final int fromChatId;

    public ForwardMessageRequest(@g(name = "chat_id") int i4, @g(name = "from_chat_id") int i10, @g(name = "forward_message_id") long j4) {
        this.chatId = i4;
        this.fromChatId = i10;
        this.forwardMessageId = j4;
    }

    public static /* synthetic */ ForwardMessageRequest copy$default(ForwardMessageRequest forwardMessageRequest, int i4, int i10, long j4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = forwardMessageRequest.chatId;
        }
        if ((i11 & 2) != 0) {
            i10 = forwardMessageRequest.fromChatId;
        }
        if ((i11 & 4) != 0) {
            j4 = forwardMessageRequest.forwardMessageId;
        }
        return forwardMessageRequest.copy(i4, i10, j4);
    }

    public final int component1() {
        return this.chatId;
    }

    public final int component2() {
        return this.fromChatId;
    }

    public final long component3() {
        return this.forwardMessageId;
    }

    @m8.g
    public final ForwardMessageRequest copy(@g(name = "chat_id") int i4, @g(name = "from_chat_id") int i10, @g(name = "forward_message_id") long j4) {
        return new ForwardMessageRequest(i4, i10, j4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ForwardMessageRequest) {
            ForwardMessageRequest forwardMessageRequest = (ForwardMessageRequest) obj;
            return this.chatId == forwardMessageRequest.chatId && this.fromChatId == forwardMessageRequest.fromChatId && this.forwardMessageId == forwardMessageRequest.forwardMessageId;
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    public final long getForwardMessageId() {
        return this.forwardMessageId;
    }

    public final int getFromChatId() {
        return this.fromChatId;
    }

    public int hashCode() {
        return (((this.chatId * 31) + this.fromChatId) * 31) + a.a(this.forwardMessageId);
    }

    @m8.g
    public String toString() {
        return "ForwardMessageRequest(chatId=" + this.chatId + ", fromChatId=" + this.fromChatId + ", forwardMessageId=" + this.forwardMessageId + ')';
    }
}
