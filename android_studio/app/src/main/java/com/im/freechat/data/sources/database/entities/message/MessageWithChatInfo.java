package com.im.freechat.data.sources.database.entities.message;

import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import androidx.room.Relation;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity;
import com.im.freechat.data.sources.database.entities.contact.SenderEntity;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.ui.create.choosemember.h;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: MessageEntity.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\nHÆ\u0003J\t\u0010\u001e\u001a\u00020\nHÆ\u0003J\t\u0010\u001f\u001a\u00020\rHÆ\u0003JM\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\rHÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\nHÖ\u0001R\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0016\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019¨\u0006'"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/message/MessageWithChatInfo;", "", "messageEntity", "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;", "senderEntity", "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;", "attachments", "", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "chatTitle", "", "chatAvatar", h.f43539c, "Lcom/im/freechat/shared/entities/chat/Chat$Type;", "(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;)V", "getAttachments", "()Ljava/util/List;", "getChatAvatar", "()Ljava/lang/String;", "getChatTitle", "getChatType", "()Lcom/im/freechat/shared/entities/chat/Chat$Type;", "getMessageEntity", "()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;", "getSenderEntity", "()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MessageWithChatInfo {
    @Relation(entityColumn = "parent_message_id", parentColumn = "message_id")
    @g
    private final List<AttachmentEntity> attachments;
    @g
    @ColumnInfo(name = "chat_avatar")
    private final String chatAvatar;
    @g
    @ColumnInfo(name = "chat_title")
    private final String chatTitle;
    @g
    @ColumnInfo(name = "chat_type")
    private final Chat.Type chatType;
    @Embedded
    @g
    private final MessageEntity messageEntity;
    @Embedded
    @m8.h
    private final SenderEntity senderEntity;

    public MessageWithChatInfo(@g MessageEntity messageEntity, @m8.h SenderEntity senderEntity, @g List<AttachmentEntity> attachments, @g String chatTitle, @g String chatAvatar, @g Chat.Type chatType) {
        Intrinsics.checkNotNullParameter(messageEntity, "messageEntity");
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        Intrinsics.checkNotNullParameter(chatTitle, "chatTitle");
        Intrinsics.checkNotNullParameter(chatAvatar, "chatAvatar");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        this.messageEntity = messageEntity;
        this.senderEntity = senderEntity;
        this.attachments = attachments;
        this.chatTitle = chatTitle;
        this.chatAvatar = chatAvatar;
        this.chatType = chatType;
    }

    public static /* synthetic */ MessageWithChatInfo copy$default(MessageWithChatInfo messageWithChatInfo, MessageEntity messageEntity, SenderEntity senderEntity, List list, String str, String str2, Chat.Type type, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            messageEntity = messageWithChatInfo.messageEntity;
        }
        if ((i4 & 2) != 0) {
            senderEntity = messageWithChatInfo.senderEntity;
        }
        SenderEntity senderEntity2 = senderEntity;
        List<AttachmentEntity> list2 = list;
        if ((i4 & 4) != 0) {
            list2 = messageWithChatInfo.attachments;
        }
        List list3 = list2;
        if ((i4 & 8) != 0) {
            str = messageWithChatInfo.chatTitle;
        }
        String str3 = str;
        if ((i4 & 16) != 0) {
            str2 = messageWithChatInfo.chatAvatar;
        }
        String str4 = str2;
        if ((i4 & 32) != 0) {
            type = messageWithChatInfo.chatType;
        }
        return messageWithChatInfo.copy(messageEntity, senderEntity2, list3, str3, str4, type);
    }

    @g
    public final MessageEntity component1() {
        return this.messageEntity;
    }

    @m8.h
    public final SenderEntity component2() {
        return this.senderEntity;
    }

    @g
    public final List<AttachmentEntity> component3() {
        return this.attachments;
    }

    @g
    public final String component4() {
        return this.chatTitle;
    }

    @g
    public final String component5() {
        return this.chatAvatar;
    }

    @g
    public final Chat.Type component6() {
        return this.chatType;
    }

    @g
    public final MessageWithChatInfo copy(@g MessageEntity messageEntity, @m8.h SenderEntity senderEntity, @g List<AttachmentEntity> attachments, @g String chatTitle, @g String chatAvatar, @g Chat.Type chatType) {
        Intrinsics.checkNotNullParameter(messageEntity, "messageEntity");
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        Intrinsics.checkNotNullParameter(chatTitle, "chatTitle");
        Intrinsics.checkNotNullParameter(chatAvatar, "chatAvatar");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        return new MessageWithChatInfo(messageEntity, senderEntity, attachments, chatTitle, chatAvatar, chatType);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageWithChatInfo) {
            MessageWithChatInfo messageWithChatInfo = (MessageWithChatInfo) obj;
            return Intrinsics.areEqual(this.messageEntity, messageWithChatInfo.messageEntity) && Intrinsics.areEqual(this.senderEntity, messageWithChatInfo.senderEntity) && Intrinsics.areEqual(this.attachments, messageWithChatInfo.attachments) && Intrinsics.areEqual(this.chatTitle, messageWithChatInfo.chatTitle) && Intrinsics.areEqual(this.chatAvatar, messageWithChatInfo.chatAvatar) && this.chatType == messageWithChatInfo.chatType;
        }
        return false;
    }

    @g
    public final List<AttachmentEntity> getAttachments() {
        return this.attachments;
    }

    @g
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
    public final MessageEntity getMessageEntity() {
        return this.messageEntity;
    }

    @m8.h
    public final SenderEntity getSenderEntity() {
        return this.senderEntity;
    }

    public int hashCode() {
        int hashCode = this.messageEntity.hashCode() * 31;
        SenderEntity senderEntity = this.senderEntity;
        return ((((((((hashCode + (senderEntity == null ? 0 : senderEntity.hashCode())) * 31) + this.attachments.hashCode()) * 31) + this.chatTitle.hashCode()) * 31) + this.chatAvatar.hashCode()) * 31) + this.chatType.hashCode();
    }

    @g
    public String toString() {
        return "MessageWithChatInfo(messageEntity=" + this.messageEntity + ", senderEntity=" + this.senderEntity + ", attachments=" + this.attachments + ", chatTitle=" + this.chatTitle + ", chatAvatar=" + this.chatAvatar + ", chatType=" + this.chatType + ')';
    }
}
