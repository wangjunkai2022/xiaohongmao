package com.im.freechat.data.sources.database.entities.chat;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.PrimaryKey;
import com.im.freechat.data.sources.database.entities.message.MessageEntity;
import com.im.freechat.shared.entities.chat.Chat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: ChatEntity.kt */
@Entity(foreignKeys = {@ForeignKey(childColumns = {"last_message_id"}, entity = MessageEntity.class, onDelete = 3, parentColumns = {"message_id"})}, tableName = "chat")
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b7\b\u0087\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0016J\t\u00104\u001a\u00020\u0003HÆ\u0003J\u0010\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010,J\u0010\u00106\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010#J\t\u00107\u001a\u00020\u0012HÆ\u0003J\t\u00108\u001a\u00020\u0012HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010=\u001a\u00020\bHÆ\u0003J\u0010\u0010>\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010?\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010#J\u0010\u0010@\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010#J\t\u0010A\u001a\u00020\u0003HÆ\u0003J\u0010\u0010B\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010#J¸\u0001\u0010C\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\r\u001a\u00020\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010DJ\u0013\u0010E\u001a\u00020\u00122\b\u0010F\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010G\u001a\u00020\u0003HÖ\u0001J\t\u0010H\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR \u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001eR\u001e\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b\"\u0010#R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b%\u0010#R\u001a\u0010\f\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b&\u0010#R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b'\u0010#R\"\u0010\u0010\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010$\u001a\u0004\b(\u0010#\"\u0004\b)\u0010*R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010-\u001a\u0004\b+\u0010,R\u001e\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u001f\"\u0004\b/\u0010!R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u0018R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u001b¨\u0006I"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;", "", "id", "", MessageBundle.TITLE_ENTRY, "", "avatar", "type", "Lcom/im/freechat/shared/entities/chat/Chat$Type;", "lastReadMessageId", "", "lastChatMessageId", "lastSyncMessageId", "unreadCount", "pinnedMessageId", "pinnedUserId", "pinnedTime", "isPublic", "", "showHistoryToNewMembers", "invitationLink", "draftMessage", "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getDraftMessage", "getId", "()I", "getInvitationLink", "setInvitationLink", "(Ljava/lang/String;)V", "()Z", "setPublic", "(Z)V", "getLastChatMessageId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getLastReadMessageId", "getLastSyncMessageId", "getPinnedMessageId", "getPinnedTime", "setPinnedTime", "(Ljava/lang/Long;)V", "getPinnedUserId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getShowHistoryToNewMembers", "setShowHistoryToNewMembers", "getTitle", "getType", "()Lcom/im/freechat/shared/entities/chat/Chat$Type;", "getUnreadCount", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatEntity {
    @h
    @ColumnInfo(name = "avatar")
    private final String avatar;
    @h
    @ColumnInfo(name = "draft_message")
    private final String draftMessage;
    @PrimaryKey
    @ColumnInfo(name = "chat_id")
    private final int id;
    @h
    @ColumnInfo(name = "invitation_link")
    private String invitationLink;
    @ColumnInfo(name = "is_public")
    private boolean isPublic;
    @h
    @ColumnInfo(index = true, name = "last_message_id")
    private final Long lastChatMessageId;
    @h
    @ColumnInfo(name = "opponent_last_read_message_id")
    private final Long lastReadMessageId;
    @h
    @ColumnInfo(index = true, name = "last_sync_message_id")
    private final Long lastSyncMessageId;
    @h
    @ColumnInfo(name = "pinned_message_id")
    private final Long pinnedMessageId;
    @h
    @ColumnInfo(name = "pinned_time")
    private Long pinnedTime;
    @h
    @ColumnInfo(name = "pinned_user_id")
    private final Integer pinnedUserId;
    @ColumnInfo(name = "history_new_member")
    private boolean showHistoryToNewMembers;
    @h
    @ColumnInfo(name = MessageBundle.TITLE_ENTRY)
    private final String title;
    @g
    @ColumnInfo(name = "type")
    private final Chat.Type type;
    @ColumnInfo(name = "unread_count")
    private final int unreadCount;

    public ChatEntity(int i4, @h String str, @h String str2, @g Chat.Type type, @h Long l10, @h Long l11, @h Long l12, int i10, @h Long l13, @h Integer num, @h Long l14, boolean z9, boolean z10, @h String str3, @h String str4) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.id = i4;
        this.title = str;
        this.avatar = str2;
        this.type = type;
        this.lastReadMessageId = l10;
        this.lastChatMessageId = l11;
        this.lastSyncMessageId = l12;
        this.unreadCount = i10;
        this.pinnedMessageId = l13;
        this.pinnedUserId = num;
        this.pinnedTime = l14;
        this.isPublic = z9;
        this.showHistoryToNewMembers = z10;
        this.invitationLink = str3;
        this.draftMessage = str4;
    }

    public final int component1() {
        return this.id;
    }

    @h
    public final Integer component10() {
        return this.pinnedUserId;
    }

    @h
    public final Long component11() {
        return this.pinnedTime;
    }

    public final boolean component12() {
        return this.isPublic;
    }

    public final boolean component13() {
        return this.showHistoryToNewMembers;
    }

    @h
    public final String component14() {
        return this.invitationLink;
    }

    @h
    public final String component15() {
        return this.draftMessage;
    }

    @h
    public final String component2() {
        return this.title;
    }

    @h
    public final String component3() {
        return this.avatar;
    }

    @g
    public final Chat.Type component4() {
        return this.type;
    }

    @h
    public final Long component5() {
        return this.lastReadMessageId;
    }

    @h
    public final Long component6() {
        return this.lastChatMessageId;
    }

    @h
    public final Long component7() {
        return this.lastSyncMessageId;
    }

    public final int component8() {
        return this.unreadCount;
    }

    @h
    public final Long component9() {
        return this.pinnedMessageId;
    }

    @g
    public final ChatEntity copy(int i4, @h String str, @h String str2, @g Chat.Type type, @h Long l10, @h Long l11, @h Long l12, int i10, @h Long l13, @h Integer num, @h Long l14, boolean z9, boolean z10, @h String str3, @h String str4) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new ChatEntity(i4, str, str2, type, l10, l11, l12, i10, l13, num, l14, z9, z10, str3, str4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatEntity) {
            ChatEntity chatEntity = (ChatEntity) obj;
            return this.id == chatEntity.id && Intrinsics.areEqual(this.title, chatEntity.title) && Intrinsics.areEqual(this.avatar, chatEntity.avatar) && this.type == chatEntity.type && Intrinsics.areEqual(this.lastReadMessageId, chatEntity.lastReadMessageId) && Intrinsics.areEqual(this.lastChatMessageId, chatEntity.lastChatMessageId) && Intrinsics.areEqual(this.lastSyncMessageId, chatEntity.lastSyncMessageId) && this.unreadCount == chatEntity.unreadCount && Intrinsics.areEqual(this.pinnedMessageId, chatEntity.pinnedMessageId) && Intrinsics.areEqual(this.pinnedUserId, chatEntity.pinnedUserId) && Intrinsics.areEqual(this.pinnedTime, chatEntity.pinnedTime) && this.isPublic == chatEntity.isPublic && this.showHistoryToNewMembers == chatEntity.showHistoryToNewMembers && Intrinsics.areEqual(this.invitationLink, chatEntity.invitationLink) && Intrinsics.areEqual(this.draftMessage, chatEntity.draftMessage);
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    @h
    public final String getDraftMessage() {
        return this.draftMessage;
    }

    public final int getId() {
        return this.id;
    }

    @h
    public final String getInvitationLink() {
        return this.invitationLink;
    }

    @h
    public final Long getLastChatMessageId() {
        return this.lastChatMessageId;
    }

    @h
    public final Long getLastReadMessageId() {
        return this.lastReadMessageId;
    }

    @h
    public final Long getLastSyncMessageId() {
        return this.lastSyncMessageId;
    }

    @h
    public final Long getPinnedMessageId() {
        return this.pinnedMessageId;
    }

    @h
    public final Long getPinnedTime() {
        return this.pinnedTime;
    }

    @h
    public final Integer getPinnedUserId() {
        return this.pinnedUserId;
    }

    public final boolean getShowHistoryToNewMembers() {
        return this.showHistoryToNewMembers;
    }

    @h
    public final String getTitle() {
        return this.title;
    }

    @g
    public final Chat.Type getType() {
        return this.type;
    }

    public final int getUnreadCount() {
        return this.unreadCount;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int i4 = this.id * 31;
        String str = this.title;
        int hashCode = (i4 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.avatar;
        int hashCode2 = (((hashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.type.hashCode()) * 31;
        Long l10 = this.lastReadMessageId;
        int hashCode3 = (hashCode2 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Long l11 = this.lastChatMessageId;
        int hashCode4 = (hashCode3 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Long l12 = this.lastSyncMessageId;
        int hashCode5 = (((hashCode4 + (l12 == null ? 0 : l12.hashCode())) * 31) + this.unreadCount) * 31;
        Long l13 = this.pinnedMessageId;
        int hashCode6 = (hashCode5 + (l13 == null ? 0 : l13.hashCode())) * 31;
        Integer num = this.pinnedUserId;
        int hashCode7 = (hashCode6 + (num == null ? 0 : num.hashCode())) * 31;
        Long l14 = this.pinnedTime;
        int hashCode8 = (hashCode7 + (l14 == null ? 0 : l14.hashCode())) * 31;
        boolean z9 = this.isPublic;
        int i10 = z9;
        if (z9 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode8 + i10) * 31;
        boolean z10 = this.showHistoryToNewMembers;
        int i12 = (i11 + (z10 ? 1 : z10 ? 1 : 0)) * 31;
        String str3 = this.invitationLink;
        int hashCode9 = (i12 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.draftMessage;
        return hashCode9 + (str4 != null ? str4.hashCode() : 0);
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final void setInvitationLink(@h String str) {
        this.invitationLink = str;
    }

    public final void setPinnedTime(@h Long l10) {
        this.pinnedTime = l10;
    }

    public final void setPublic(boolean z9) {
        this.isPublic = z9;
    }

    public final void setShowHistoryToNewMembers(boolean z9) {
        this.showHistoryToNewMembers = z9;
    }

    @g
    public String toString() {
        return "ChatEntity(id=" + this.id + ", title=" + this.title + ", avatar=" + this.avatar + ", type=" + this.type + ", lastReadMessageId=" + this.lastReadMessageId + ", lastChatMessageId=" + this.lastChatMessageId + ", lastSyncMessageId=" + this.lastSyncMessageId + ", unreadCount=" + this.unreadCount + ", pinnedMessageId=" + this.pinnedMessageId + ", pinnedUserId=" + this.pinnedUserId + ", pinnedTime=" + this.pinnedTime + ", isPublic=" + this.isPublic + ", showHistoryToNewMembers=" + this.showHistoryToNewMembers + ", invitationLink=" + this.invitationLink + ", draftMessage=" + this.draftMessage + ')';
    }
}
