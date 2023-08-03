package com.im.freechat.data.sources.api.entities.chat;

import com.im.freechat.ui.create.choosemember.h;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0005HÆ\u0003J\t\u0010!\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\fHÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u000fHÆ\u0003Jc\u0010'\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00052\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\u0005HÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0014¨\u0006-"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/ChatResponse;", "", "id", "", h.f43539c, "", "unReadMsgCount", "chatExpansion", "Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansionResponse;", "lastMessage", "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;", "lastSyncMessage", "Lcom/im/freechat/data/sources/api/entities/chat/SyncMessageResponse;", "invitationLink", "opponent", "Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;", "(Ljava/lang/String;IILcom/im/freechat/data/sources/api/entities/chat/ChatExpansionResponse;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;Lcom/im/freechat/data/sources/api/entities/chat/SyncMessageResponse;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;)V", "getChatExpansion", "()Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansionResponse;", "getChatType", "()I", "getId", "()Ljava/lang/String;", "getInvitationLink", "getLastMessage", "()Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;", "getLastSyncMessage", "()Lcom/im/freechat/data/sources/api/entities/chat/SyncMessageResponse;", "getOpponent", "()Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;", "getUnReadMsgCount", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatResponse {
    @m8.h
    private final ChatExpansionResponse chatExpansion;
    private final int chatType;
    @g
    private final String id;
    @m8.h
    private final String invitationLink;
    @m8.h
    private final MessageResponse lastMessage;
    @m8.h
    private final SyncMessageResponse lastSyncMessage;
    @m8.h
    private final ChatMemberResponse opponent;
    private final int unReadMsgCount;

    public ChatResponse(@com.squareup.moshi.g(name = "conv_id") @g String id, @com.squareup.moshi.g(name = "conv_type") int i4, @com.squareup.moshi.g(name = "msg_count") int i10, @com.squareup.moshi.g(name = "conv_expansion") @m8.h ChatExpansionResponse chatExpansionResponse, @com.squareup.moshi.g(name = "last_msg_info") @m8.h MessageResponse messageResponse, @com.squareup.moshi.g(name = "lastSyncMessage") @m8.h SyncMessageResponse syncMessageResponse, @com.squareup.moshi.g(name = "public_join_url") @m8.h String str, @com.squareup.moshi.g(name = "opponent") @m8.h ChatMemberResponse chatMemberResponse) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.id = id;
        this.chatType = i4;
        this.unReadMsgCount = i10;
        this.chatExpansion = chatExpansionResponse;
        this.lastMessage = messageResponse;
        this.lastSyncMessage = syncMessageResponse;
        this.invitationLink = str;
        this.opponent = chatMemberResponse;
    }

    @g
    public final String component1() {
        return this.id;
    }

    public final int component2() {
        return this.chatType;
    }

    public final int component3() {
        return this.unReadMsgCount;
    }

    @m8.h
    public final ChatExpansionResponse component4() {
        return this.chatExpansion;
    }

    @m8.h
    public final MessageResponse component5() {
        return this.lastMessage;
    }

    @m8.h
    public final SyncMessageResponse component6() {
        return this.lastSyncMessage;
    }

    @m8.h
    public final String component7() {
        return this.invitationLink;
    }

    @m8.h
    public final ChatMemberResponse component8() {
        return this.opponent;
    }

    @g
    public final ChatResponse copy(@com.squareup.moshi.g(name = "conv_id") @g String id, @com.squareup.moshi.g(name = "conv_type") int i4, @com.squareup.moshi.g(name = "msg_count") int i10, @com.squareup.moshi.g(name = "conv_expansion") @m8.h ChatExpansionResponse chatExpansionResponse, @com.squareup.moshi.g(name = "last_msg_info") @m8.h MessageResponse messageResponse, @com.squareup.moshi.g(name = "lastSyncMessage") @m8.h SyncMessageResponse syncMessageResponse, @com.squareup.moshi.g(name = "public_join_url") @m8.h String str, @com.squareup.moshi.g(name = "opponent") @m8.h ChatMemberResponse chatMemberResponse) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new ChatResponse(id, i4, i10, chatExpansionResponse, messageResponse, syncMessageResponse, str, chatMemberResponse);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatResponse) {
            ChatResponse chatResponse = (ChatResponse) obj;
            return Intrinsics.areEqual(this.id, chatResponse.id) && this.chatType == chatResponse.chatType && this.unReadMsgCount == chatResponse.unReadMsgCount && Intrinsics.areEqual(this.chatExpansion, chatResponse.chatExpansion) && Intrinsics.areEqual(this.lastMessage, chatResponse.lastMessage) && Intrinsics.areEqual(this.lastSyncMessage, chatResponse.lastSyncMessage) && Intrinsics.areEqual(this.invitationLink, chatResponse.invitationLink) && Intrinsics.areEqual(this.opponent, chatResponse.opponent);
        }
        return false;
    }

    @m8.h
    public final ChatExpansionResponse getChatExpansion() {
        return this.chatExpansion;
    }

    public final int getChatType() {
        return this.chatType;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @m8.h
    public final String getInvitationLink() {
        return this.invitationLink;
    }

    @m8.h
    public final MessageResponse getLastMessage() {
        return this.lastMessage;
    }

    @m8.h
    public final SyncMessageResponse getLastSyncMessage() {
        return this.lastSyncMessage;
    }

    @m8.h
    public final ChatMemberResponse getOpponent() {
        return this.opponent;
    }

    public final int getUnReadMsgCount() {
        return this.unReadMsgCount;
    }

    public int hashCode() {
        int hashCode = ((((this.id.hashCode() * 31) + this.chatType) * 31) + this.unReadMsgCount) * 31;
        ChatExpansionResponse chatExpansionResponse = this.chatExpansion;
        int hashCode2 = (hashCode + (chatExpansionResponse == null ? 0 : chatExpansionResponse.hashCode())) * 31;
        MessageResponse messageResponse = this.lastMessage;
        int hashCode3 = (hashCode2 + (messageResponse == null ? 0 : messageResponse.hashCode())) * 31;
        SyncMessageResponse syncMessageResponse = this.lastSyncMessage;
        int hashCode4 = (hashCode3 + (syncMessageResponse == null ? 0 : syncMessageResponse.hashCode())) * 31;
        String str = this.invitationLink;
        int hashCode5 = (hashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        ChatMemberResponse chatMemberResponse = this.opponent;
        return hashCode5 + (chatMemberResponse != null ? chatMemberResponse.hashCode() : 0);
    }

    @g
    public String toString() {
        return "ChatResponse(id=" + this.id + ", chatType=" + this.chatType + ", unReadMsgCount=" + this.unReadMsgCount + ", chatExpansion=" + this.chatExpansion + ", lastMessage=" + this.lastMessage + ", lastSyncMessage=" + this.lastSyncMessage + ", invitationLink=" + this.invitationLink + ", opponent=" + this.opponent + ')';
    }
}
