package com.im.freechat.data.sources.database.entities.member;

import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import com.im.freechat.data.sources.database.entities.contact.UserEntity;
import com.im.freechat.shared.entities.chat.ChatMember;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MemberEntity.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J1\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;", "", b.f84734a, "", "role", "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "status", "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;", "contact", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;", "(ILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)V", "getChatId", "()I", "getContact", "()Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;", "getRole", "()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "getStatus", "()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatMemberEntity {
    @ColumnInfo(name = "chat_id")
    private final int chatId;
    @Embedded
    @g
    private final UserEntity contact;
    @g
    @ColumnInfo(name = "role")
    private final ChatMember.Role role;
    @g
    @ColumnInfo(name = "status")
    private final ChatMember.Status status;

    public ChatMemberEntity(int i4, @g ChatMember.Role role, @g ChatMember.Status status, @g UserEntity contact) {
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(contact, "contact");
        this.chatId = i4;
        this.role = role;
        this.status = status;
        this.contact = contact;
    }

    public static /* synthetic */ ChatMemberEntity copy$default(ChatMemberEntity chatMemberEntity, int i4, ChatMember.Role role, ChatMember.Status status, UserEntity userEntity, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = chatMemberEntity.chatId;
        }
        if ((i10 & 2) != 0) {
            role = chatMemberEntity.role;
        }
        if ((i10 & 4) != 0) {
            status = chatMemberEntity.status;
        }
        if ((i10 & 8) != 0) {
            userEntity = chatMemberEntity.contact;
        }
        return chatMemberEntity.copy(i4, role, status, userEntity);
    }

    public final int component1() {
        return this.chatId;
    }

    @g
    public final ChatMember.Role component2() {
        return this.role;
    }

    @g
    public final ChatMember.Status component3() {
        return this.status;
    }

    @g
    public final UserEntity component4() {
        return this.contact;
    }

    @g
    public final ChatMemberEntity copy(int i4, @g ChatMember.Role role, @g ChatMember.Status status, @g UserEntity contact) {
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(contact, "contact");
        return new ChatMemberEntity(i4, role, status, contact);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatMemberEntity) {
            ChatMemberEntity chatMemberEntity = (ChatMemberEntity) obj;
            return this.chatId == chatMemberEntity.chatId && this.role == chatMemberEntity.role && this.status == chatMemberEntity.status && Intrinsics.areEqual(this.contact, chatMemberEntity.contact);
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @g
    public final UserEntity getContact() {
        return this.contact;
    }

    @g
    public final ChatMember.Role getRole() {
        return this.role;
    }

    @g
    public final ChatMember.Status getStatus() {
        return this.status;
    }

    public int hashCode() {
        return (((((this.chatId * 31) + this.role.hashCode()) * 31) + this.status.hashCode()) * 31) + this.contact.hashCode();
    }

    @g
    public String toString() {
        return "ChatMemberEntity(chatId=" + this.chatId + ", role=" + this.role + ", status=" + this.status + ", contact=" + this.contact + ')';
    }
}
