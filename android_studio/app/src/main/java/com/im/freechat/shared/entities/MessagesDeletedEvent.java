package com.im.freechat.shared.entities;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SocketEvent.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/shared/entities/MessagesDeletedEvent;", "Lcom/im/freechat/shared/entities/SocketEvent;", "messageIds", "", "", "(Ljava/util/List;)V", "getMessageIds", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MessagesDeletedEvent extends SocketEvent {
    @g
    private final List<Long> messageIds;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessagesDeletedEvent(@g List<Long> messageIds) {
        super(null);
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        this.messageIds = messageIds;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ MessagesDeletedEvent copy$default(MessagesDeletedEvent messagesDeletedEvent, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            list = messagesDeletedEvent.messageIds;
        }
        return messagesDeletedEvent.copy(list);
    }

    @g
    public final List<Long> component1() {
        return this.messageIds;
    }

    @g
    public final MessagesDeletedEvent copy(@g List<Long> messageIds) {
        Intrinsics.checkNotNullParameter(messageIds, "messageIds");
        return new MessagesDeletedEvent(messageIds);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessagesDeletedEvent) && Intrinsics.areEqual(this.messageIds, ((MessagesDeletedEvent) obj).messageIds);
    }

    @g
    public final List<Long> getMessageIds() {
        return this.messageIds;
    }

    public int hashCode() {
        return this.messageIds.hashCode();
    }

    @g
    public String toString() {
        return "MessagesDeletedEvent(messageIds=" + this.messageIds + ')';
    }
}
