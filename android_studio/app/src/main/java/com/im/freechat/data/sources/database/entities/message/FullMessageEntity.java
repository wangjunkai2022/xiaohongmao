package com.im.freechat.data.sources.database.entities.message;

import androidx.room.DatabaseView;
import androidx.room.Embedded;
import androidx.room.Relation;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity;
import com.im.freechat.data.sources.database.entities.contact.SenderEntity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MessageEntity.kt */
@DatabaseView(value = "SELECT * FROM message LEFT JOIN user ON message.sender_id = user.user_id LEFT JOIN \n        (SELECT \n            user_id as forwarder_user_id,\n            nickname as forwarder_nickname,\n            avatar_url as forwarder_avatar_url,\n            management_role as forwarder_management_role,\n            user_name_mask as forwarder_user_name_mask,\n            is_current as forwarder_is_current\n        FROM user) ON message.forward_sender_id = forwarder_user_id", viewName = "full_message")
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bHÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000e¨\u0006\u001e"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;", "", "messageEntity", "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;", "senderEntity", "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;", "forwardSenderEntity", "attachments", "", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)V", "getAttachments", "()Ljava/util/List;", "getForwardSenderEntity", "()Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;", "getMessageEntity", "()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;", "getSenderEntity", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FullMessageEntity {
    @Relation(entityColumn = "parent_message_id", parentColumn = "message_id")
    @g
    private final List<AttachmentEntity> attachments;
    @Embedded(prefix = "forwarder_")
    @h
    private final SenderEntity forwardSenderEntity;
    @Embedded
    @g
    private final MessageEntity messageEntity;
    @Embedded
    @h
    private final SenderEntity senderEntity;

    public FullMessageEntity(@g MessageEntity messageEntity, @h SenderEntity senderEntity, @h SenderEntity senderEntity2, @g List<AttachmentEntity> attachments) {
        Intrinsics.checkNotNullParameter(messageEntity, "messageEntity");
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        this.messageEntity = messageEntity;
        this.senderEntity = senderEntity;
        this.forwardSenderEntity = senderEntity2;
        this.attachments = attachments;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FullMessageEntity copy$default(FullMessageEntity fullMessageEntity, MessageEntity messageEntity, SenderEntity senderEntity, SenderEntity senderEntity2, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            messageEntity = fullMessageEntity.messageEntity;
        }
        if ((i4 & 2) != 0) {
            senderEntity = fullMessageEntity.senderEntity;
        }
        if ((i4 & 4) != 0) {
            senderEntity2 = fullMessageEntity.forwardSenderEntity;
        }
        if ((i4 & 8) != 0) {
            list = fullMessageEntity.attachments;
        }
        return fullMessageEntity.copy(messageEntity, senderEntity, senderEntity2, list);
    }

    @g
    public final MessageEntity component1() {
        return this.messageEntity;
    }

    @h
    public final SenderEntity component2() {
        return this.senderEntity;
    }

    @h
    public final SenderEntity component3() {
        return this.forwardSenderEntity;
    }

    @g
    public final List<AttachmentEntity> component4() {
        return this.attachments;
    }

    @g
    public final FullMessageEntity copy(@g MessageEntity messageEntity, @h SenderEntity senderEntity, @h SenderEntity senderEntity2, @g List<AttachmentEntity> attachments) {
        Intrinsics.checkNotNullParameter(messageEntity, "messageEntity");
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        return new FullMessageEntity(messageEntity, senderEntity, senderEntity2, attachments);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FullMessageEntity) {
            FullMessageEntity fullMessageEntity = (FullMessageEntity) obj;
            return Intrinsics.areEqual(this.messageEntity, fullMessageEntity.messageEntity) && Intrinsics.areEqual(this.senderEntity, fullMessageEntity.senderEntity) && Intrinsics.areEqual(this.forwardSenderEntity, fullMessageEntity.forwardSenderEntity) && Intrinsics.areEqual(this.attachments, fullMessageEntity.attachments);
        }
        return false;
    }

    @g
    public final List<AttachmentEntity> getAttachments() {
        return this.attachments;
    }

    @h
    public final SenderEntity getForwardSenderEntity() {
        return this.forwardSenderEntity;
    }

    @g
    public final MessageEntity getMessageEntity() {
        return this.messageEntity;
    }

    @h
    public final SenderEntity getSenderEntity() {
        return this.senderEntity;
    }

    public int hashCode() {
        int hashCode = this.messageEntity.hashCode() * 31;
        SenderEntity senderEntity = this.senderEntity;
        int hashCode2 = (hashCode + (senderEntity == null ? 0 : senderEntity.hashCode())) * 31;
        SenderEntity senderEntity2 = this.forwardSenderEntity;
        return ((hashCode2 + (senderEntity2 != null ? senderEntity2.hashCode() : 0)) * 31) + this.attachments.hashCode();
    }

    @g
    public String toString() {
        return "FullMessageEntity(messageEntity=" + this.messageEntity + ", senderEntity=" + this.senderEntity + ", forwardSenderEntity=" + this.forwardSenderEntity + ", attachments=" + this.attachments + ')';
    }
}
