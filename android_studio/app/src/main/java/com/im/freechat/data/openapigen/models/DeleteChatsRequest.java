package com.im.freechat.data.openapigen.models;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: DeleteChatsRequest.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\b\u0001\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0003\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u0004HÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/data/openapigen/models/DeleteChatsRequest;", "", "chatIds", "", "", "(Ljava/util/List;)V", "getChatIds", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class DeleteChatsRequest {
    @g
    private final List<Integer> chatIds;

    public DeleteChatsRequest(@com.squareup.moshi.g(name = "chat_ids") @g List<Integer> chatIds) {
        Intrinsics.checkNotNullParameter(chatIds, "chatIds");
        this.chatIds = chatIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DeleteChatsRequest copy$default(DeleteChatsRequest deleteChatsRequest, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            list = deleteChatsRequest.chatIds;
        }
        return deleteChatsRequest.copy(list);
    }

    @g
    public final List<Integer> component1() {
        return this.chatIds;
    }

    @g
    public final DeleteChatsRequest copy(@com.squareup.moshi.g(name = "chat_ids") @g List<Integer> chatIds) {
        Intrinsics.checkNotNullParameter(chatIds, "chatIds");
        return new DeleteChatsRequest(chatIds);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DeleteChatsRequest) && Intrinsics.areEqual(this.chatIds, ((DeleteChatsRequest) obj).chatIds);
    }

    @g
    public final List<Integer> getChatIds() {
        return this.chatIds;
    }

    public int hashCode() {
        return this.chatIds.hashCode();
    }

    @g
    public String toString() {
        return "DeleteChatsRequest(chatIds=" + this.chatIds + ')';
    }
}
