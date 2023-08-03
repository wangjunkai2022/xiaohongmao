package com.im.freechat.data.sources.api.entities.chat;

import java.util.Map;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bc\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0018\b\u0001\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000b\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\tHÆ\u0003J\u0019\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000bHÆ\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013Jl\u0010\"\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t2\u0018\b\u0003\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000b2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\t\u0010(\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R!\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0018\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006)"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;", "", "userId", "", b.f84734a, "", "message", "type", "expansion", "Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;", "mentionList", "", "mentionAll", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;Ljava/util/Map;Ljava/lang/Integer;)V", "getChatId", "()Ljava/lang/String;", "getExpansion", "()Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;", "getMentionAll", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getMentionList", "()Ljava/util/Map;", "getMessage", "getType", "getUserId", "()I", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;Ljava/util/Map;Ljava/lang/Integer;)Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendMessageRequest {
    @g
    private final String chatId;
    @h
    private final MessageExpansion expansion;
    @h
    private final Integer mentionAll;
    @h
    private final Map<String, String> mentionList;
    @h
    private final String message;
    @h
    private final Integer type;
    private final int userId;

    public SendMessageRequest(@com.squareup.moshi.g(name = "unique_name") int i4, @com.squareup.moshi.g(name = "conv_id") @g String chatId, @com.squareup.moshi.g(name = "message") @h String str, @com.squareup.moshi.g(name = "_type") @h Integer num, @com.squareup.moshi.g(name = "expansion") @h MessageExpansion messageExpansion, @com.squareup.moshi.g(name = "mention_list") @h Map<String, String> map, @com.squareup.moshi.g(name = "mention_all") @h Integer num2) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        this.userId = i4;
        this.chatId = chatId;
        this.message = str;
        this.type = num;
        this.expansion = messageExpansion;
        this.mentionList = map;
        this.mentionAll = num2;
    }

    public static /* synthetic */ SendMessageRequest copy$default(SendMessageRequest sendMessageRequest, int i4, String str, String str2, Integer num, MessageExpansion messageExpansion, Map map, Integer num2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = sendMessageRequest.userId;
        }
        if ((i10 & 2) != 0) {
            str = sendMessageRequest.chatId;
        }
        String str3 = str;
        if ((i10 & 4) != 0) {
            str2 = sendMessageRequest.message;
        }
        String str4 = str2;
        if ((i10 & 8) != 0) {
            num = sendMessageRequest.type;
        }
        Integer num3 = num;
        if ((i10 & 16) != 0) {
            messageExpansion = sendMessageRequest.expansion;
        }
        MessageExpansion messageExpansion2 = messageExpansion;
        Map<String, String> map2 = map;
        if ((i10 & 32) != 0) {
            map2 = sendMessageRequest.mentionList;
        }
        Map map3 = map2;
        if ((i10 & 64) != 0) {
            num2 = sendMessageRequest.mentionAll;
        }
        return sendMessageRequest.copy(i4, str3, str4, num3, messageExpansion2, map3, num2);
    }

    public final int component1() {
        return this.userId;
    }

    @g
    public final String component2() {
        return this.chatId;
    }

    @h
    public final String component3() {
        return this.message;
    }

    @h
    public final Integer component4() {
        return this.type;
    }

    @h
    public final MessageExpansion component5() {
        return this.expansion;
    }

    @h
    public final Map<String, String> component6() {
        return this.mentionList;
    }

    @h
    public final Integer component7() {
        return this.mentionAll;
    }

    @g
    public final SendMessageRequest copy(@com.squareup.moshi.g(name = "unique_name") int i4, @com.squareup.moshi.g(name = "conv_id") @g String chatId, @com.squareup.moshi.g(name = "message") @h String str, @com.squareup.moshi.g(name = "_type") @h Integer num, @com.squareup.moshi.g(name = "expansion") @h MessageExpansion messageExpansion, @com.squareup.moshi.g(name = "mention_list") @h Map<String, String> map, @com.squareup.moshi.g(name = "mention_all") @h Integer num2) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        return new SendMessageRequest(i4, chatId, str, num, messageExpansion, map, num2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendMessageRequest) {
            SendMessageRequest sendMessageRequest = (SendMessageRequest) obj;
            return this.userId == sendMessageRequest.userId && Intrinsics.areEqual(this.chatId, sendMessageRequest.chatId) && Intrinsics.areEqual(this.message, sendMessageRequest.message) && Intrinsics.areEqual(this.type, sendMessageRequest.type) && Intrinsics.areEqual(this.expansion, sendMessageRequest.expansion) && Intrinsics.areEqual(this.mentionList, sendMessageRequest.mentionList) && Intrinsics.areEqual(this.mentionAll, sendMessageRequest.mentionAll);
        }
        return false;
    }

    @g
    public final String getChatId() {
        return this.chatId;
    }

    @h
    public final MessageExpansion getExpansion() {
        return this.expansion;
    }

    @h
    public final Integer getMentionAll() {
        return this.mentionAll;
    }

    @h
    public final Map<String, String> getMentionList() {
        return this.mentionList;
    }

    @h
    public final String getMessage() {
        return this.message;
    }

    @h
    public final Integer getType() {
        return this.type;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((this.userId * 31) + this.chatId.hashCode()) * 31;
        String str = this.message;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.type;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        MessageExpansion messageExpansion = this.expansion;
        int hashCode4 = (hashCode3 + (messageExpansion == null ? 0 : messageExpansion.hashCode())) * 31;
        Map<String, String> map = this.mentionList;
        int hashCode5 = (hashCode4 + (map == null ? 0 : map.hashCode())) * 31;
        Integer num2 = this.mentionAll;
        return hashCode5 + (num2 != null ? num2.hashCode() : 0);
    }

    @g
    public String toString() {
        return "SendMessageRequest(userId=" + this.userId + ", chatId=" + this.chatId + ", message=" + this.message + ", type=" + this.type + ", expansion=" + this.expansion + ", mentionList=" + this.mentionList + ", mentionAll=" + this.mentionAll + ')';
    }
}
