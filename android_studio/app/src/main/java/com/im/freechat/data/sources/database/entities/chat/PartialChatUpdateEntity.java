package com.im.freechat.data.sources.database.entities.chat;

import androidx.room.ColumnInfo;
import com.im.freechat.shared.entities.chat.Chat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: ChatEntity.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b.\b\u0086\b\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0013J\t\u0010,\u001a\u00020\u0003HÆ\u0003J\t\u0010-\u001a\u00020\u0010HÆ\u0003J\t\u0010.\u001a\u00020\u0010HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00102\u001a\u00020\bHÆ\u0003J\u0010\u00103\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0010\u00104\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001fJ\t\u00105\u001a\u00020\u0003HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0010\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010$J\u0094\u0001\u00108\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\f\u001a\u00020\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020\u00102\b\u0010;\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010<\u001a\u00020\u0003HÖ\u0001J\t\u0010=\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R \u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0015\"\u0004\b\u0019\u0010\u001aR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010 \u001a\u0004\b!\u0010\u001fR\u001a\u0010\r\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\"\u0010\u001fR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010%\u001a\u0004\b#\u0010$R\u001e\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u001b\"\u0004\b'\u0010\u001dR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010*R\u0016\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0017¨\u0006>"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;", "", "id", "", MessageBundle.TITLE_ENTRY, "", "avatar", "type", "Lcom/im/freechat/shared/entities/chat/Chat$Type;", "lastReadMessageId", "", "lastChatMessageId", "unreadCount", "pinnedMessageId", "pinnedUserId", "isPublic", "", "showHistoryToNewMembers", "invitationLink", "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getId", "()I", "getInvitationLink", "setInvitationLink", "(Ljava/lang/String;)V", "()Z", "setPublic", "(Z)V", "getLastChatMessageId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getLastReadMessageId", "getPinnedMessageId", "getPinnedUserId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getShowHistoryToNewMembers", "setShowHistoryToNewMembers", "getTitle", "getType", "()Lcom/im/freechat/shared/entities/chat/Chat$Type;", "getUnreadCount", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;ZZLjava/lang/String;)Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class PartialChatUpdateEntity {
    @h
    @ColumnInfo(name = "avatar")
    private final String avatar;
    @ColumnInfo(name = "chat_id")
    private final int id;
    @h
    @ColumnInfo(name = "invitation_link")
    private String invitationLink;
    @ColumnInfo(name = "is_public")
    private boolean isPublic;
    @h
    @ColumnInfo(name = "last_message_id")
    private final Long lastChatMessageId;
    @h
    @ColumnInfo(name = "opponent_last_read_message_id")
    private final Long lastReadMessageId;
    @h
    @ColumnInfo(name = "pinned_message_id")
    private final Long pinnedMessageId;
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

    public PartialChatUpdateEntity(int i4, @h String str, @h String str2, @g Chat.Type type, @h Long l10, @h Long l11, int i10, @h Long l12, @h Integer num, boolean z9, boolean z10, @h String str3) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.id = i4;
        this.title = str;
        this.avatar = str2;
        this.type = type;
        this.lastReadMessageId = l10;
        this.lastChatMessageId = l11;
        this.unreadCount = i10;
        this.pinnedMessageId = l12;
        this.pinnedUserId = num;
        this.isPublic = z9;
        this.showHistoryToNewMembers = z10;
        this.invitationLink = str3;
    }

    public final int component1() {
        return this.id;
    }

    public final boolean component10() {
        return this.isPublic;
    }

    public final boolean component11() {
        return this.showHistoryToNewMembers;
    }

    @h
    public final String component12() {
        return this.invitationLink;
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

    public final int component7() {
        return this.unreadCount;
    }

    @h
    public final Long component8() {
        return this.pinnedMessageId;
    }

    @h
    public final Integer component9() {
        return this.pinnedUserId;
    }

    @g
    public final PartialChatUpdateEntity copy(int i4, @h String str, @h String str2, @g Chat.Type type, @h Long l10, @h Long l11, int i10, @h Long l12, @h Integer num, boolean z9, boolean z10, @h String str3) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new PartialChatUpdateEntity(i4, str, str2, type, l10, l11, i10, l12, num, z9, z10, str3);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PartialChatUpdateEntity) {
            PartialChatUpdateEntity partialChatUpdateEntity = (PartialChatUpdateEntity) obj;
            return this.id == partialChatUpdateEntity.id && Intrinsics.areEqual(this.title, partialChatUpdateEntity.title) && Intrinsics.areEqual(this.avatar, partialChatUpdateEntity.avatar) && this.type == partialChatUpdateEntity.type && Intrinsics.areEqual(this.lastReadMessageId, partialChatUpdateEntity.lastReadMessageId) && Intrinsics.areEqual(this.lastChatMessageId, partialChatUpdateEntity.lastChatMessageId) && this.unreadCount == partialChatUpdateEntity.unreadCount && Intrinsics.areEqual(this.pinnedMessageId, partialChatUpdateEntity.pinnedMessageId) && Intrinsics.areEqual(this.pinnedUserId, partialChatUpdateEntity.pinnedUserId) && this.isPublic == partialChatUpdateEntity.isPublic && this.showHistoryToNewMembers == partialChatUpdateEntity.showHistoryToNewMembers && Intrinsics.areEqual(this.invitationLink, partialChatUpdateEntity.invitationLink);
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
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
    public final Long getPinnedMessageId() {
        return this.pinnedMessageId;
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
        int hashCode4 = (((hashCode3 + (l11 == null ? 0 : l11.hashCode())) * 31) + this.unreadCount) * 31;
        Long l12 = this.pinnedMessageId;
        int hashCode5 = (hashCode4 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Integer num = this.pinnedUserId;
        int hashCode6 = (hashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        boolean z9 = this.isPublic;
        int i10 = z9;
        if (z9 != 0) {
            i10 = 1;
        }
        int i11 = (hashCode6 + i10) * 31;
        boolean z10 = this.showHistoryToNewMembers;
        int i12 = (i11 + (z10 ? 1 : z10 ? 1 : 0)) * 31;
        String str3 = this.invitationLink;
        return i12 + (str3 != null ? str3.hashCode() : 0);
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final void setInvitationLink(@h String str) {
        this.invitationLink = str;
    }

    public final void setPublic(boolean z9) {
        this.isPublic = z9;
    }

    public final void setShowHistoryToNewMembers(boolean z9) {
        this.showHistoryToNewMembers = z9;
    }

    @g
    public String toString() {
        return "PartialChatUpdateEntity(id=" + this.id + ", title=" + this.title + ", avatar=" + this.avatar + ", type=" + this.type + ", lastReadMessageId=" + this.lastReadMessageId + ", lastChatMessageId=" + this.lastChatMessageId + ", unreadCount=" + this.unreadCount + ", pinnedMessageId=" + this.pinnedMessageId + ", pinnedUserId=" + this.pinnedUserId + ", isPublic=" + this.isPublic + ", showHistoryToNewMembers=" + this.showHistoryToNewMembers + ", invitationLink=" + this.invitationLink + ')';
    }
}
