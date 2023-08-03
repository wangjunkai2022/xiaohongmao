package com.im.freechat.data.openapigen.models;

import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: Chat.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000fJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010\"\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010#\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0017J\u000b\u0010$\u001a\u0004\u0018\u00010\rHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\rHÆ\u0003Jj\u0010&\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010'J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u0003HÖ\u0001J\t\u0010,\u001a\u00020-HÖ\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u001b\u0010\u0017R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0015R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0013¨\u0006."}, d2 = {"Lcom/im/freechat/data/openapigen/models/Chat;", "", "id", "", "unreadCount", "opponent", "Lcom/im/freechat/data/openapigen/models/User;", "channel", "Lcom/im/freechat/data/openapigen/models/Channel;", "opponentLastReadMessageId", "", "lastReadMessageId", "lastMessage", "Lcom/im/freechat/data/openapigen/models/Message;", "pinnedMessage", "(IILcom/im/freechat/data/openapigen/models/User;Lcom/im/freechat/data/openapigen/models/Channel;Ljava/lang/Long;Ljava/lang/Long;Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/Message;)V", "getChannel", "()Lcom/im/freechat/data/openapigen/models/Channel;", "getId", "()I", "getLastMessage", "()Lcom/im/freechat/data/openapigen/models/Message;", "getLastReadMessageId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getOpponent", "()Lcom/im/freechat/data/openapigen/models/User;", "getOpponentLastReadMessageId", "getPinnedMessage", "getUnreadCount", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(IILcom/im/freechat/data/openapigen/models/User;Lcom/im/freechat/data/openapigen/models/Channel;Ljava/lang/Long;Ljava/lang/Long;Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/Message;)Lcom/im/freechat/data/openapigen/models/Chat;", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Chat {
    @h
    private final Channel channel;
    private final int id;
    @h
    private final Message lastMessage;
    @h
    private final Long lastReadMessageId;
    @h
    private final User opponent;
    @h
    private final Long opponentLastReadMessageId;
    @h
    private final Message pinnedMessage;
    private final int unreadCount;

    public Chat(@g(name = "id") int i4, @g(name = "unread_count") int i10, @g(name = "opponent") @h User user, @g(name = "channel") @h Channel channel, @g(name = "opponent_last_read_message_id") @h Long l10, @g(name = "last_read_message_id") @h Long l11, @g(name = "last_message") @h Message message, @g(name = "pinned_message") @h Message message2) {
        this.id = i4;
        this.unreadCount = i10;
        this.opponent = user;
        this.channel = channel;
        this.opponentLastReadMessageId = l10;
        this.lastReadMessageId = l11;
        this.lastMessage = message;
        this.pinnedMessage = message2;
    }

    public final int component1() {
        return this.id;
    }

    public final int component2() {
        return this.unreadCount;
    }

    @h
    public final User component3() {
        return this.opponent;
    }

    @h
    public final Channel component4() {
        return this.channel;
    }

    @h
    public final Long component5() {
        return this.opponentLastReadMessageId;
    }

    @h
    public final Long component6() {
        return this.lastReadMessageId;
    }

    @h
    public final Message component7() {
        return this.lastMessage;
    }

    @h
    public final Message component8() {
        return this.pinnedMessage;
    }

    @m8.g
    public final Chat copy(@g(name = "id") int i4, @g(name = "unread_count") int i10, @g(name = "opponent") @h User user, @g(name = "channel") @h Channel channel, @g(name = "opponent_last_read_message_id") @h Long l10, @g(name = "last_read_message_id") @h Long l11, @g(name = "last_message") @h Message message, @g(name = "pinned_message") @h Message message2) {
        return new Chat(i4, i10, user, channel, l10, l11, message, message2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Chat) {
            Chat chat = (Chat) obj;
            return this.id == chat.id && this.unreadCount == chat.unreadCount && Intrinsics.areEqual(this.opponent, chat.opponent) && Intrinsics.areEqual(this.channel, chat.channel) && Intrinsics.areEqual(this.opponentLastReadMessageId, chat.opponentLastReadMessageId) && Intrinsics.areEqual(this.lastReadMessageId, chat.lastReadMessageId) && Intrinsics.areEqual(this.lastMessage, chat.lastMessage) && Intrinsics.areEqual(this.pinnedMessage, chat.pinnedMessage);
        }
        return false;
    }

    @h
    public final Channel getChannel() {
        return this.channel;
    }

    public final int getId() {
        return this.id;
    }

    @h
    public final Message getLastMessage() {
        return this.lastMessage;
    }

    @h
    public final Long getLastReadMessageId() {
        return this.lastReadMessageId;
    }

    @h
    public final User getOpponent() {
        return this.opponent;
    }

    @h
    public final Long getOpponentLastReadMessageId() {
        return this.opponentLastReadMessageId;
    }

    @h
    public final Message getPinnedMessage() {
        return this.pinnedMessage;
    }

    public final int getUnreadCount() {
        return this.unreadCount;
    }

    public int hashCode() {
        int i4 = ((this.id * 31) + this.unreadCount) * 31;
        User user = this.opponent;
        int hashCode = (i4 + (user == null ? 0 : user.hashCode())) * 31;
        Channel channel = this.channel;
        int hashCode2 = (hashCode + (channel == null ? 0 : channel.hashCode())) * 31;
        Long l10 = this.opponentLastReadMessageId;
        int hashCode3 = (hashCode2 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Long l11 = this.lastReadMessageId;
        int hashCode4 = (hashCode3 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Message message = this.lastMessage;
        int hashCode5 = (hashCode4 + (message == null ? 0 : message.hashCode())) * 31;
        Message message2 = this.pinnedMessage;
        return hashCode5 + (message2 != null ? message2.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "Chat(id=" + this.id + ", unreadCount=" + this.unreadCount + ", opponent=" + this.opponent + ", channel=" + this.channel + ", opponentLastReadMessageId=" + this.opponentLastReadMessageId + ", lastReadMessageId=" + this.lastReadMessageId + ", lastMessage=" + this.lastMessage + ", pinnedMessage=" + this.pinnedMessage + ')';
    }

    public /* synthetic */ Chat(int i4, int i10, User user, Channel channel, Long l10, Long l11, Message message, Message message2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, i10, (i11 & 4) != 0 ? null : user, (i11 & 8) != 0 ? null : channel, (i11 & 16) != 0 ? null : l10, (i11 & 32) != 0 ? null : l11, (i11 & 64) != 0 ? null : message, (i11 & 128) != 0 ? null : message2);
    }
}
