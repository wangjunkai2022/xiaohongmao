package com.im.freechat.data.sources.database.entities.message;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.PrimaryKey;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.shared.entities.message.MessageStyle;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: MessageEntity.kt */
@Entity(tableName = "message")
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b1\b\u0087\b\u0018\u00002\u00020\u0001B³\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u0018\b\u0002\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014\u0012\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0012¢\u0006\u0002\u0010\u0019J\t\u00103\u001a\u00020\u0003HÆ\u0003J\u0010\u00104\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001fJ\t\u00106\u001a\u00020\u0012HÆ\u0003J\u0019\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u0014HÆ\u0003J\u0011\u00108\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016HÆ\u0003J\t\u00109\u001a\u00020\u0012HÆ\u0003J\t\u0010:\u001a\u00020\u0005HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010<\u001a\u00020\u0005HÆ\u0003J\t\u0010=\u001a\u00020\u0003HÆ\u0003J\t\u0010>\u001a\u00020\u000bHÆ\u0003J\u0010\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001fJ\u0010\u0010@\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\"J\u0010\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001fJÈ\u0001\u0010B\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00122\u0018\b\u0002\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00142\u0010\b\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u0012HÆ\u0001¢\u0006\u0002\u0010CJ\u0013\u0010D\u001a\u00020\u00122\b\u0010E\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010F\u001a\u00020\u0005HÖ\u0001J\t\u0010G\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010 \u001a\u0004\b\u001e\u0010\u001fR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010 \u001a\u0004\b$\u0010\u001fR\u001a\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010#\u001a\u0004\b%\u0010\"R\u0016\u0010\u0018\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010&R\u0016\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010&R&\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010 \u001a\u0004\b.\u0010\u001fR\u0016\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010+R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001bR\u001e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u00102¨\u0006H"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;", "", "messageId", "", "senderId", "", "content", "", k4.b.f84734a, "sendTime", "messageStatus", "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;", "editTime", "forwardSenderId", "forwardMessageId", "forwardChatId", "replyToMessageId", "mentionAll", "", "mentions", "", "styles", "", "Lcom/im/freechat/shared/entities/message/MessageStyle;", "isService", "(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V", "getChatId", "()I", "getContent", "()Ljava/lang/String;", "getEditTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getForwardChatId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getForwardMessageId", "getForwardSenderId", "()Z", "getMentionAll", "getMentions", "()Ljava/util/Map;", "getMessageId", "()J", "getMessageStatus", "()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;", "getReplyToMessageId", "getSendTime", "getSenderId", "getStyles", "()Ljava/util/List;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MessageEntity {
    @ColumnInfo(index = true, name = "parent_chat_id")
    private final int chatId;
    @h
    @ColumnInfo(name = "content")
    private final String content;
    @h
    @ColumnInfo(name = "edit_time")
    private final Long editTime;
    @h
    @ColumnInfo(name = "forward_chat_id")
    private final Integer forwardChatId;
    @h
    @ColumnInfo(name = "forward_message_id")
    private final Long forwardMessageId;
    @h
    @ColumnInfo(name = "forward_sender_id")
    private final Integer forwardSenderId;
    @ColumnInfo(name = "is_service")
    private final boolean isService;
    @ColumnInfo(name = "mention_all")
    private final boolean mentionAll;
    @h
    @ColumnInfo(name = "mentions")
    private final Map<Integer, String> mentions;
    @PrimaryKey
    @ColumnInfo(name = "message_id")
    private final long messageId;
    @g
    @ColumnInfo(name = "status")
    private final Message.MessageStatus messageStatus;
    @h
    @ColumnInfo(name = "reply_to_message_id")
    private final Long replyToMessageId;
    @ColumnInfo(name = "send_time")
    private final long sendTime;
    @ColumnInfo(index = true, name = "sender_id")
    private final int senderId;
    @h
    @ColumnInfo(name = "styles")
    private final List<MessageStyle> styles;

    public MessageEntity(long j4, int i4, @h String str, int i10, long j10, @g Message.MessageStatus messageStatus, @h Long l10, @h Integer num, @h Long l11, @h Integer num2, @h Long l12, boolean z9, @h Map<Integer, String> map, @h List<MessageStyle> list, boolean z10) {
        Intrinsics.checkNotNullParameter(messageStatus, "messageStatus");
        this.messageId = j4;
        this.senderId = i4;
        this.content = str;
        this.chatId = i10;
        this.sendTime = j10;
        this.messageStatus = messageStatus;
        this.editTime = l10;
        this.forwardSenderId = num;
        this.forwardMessageId = l11;
        this.forwardChatId = num2;
        this.replyToMessageId = l12;
        this.mentionAll = z9;
        this.mentions = map;
        this.styles = list;
        this.isService = z10;
    }

    public final long component1() {
        return this.messageId;
    }

    @h
    public final Integer component10() {
        return this.forwardChatId;
    }

    @h
    public final Long component11() {
        return this.replyToMessageId;
    }

    public final boolean component12() {
        return this.mentionAll;
    }

    @h
    public final Map<Integer, String> component13() {
        return this.mentions;
    }

    @h
    public final List<MessageStyle> component14() {
        return this.styles;
    }

    public final boolean component15() {
        return this.isService;
    }

    public final int component2() {
        return this.senderId;
    }

    @h
    public final String component3() {
        return this.content;
    }

    public final int component4() {
        return this.chatId;
    }

    public final long component5() {
        return this.sendTime;
    }

    @g
    public final Message.MessageStatus component6() {
        return this.messageStatus;
    }

    @h
    public final Long component7() {
        return this.editTime;
    }

    @h
    public final Integer component8() {
        return this.forwardSenderId;
    }

    @h
    public final Long component9() {
        return this.forwardMessageId;
    }

    @g
    public final MessageEntity copy(long j4, int i4, @h String str, int i10, long j10, @g Message.MessageStatus messageStatus, @h Long l10, @h Integer num, @h Long l11, @h Integer num2, @h Long l12, boolean z9, @h Map<Integer, String> map, @h List<MessageStyle> list, boolean z10) {
        Intrinsics.checkNotNullParameter(messageStatus, "messageStatus");
        return new MessageEntity(j4, i4, str, i10, j10, messageStatus, l10, num, l11, num2, l12, z9, map, list, z10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageEntity) {
            MessageEntity messageEntity = (MessageEntity) obj;
            return this.messageId == messageEntity.messageId && this.senderId == messageEntity.senderId && Intrinsics.areEqual(this.content, messageEntity.content) && this.chatId == messageEntity.chatId && this.sendTime == messageEntity.sendTime && this.messageStatus == messageEntity.messageStatus && Intrinsics.areEqual(this.editTime, messageEntity.editTime) && Intrinsics.areEqual(this.forwardSenderId, messageEntity.forwardSenderId) && Intrinsics.areEqual(this.forwardMessageId, messageEntity.forwardMessageId) && Intrinsics.areEqual(this.forwardChatId, messageEntity.forwardChatId) && Intrinsics.areEqual(this.replyToMessageId, messageEntity.replyToMessageId) && this.mentionAll == messageEntity.mentionAll && Intrinsics.areEqual(this.mentions, messageEntity.mentions) && Intrinsics.areEqual(this.styles, messageEntity.styles) && this.isService == messageEntity.isService;
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @h
    public final String getContent() {
        return this.content;
    }

    @h
    public final Long getEditTime() {
        return this.editTime;
    }

    @h
    public final Integer getForwardChatId() {
        return this.forwardChatId;
    }

    @h
    public final Long getForwardMessageId() {
        return this.forwardMessageId;
    }

    @h
    public final Integer getForwardSenderId() {
        return this.forwardSenderId;
    }

    public final boolean getMentionAll() {
        return this.mentionAll;
    }

    @h
    public final Map<Integer, String> getMentions() {
        return this.mentions;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    @g
    public final Message.MessageStatus getMessageStatus() {
        return this.messageStatus;
    }

    @h
    public final Long getReplyToMessageId() {
        return this.replyToMessageId;
    }

    public final long getSendTime() {
        return this.sendTime;
    }

    public final int getSenderId() {
        return this.senderId;
    }

    @h
    public final List<MessageStyle> getStyles() {
        return this.styles;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int a10 = ((a5.a.a(this.messageId) * 31) + this.senderId) * 31;
        String str = this.content;
        int hashCode = (((((((a10 + (str == null ? 0 : str.hashCode())) * 31) + this.chatId) * 31) + a5.a.a(this.sendTime)) * 31) + this.messageStatus.hashCode()) * 31;
        Long l10 = this.editTime;
        int hashCode2 = (hashCode + (l10 == null ? 0 : l10.hashCode())) * 31;
        Integer num = this.forwardSenderId;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Long l11 = this.forwardMessageId;
        int hashCode4 = (hashCode3 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Integer num2 = this.forwardChatId;
        int hashCode5 = (hashCode4 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l12 = this.replyToMessageId;
        int hashCode6 = (hashCode5 + (l12 == null ? 0 : l12.hashCode())) * 31;
        boolean z9 = this.mentionAll;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        int i10 = (hashCode6 + i4) * 31;
        Map<Integer, String> map = this.mentions;
        int hashCode7 = (i10 + (map == null ? 0 : map.hashCode())) * 31;
        List<MessageStyle> list = this.styles;
        int hashCode8 = (hashCode7 + (list != null ? list.hashCode() : 0)) * 31;
        boolean z10 = this.isService;
        return hashCode8 + (z10 ? 1 : z10 ? 1 : 0);
    }

    public final boolean isService() {
        return this.isService;
    }

    @g
    public String toString() {
        return "MessageEntity(messageId=" + this.messageId + ", senderId=" + this.senderId + ", content=" + this.content + ", chatId=" + this.chatId + ", sendTime=" + this.sendTime + ", messageStatus=" + this.messageStatus + ", editTime=" + this.editTime + ", forwardSenderId=" + this.forwardSenderId + ", forwardMessageId=" + this.forwardMessageId + ", forwardChatId=" + this.forwardChatId + ", replyToMessageId=" + this.replyToMessageId + ", mentionAll=" + this.mentionAll + ", mentions=" + this.mentions + ", styles=" + this.styles + ", isService=" + this.isService + ')';
    }

    public /* synthetic */ MessageEntity(long j4, int i4, String str, int i10, long j10, Message.MessageStatus messageStatus, Long l10, Integer num, Long l11, Integer num2, Long l12, boolean z9, Map map, List list, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j4, i4, str, i10, j10, messageStatus, (i11 & 64) != 0 ? null : l10, (i11 & 128) != 0 ? null : num, (i11 & 256) != 0 ? null : l11, (i11 & 512) != 0 ? null : num2, (i11 & 1024) != 0 ? null : l12, (i11 & 2048) != 0 ? false : z9, (i11 & 4096) != 0 ? null : map, (i11 & 8192) != 0 ? null : list, (i11 & 16384) != 0 ? false : z10);
    }
}
