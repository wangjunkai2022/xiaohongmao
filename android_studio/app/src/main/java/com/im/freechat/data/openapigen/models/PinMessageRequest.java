package com.im.freechat.data.openapigen.models;

import a5.a;
import com.squareup.moshi.g;
import k4.b;
import kotlin.Metadata;
import m8.h;

/* compiled from: PinMessageRequest.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/data/openapigen/models/PinMessageRequest;", "", b.f84734a, "", "messageId", "", "(IJ)V", "getChatId", "()I", "getMessageId", "()J", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class PinMessageRequest {
    private final int chatId;
    private final long messageId;

    public PinMessageRequest(@g(name = "chat_id") int i4, @g(name = "message_id") long j4) {
        this.chatId = i4;
        this.messageId = j4;
    }

    public static /* synthetic */ PinMessageRequest copy$default(PinMessageRequest pinMessageRequest, int i4, long j4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = pinMessageRequest.chatId;
        }
        if ((i10 & 2) != 0) {
            j4 = pinMessageRequest.messageId;
        }
        return pinMessageRequest.copy(i4, j4);
    }

    public final int component1() {
        return this.chatId;
    }

    public final long component2() {
        return this.messageId;
    }

    @m8.g
    public final PinMessageRequest copy(@g(name = "chat_id") int i4, @g(name = "message_id") long j4) {
        return new PinMessageRequest(i4, j4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinMessageRequest) {
            PinMessageRequest pinMessageRequest = (PinMessageRequest) obj;
            return this.chatId == pinMessageRequest.chatId && this.messageId == pinMessageRequest.messageId;
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    public int hashCode() {
        return (this.chatId * 31) + a.a(this.messageId);
    }

    @m8.g
    public String toString() {
        return "PinMessageRequest(chatId=" + this.chatId + ", messageId=" + this.messageId + ')';
    }
}
