package com.im.freechat.shared.entities;

import com.im.freechat.shared.entities.message.MessageWithChat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SocketEvent.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/shared/entities/MessageEditedEvent;", "Lcom/im/freechat/shared/entities/SocketEvent;", "message", "Lcom/im/freechat/shared/entities/message/MessageWithChat;", "(Lcom/im/freechat/shared/entities/message/MessageWithChat;)V", "getMessage", "()Lcom/im/freechat/shared/entities/message/MessageWithChat;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MessageEditedEvent extends SocketEvent {
    @g
    private final MessageWithChat message;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MessageEditedEvent(@g MessageWithChat message) {
        super(null);
        Intrinsics.checkNotNullParameter(message, "message");
        this.message = message;
    }

    public static /* synthetic */ MessageEditedEvent copy$default(MessageEditedEvent messageEditedEvent, MessageWithChat messageWithChat, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            messageWithChat = messageEditedEvent.message;
        }
        return messageEditedEvent.copy(messageWithChat);
    }

    @g
    public final MessageWithChat component1() {
        return this.message;
    }

    @g
    public final MessageEditedEvent copy(@g MessageWithChat message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return new MessageEditedEvent(message);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessageEditedEvent) && Intrinsics.areEqual(this.message, ((MessageEditedEvent) obj).message);
    }

    @g
    public final MessageWithChat getMessage() {
        return this.message;
    }

    public int hashCode() {
        return this.message.hashCode();
    }

    @g
    public String toString() {
        return "MessageEditedEvent(message=" + this.message + ')';
    }
}
