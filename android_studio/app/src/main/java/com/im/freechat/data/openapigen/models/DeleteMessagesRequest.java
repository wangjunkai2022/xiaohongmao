package com.im.freechat.data.openapigen.models;

import java.util.List;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DeleteMessagesRequest.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J#\u0010\u000e\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\u000e\b\u0003\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/im/freechat/data/openapigen/models/DeleteMessagesRequest;", "", b.f84734a, "", "messageIds", "", "", "(ILjava/util/List;)V", "getChatId", "()I", "getMessageIds", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class DeleteMessagesRequest {
    private final int chatId;
    @g
    private final List<Long> messageIds;

    public DeleteMessagesRequest(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_ids") @g List<Long> messageIds) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        this.chatId = i4;
        this.messageIds = messageIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DeleteMessagesRequest copy$default(DeleteMessagesRequest deleteMessagesRequest, int i4, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = deleteMessagesRequest.chatId;
        }
        if ((i10 & 2) != 0) {
            list = deleteMessagesRequest.messageIds;
        }
        return deleteMessagesRequest.copy(i4, list);
    }

    public final int component1() {
        return this.chatId;
    }

    @g
    public final List<Long> component2() {
        return this.messageIds;
    }

    @g
    public final DeleteMessagesRequest copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_ids") @g List<Long> messageIds) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        return new DeleteMessagesRequest(i4, messageIds);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DeleteMessagesRequest) {
            DeleteMessagesRequest deleteMessagesRequest = (DeleteMessagesRequest) obj;
            return this.chatId == deleteMessagesRequest.chatId && Intrinsics.areEqual(this.messageIds, deleteMessagesRequest.messageIds);
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @g
    public final List<Long> getMessageIds() {
        return this.messageIds;
    }

    public int hashCode() {
        return (this.chatId * 31) + this.messageIds.hashCode();
    }

    @g
    public String toString() {
        return "DeleteMessagesRequest(chatId=" + this.chatId + ", messageIds=" + this.messageIds + ')';
    }
}
