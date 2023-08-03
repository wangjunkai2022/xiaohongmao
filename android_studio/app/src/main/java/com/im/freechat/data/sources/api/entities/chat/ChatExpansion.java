package com.im.freechat.data.sources.api.entities.chat;

import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u000fJ\u0010\u0010\u001a\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u000fJV\u0010\u001b\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010 \u001a\u00020\tHÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\b\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0015\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u0013\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\r¨\u0006\""}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansion;", "", "chatTitle", "", "avatar", "userList", "pinnedMessage", "Lcom/im/freechat/data/sources/api/entities/chat/PinnedMessageResponse;", "isPublic", "", "showHistoryToNewMembers", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/PinnedMessageResponse;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getAvatar", "()Ljava/lang/String;", "getChatTitle", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPinnedMessage", "()Lcom/im/freechat/data/sources/api/entities/chat/PinnedMessageResponse;", "getShowHistoryToNewMembers", "getUserList", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/PinnedMessageResponse;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansion;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatExpansion {
    @h
    private final String avatar;
    @h
    private final String chatTitle;
    @h
    private final Integer isPublic;
    @h
    private final PinnedMessageResponse pinnedMessage;
    @h
    private final Integer showHistoryToNewMembers;
    @h
    private final String userList;

    public ChatExpansion() {
        this(null, null, null, null, null, null, 63, null);
    }

    public ChatExpansion(@g(name = "conv_name") @h String str, @g(name = "group_avatar_url") @h String str2, @g(name = "userList") @h String str3, @g(name = "pinned_msg_info") @h PinnedMessageResponse pinnedMessageResponse, @g(name = "is_public") @h Integer num, @g(name = "history_new_member") @h Integer num2) {
        this.chatTitle = str;
        this.avatar = str2;
        this.userList = str3;
        this.pinnedMessage = pinnedMessageResponse;
        this.isPublic = num;
        this.showHistoryToNewMembers = num2;
    }

    public static /* synthetic */ ChatExpansion copy$default(ChatExpansion chatExpansion, String str, String str2, String str3, PinnedMessageResponse pinnedMessageResponse, Integer num, Integer num2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = chatExpansion.chatTitle;
        }
        if ((i4 & 2) != 0) {
            str2 = chatExpansion.avatar;
        }
        String str4 = str2;
        if ((i4 & 4) != 0) {
            str3 = chatExpansion.userList;
        }
        String str5 = str3;
        if ((i4 & 8) != 0) {
            pinnedMessageResponse = chatExpansion.pinnedMessage;
        }
        PinnedMessageResponse pinnedMessageResponse2 = pinnedMessageResponse;
        if ((i4 & 16) != 0) {
            num = chatExpansion.isPublic;
        }
        Integer num3 = num;
        if ((i4 & 32) != 0) {
            num2 = chatExpansion.showHistoryToNewMembers;
        }
        return chatExpansion.copy(str, str4, str5, pinnedMessageResponse2, num3, num2);
    }

    @h
    public final String component1() {
        return this.chatTitle;
    }

    @h
    public final String component2() {
        return this.avatar;
    }

    @h
    public final String component3() {
        return this.userList;
    }

    @h
    public final PinnedMessageResponse component4() {
        return this.pinnedMessage;
    }

    @h
    public final Integer component5() {
        return this.isPublic;
    }

    @h
    public final Integer component6() {
        return this.showHistoryToNewMembers;
    }

    @m8.g
    public final ChatExpansion copy(@g(name = "conv_name") @h String str, @g(name = "group_avatar_url") @h String str2, @g(name = "userList") @h String str3, @g(name = "pinned_msg_info") @h PinnedMessageResponse pinnedMessageResponse, @g(name = "is_public") @h Integer num, @g(name = "history_new_member") @h Integer num2) {
        return new ChatExpansion(str, str2, str3, pinnedMessageResponse, num, num2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatExpansion) {
            ChatExpansion chatExpansion = (ChatExpansion) obj;
            return Intrinsics.areEqual(this.chatTitle, chatExpansion.chatTitle) && Intrinsics.areEqual(this.avatar, chatExpansion.avatar) && Intrinsics.areEqual(this.userList, chatExpansion.userList) && Intrinsics.areEqual(this.pinnedMessage, chatExpansion.pinnedMessage) && Intrinsics.areEqual(this.isPublic, chatExpansion.isPublic) && Intrinsics.areEqual(this.showHistoryToNewMembers, chatExpansion.showHistoryToNewMembers);
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    @h
    public final String getChatTitle() {
        return this.chatTitle;
    }

    @h
    public final PinnedMessageResponse getPinnedMessage() {
        return this.pinnedMessage;
    }

    @h
    public final Integer getShowHistoryToNewMembers() {
        return this.showHistoryToNewMembers;
    }

    @h
    public final String getUserList() {
        return this.userList;
    }

    public int hashCode() {
        String str = this.chatTitle;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.avatar;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.userList;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        PinnedMessageResponse pinnedMessageResponse = this.pinnedMessage;
        int hashCode4 = (hashCode3 + (pinnedMessageResponse == null ? 0 : pinnedMessageResponse.hashCode())) * 31;
        Integer num = this.isPublic;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.showHistoryToNewMembers;
        return hashCode5 + (num2 != null ? num2.hashCode() : 0);
    }

    @h
    public final Integer isPublic() {
        return this.isPublic;
    }

    @m8.g
    public String toString() {
        return "ChatExpansion(chatTitle=" + this.chatTitle + ", avatar=" + this.avatar + ", userList=" + this.userList + ", pinnedMessage=" + this.pinnedMessage + ", isPublic=" + this.isPublic + ", showHistoryToNewMembers=" + this.showHistoryToNewMembers + ')';
    }

    public /* synthetic */ ChatExpansion(String str, String str2, String str3, PinnedMessageResponse pinnedMessageResponse, Integer num, Integer num2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : str2, (i4 & 4) != 0 ? null : str3, (i4 & 8) != 0 ? null : pinnedMessageResponse, (i4 & 16) != 0 ? null : num, (i4 & 32) != 0 ? null : num2);
    }
}
