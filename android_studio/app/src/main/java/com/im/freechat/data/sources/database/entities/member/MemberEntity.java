package com.im.freechat.data.sources.database.entities.member;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import com.im.freechat.data.sources.database.entities.chat.ChatEntity;
import com.im.freechat.data.sources.database.entities.contact.UserEntity;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.ui.chat.userprofile.j;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MemberEntity.kt */
@Entity(foreignKeys = {@ForeignKey(childColumns = {"user_id"}, entity = UserEntity.class, onDelete = 5, parentColumns = {"user_id"}), @ForeignKey(childColumns = {"chat_id"}, entity = ChatEntity.class, onDelete = 5, parentColumns = {"chat_id"})}, primaryKeys = {"chat_id", "user_id"}, tableName = "member")
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J1\u0010\u0015\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;", "", j.f43244a, "", b.f84734a, "role", "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "status", "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;", "(IILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)V", "getChatId", "()I", "getContactId", "getRole", "()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "getStatus", "()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MemberEntity {
    @ColumnInfo(name = "chat_id")
    private final int chatId;
    @ColumnInfo(index = true, name = "user_id")
    private final int contactId;
    @g
    @ColumnInfo(name = "role")
    private final ChatMember.Role role;
    @g
    @ColumnInfo(name = "status")
    private final ChatMember.Status status;

    public MemberEntity(int i4, int i10, @g ChatMember.Role role, @g ChatMember.Status status) {
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(status, "status");
        this.contactId = i4;
        this.chatId = i10;
        this.role = role;
        this.status = status;
    }

    public static /* synthetic */ MemberEntity copy$default(MemberEntity memberEntity, int i4, int i10, ChatMember.Role role, ChatMember.Status status, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = memberEntity.contactId;
        }
        if ((i11 & 2) != 0) {
            i10 = memberEntity.chatId;
        }
        if ((i11 & 4) != 0) {
            role = memberEntity.role;
        }
        if ((i11 & 8) != 0) {
            status = memberEntity.status;
        }
        return memberEntity.copy(i4, i10, role, status);
    }

    public final int component1() {
        return this.contactId;
    }

    public final int component2() {
        return this.chatId;
    }

    @g
    public final ChatMember.Role component3() {
        return this.role;
    }

    @g
    public final ChatMember.Status component4() {
        return this.status;
    }

    @g
    public final MemberEntity copy(int i4, int i10, @g ChatMember.Role role, @g ChatMember.Status status) {
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(status, "status");
        return new MemberEntity(i4, i10, role, status);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MemberEntity) {
            MemberEntity memberEntity = (MemberEntity) obj;
            return this.contactId == memberEntity.contactId && this.chatId == memberEntity.chatId && this.role == memberEntity.role && this.status == memberEntity.status;
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    public final int getContactId() {
        return this.contactId;
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
        return (((((this.contactId * 31) + this.chatId) * 31) + this.role.hashCode()) * 31) + this.status.hashCode();
    }

    @g
    public String toString() {
        return "MemberEntity(contactId=" + this.contactId + ", chatId=" + this.chatId + ", role=" + this.role + ", status=" + this.status + ')';
    }
}
