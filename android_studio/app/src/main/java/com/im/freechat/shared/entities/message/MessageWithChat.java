package com.im.freechat.shared.entities.message;

import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.ui.create.choosemember.h;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: MessageWithChat.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J3\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/shared/entities/message/MessageWithChat;", "", "message", "Lcom/im/freechat/shared/entities/message/Message;", "chatTitle", "", "chatAvatar", h.f43539c, "Lcom/im/freechat/shared/entities/chat/Chat$Type;", "(Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)V", "getChatAvatar", "()Ljava/lang/String;", "getChatTitle", "getChatType", "()Lcom/im/freechat/shared/entities/chat/Chat$Type;", "getMessage", "()Lcom/im/freechat/shared/entities/message/Message;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MessageWithChat {
    @m8.h
    private final String chatAvatar;
    @g
    private final String chatTitle;
    @g
    private final Chat.Type chatType;
    @g
    private final Message message;

    public MessageWithChat(@g Message message, @g String chatTitle, @m8.h String str, @g Chat.Type chatType) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(chatTitle, "chatTitle");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        this.message = message;
        this.chatTitle = chatTitle;
        this.chatAvatar = str;
        this.chatType = chatType;
    }

    public static /* synthetic */ MessageWithChat copy$default(MessageWithChat messageWithChat, Message message, String str, String str2, Chat.Type type, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            message = messageWithChat.message;
        }
        if ((i4 & 2) != 0) {
            str = messageWithChat.chatTitle;
        }
        if ((i4 & 4) != 0) {
            str2 = messageWithChat.chatAvatar;
        }
        if ((i4 & 8) != 0) {
            type = messageWithChat.chatType;
        }
        return messageWithChat.copy(message, str, str2, type);
    }

    @g
    public final Message component1() {
        return this.message;
    }

    @g
    public final String component2() {
        return this.chatTitle;
    }

    @m8.h
    public final String component3() {
        return this.chatAvatar;
    }

    @g
    public final Chat.Type component4() {
        return this.chatType;
    }

    @g
    public final MessageWithChat copy(@g Message message, @g String chatTitle, @m8.h String str, @g Chat.Type chatType) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(chatTitle, "chatTitle");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        return new MessageWithChat(message, chatTitle, str, chatType);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageWithChat) {
            MessageWithChat messageWithChat = (MessageWithChat) obj;
            return Intrinsics.areEqual(this.message, messageWithChat.message) && Intrinsics.areEqual(this.chatTitle, messageWithChat.chatTitle) && Intrinsics.areEqual(this.chatAvatar, messageWithChat.chatAvatar) && this.chatType == messageWithChat.chatType;
        }
        return false;
    }

    @m8.h
    public final String getChatAvatar() {
        return this.chatAvatar;
    }

    @g
    public final String getChatTitle() {
        return this.chatTitle;
    }

    @g
    public final Chat.Type getChatType() {
        return this.chatType;
    }

    @g
    public final Message getMessage() {
        return this.message;
    }

    public int hashCode() {
        int hashCode = ((this.message.hashCode() * 31) + this.chatTitle.hashCode()) * 31;
        String str = this.chatAvatar;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.chatType.hashCode();
    }

    @g
    public String toString() {
        return "MessageWithChat(message=" + this.message + ", chatTitle=" + this.chatTitle + ", chatAvatar=" + this.chatAvatar + ", chatType=" + this.chatType + ')';
    }
}
