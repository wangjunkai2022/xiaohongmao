package com.im.freechat.data.sources.api.entities.chat;

import a5.a;
import java.util.Map;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\"\b\u0086\b\u0018\u00002\u00020\u0001Bs\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0001\u0010\f\u001a\u00020\r\u0012\b\b\u0001\u0010\u000e\u001a\u00020\b\u0012\u0016\b\u0001\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010¢\u0006\u0002\u0010\u0011J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\t\u0010%\u001a\u00020\u0006HÆ\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u0010'\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010!J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010)\u001a\u00020\rHÆ\u0003J\t\u0010*\u001a\u00020\bHÆ\u0003J\u0017\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010HÆ\u0003J|\u0010,\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00032\b\b\u0003\u0010\u0005\u001a\u00020\u00062\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u00032\b\b\u0003\u0010\f\u001a\u00020\r2\b\b\u0003\u0010\u000e\u001a\u00020\b2\u0016\b\u0003\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010HÆ\u0001¢\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020\n2\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u00100\u001a\u00020\bHÖ\u0001J\t\u00101\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0013R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0007\u0010\u0017R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0013R\u0011\u0010\u000e\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u001f\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!¨\u00062"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;", "", "id", "", b.f84734a, "createTime", "", "isSend", "", "unread", "", "mediaGroupId", "msgDetails", "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;", "mentionAll", "mentionList", "", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/util/Map;)V", "getChatId", "()Ljava/lang/String;", "getCreateTime", "()J", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMediaGroupId", "getMentionAll", "()I", "getMentionList", "()Ljava/util/Map;", "getMsgDetails", "()Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;", "getUnread", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/util/Map;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageResponse {
    @g
    private final String chatId;
    private final long createTime;
    @g
    private final String id;
    @h
    private final Integer isSend;
    @h
    private final String mediaGroupId;
    private final int mentionAll;
    @h
    private final Map<String, String> mentionList;
    @g
    private final MessageResponseDetails msgDetails;
    @h
    private final Boolean unread;

    public MessageResponse(@com.squareup.moshi.g(name = "msg_id") @g String id, @com.squareup.moshi.g(name = "conv_id") @g String chatId, @com.squareup.moshi.g(name = "ctime") long j4, @com.squareup.moshi.g(name = "is_send") @h Integer num, @com.squareup.moshi.g(name = "unread") @h Boolean bool, @com.squareup.moshi.g(name = "media_group_id") @h String str, @com.squareup.moshi.g(name = "msg") @g MessageResponseDetails msgDetails, @com.squareup.moshi.g(name = "mention_all") int i4, @com.squareup.moshi.g(name = "mention_list") @h Map<String, String> map) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(msgDetails, "msgDetails");
        this.id = id;
        this.chatId = chatId;
        this.createTime = j4;
        this.isSend = num;
        this.unread = bool;
        this.mediaGroupId = str;
        this.msgDetails = msgDetails;
        this.mentionAll = i4;
        this.mentionList = map;
    }

    @g
    public final String component1() {
        return this.id;
    }

    @g
    public final String component2() {
        return this.chatId;
    }

    public final long component3() {
        return this.createTime;
    }

    @h
    public final Integer component4() {
        return this.isSend;
    }

    @h
    public final Boolean component5() {
        return this.unread;
    }

    @h
    public final String component6() {
        return this.mediaGroupId;
    }

    @g
    public final MessageResponseDetails component7() {
        return this.msgDetails;
    }

    public final int component8() {
        return this.mentionAll;
    }

    @h
    public final Map<String, String> component9() {
        return this.mentionList;
    }

    @g
    public final MessageResponse copy(@com.squareup.moshi.g(name = "msg_id") @g String id, @com.squareup.moshi.g(name = "conv_id") @g String chatId, @com.squareup.moshi.g(name = "ctime") long j4, @com.squareup.moshi.g(name = "is_send") @h Integer num, @com.squareup.moshi.g(name = "unread") @h Boolean bool, @com.squareup.moshi.g(name = "media_group_id") @h String str, @com.squareup.moshi.g(name = "msg") @g MessageResponseDetails msgDetails, @com.squareup.moshi.g(name = "mention_all") int i4, @com.squareup.moshi.g(name = "mention_list") @h Map<String, String> map) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        Intrinsics.checkNotNullParameter(msgDetails, "msgDetails");
        return new MessageResponse(id, chatId, j4, num, bool, str, msgDetails, i4, map);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageResponse) {
            MessageResponse messageResponse = (MessageResponse) obj;
            return Intrinsics.areEqual(this.id, messageResponse.id) && Intrinsics.areEqual(this.chatId, messageResponse.chatId) && this.createTime == messageResponse.createTime && Intrinsics.areEqual(this.isSend, messageResponse.isSend) && Intrinsics.areEqual(this.unread, messageResponse.unread) && Intrinsics.areEqual(this.mediaGroupId, messageResponse.mediaGroupId) && Intrinsics.areEqual(this.msgDetails, messageResponse.msgDetails) && this.mentionAll == messageResponse.mentionAll && Intrinsics.areEqual(this.mentionList, messageResponse.mentionList);
        }
        return false;
    }

    @g
    public final String getChatId() {
        return this.chatId;
    }

    public final long getCreateTime() {
        return this.createTime;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @h
    public final String getMediaGroupId() {
        return this.mediaGroupId;
    }

    public final int getMentionAll() {
        return this.mentionAll;
    }

    @h
    public final Map<String, String> getMentionList() {
        return this.mentionList;
    }

    @g
    public final MessageResponseDetails getMsgDetails() {
        return this.msgDetails;
    }

    @h
    public final Boolean getUnread() {
        return this.unread;
    }

    public int hashCode() {
        int hashCode = ((((this.id.hashCode() * 31) + this.chatId.hashCode()) * 31) + a.a(this.createTime)) * 31;
        Integer num = this.isSend;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.unread;
        int hashCode3 = (hashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.mediaGroupId;
        int hashCode4 = (((((hashCode3 + (str == null ? 0 : str.hashCode())) * 31) + this.msgDetails.hashCode()) * 31) + this.mentionAll) * 31;
        Map<String, String> map = this.mentionList;
        return hashCode4 + (map != null ? map.hashCode() : 0);
    }

    @h
    public final Integer isSend() {
        return this.isSend;
    }

    @g
    public String toString() {
        return "MessageResponse(id=" + this.id + ", chatId=" + this.chatId + ", createTime=" + this.createTime + ", isSend=" + this.isSend + ", unread=" + this.unread + ", mediaGroupId=" + this.mediaGroupId + ", msgDetails=" + this.msgDetails + ", mentionAll=" + this.mentionAll + ", mentionList=" + this.mentionList + ')';
    }
}
