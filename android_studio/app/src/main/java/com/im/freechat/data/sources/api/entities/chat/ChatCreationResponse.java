package com.im.freechat.data.sources.api.entities.chat;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t\u0012\b\b\u0001\u0010\n\u001a\u00020\u000b\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010\u001d\u001a\u00020\u000bHÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003JO\u0010\u001f\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\u000e\b\u0003\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\b\b\u0003\u0010\u0007\u001a\u00020\u00062\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0003\u0010\n\u001a\u00020\u000b2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\u000bHÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006%"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/ChatCreationResponse;", "", "id", "", "chatMemberResponses", "", "Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;", "chatCreatorInfo", "chatExpansion", "Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansionResponse;", "userNum", "", "invitationLink", "(Ljava/lang/String;Ljava/util/List;Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansionResponse;ILjava/lang/String;)V", "getChatCreatorInfo", "()Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;", "getChatExpansion", "()Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansionResponse;", "getChatMemberResponses", "()Ljava/util/List;", "getId", "()Ljava/lang/String;", "getInvitationLink", "getUserNum", "()I", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatCreationResponse {
    @g
    private final ChatMemberResponse chatCreatorInfo;
    @h
    private final ChatExpansionResponse chatExpansion;
    @g
    private final List<ChatMemberResponse> chatMemberResponses;
    @g
    private final String id;
    @h
    private final String invitationLink;
    private final int userNum;

    public ChatCreationResponse(@com.squareup.moshi.g(name = "conv_id") @g String id, @com.squareup.moshi.g(name = "conv_user_info") @g List<ChatMemberResponse> chatMemberResponses, @com.squareup.moshi.g(name = "conv_creater_info") @g ChatMemberResponse chatCreatorInfo, @com.squareup.moshi.g(name = "conv_expansion") @h ChatExpansionResponse chatExpansionResponse, @com.squareup.moshi.g(name = "user_num") int i4, @com.squareup.moshi.g(name = "public_join_url") @h String str) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(chatMemberResponses, "chatMemberResponses");
        Intrinsics.checkNotNullParameter(chatCreatorInfo, "chatCreatorInfo");
        this.id = id;
        this.chatMemberResponses = chatMemberResponses;
        this.chatCreatorInfo = chatCreatorInfo;
        this.chatExpansion = chatExpansionResponse;
        this.userNum = i4;
        this.invitationLink = str;
    }

    public static /* synthetic */ ChatCreationResponse copy$default(ChatCreationResponse chatCreationResponse, String str, List list, ChatMemberResponse chatMemberResponse, ChatExpansionResponse chatExpansionResponse, int i4, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = chatCreationResponse.id;
        }
        List<ChatMemberResponse> list2 = list;
        if ((i10 & 2) != 0) {
            list2 = chatCreationResponse.chatMemberResponses;
        }
        List list3 = list2;
        if ((i10 & 4) != 0) {
            chatMemberResponse = chatCreationResponse.chatCreatorInfo;
        }
        ChatMemberResponse chatMemberResponse2 = chatMemberResponse;
        if ((i10 & 8) != 0) {
            chatExpansionResponse = chatCreationResponse.chatExpansion;
        }
        ChatExpansionResponse chatExpansionResponse2 = chatExpansionResponse;
        if ((i10 & 16) != 0) {
            i4 = chatCreationResponse.userNum;
        }
        int i11 = i4;
        if ((i10 & 32) != 0) {
            str2 = chatCreationResponse.invitationLink;
        }
        return chatCreationResponse.copy(str, list3, chatMemberResponse2, chatExpansionResponse2, i11, str2);
    }

    @g
    public final String component1() {
        return this.id;
    }

    @g
    public final List<ChatMemberResponse> component2() {
        return this.chatMemberResponses;
    }

    @g
    public final ChatMemberResponse component3() {
        return this.chatCreatorInfo;
    }

    @h
    public final ChatExpansionResponse component4() {
        return this.chatExpansion;
    }

    public final int component5() {
        return this.userNum;
    }

    @h
    public final String component6() {
        return this.invitationLink;
    }

    @g
    public final ChatCreationResponse copy(@com.squareup.moshi.g(name = "conv_id") @g String id, @com.squareup.moshi.g(name = "conv_user_info") @g List<ChatMemberResponse> chatMemberResponses, @com.squareup.moshi.g(name = "conv_creater_info") @g ChatMemberResponse chatCreatorInfo, @com.squareup.moshi.g(name = "conv_expansion") @h ChatExpansionResponse chatExpansionResponse, @com.squareup.moshi.g(name = "user_num") int i4, @com.squareup.moshi.g(name = "public_join_url") @h String str) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(chatMemberResponses, "chatMemberResponses");
        Intrinsics.checkNotNullParameter(chatCreatorInfo, "chatCreatorInfo");
        return new ChatCreationResponse(id, chatMemberResponses, chatCreatorInfo, chatExpansionResponse, i4, str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatCreationResponse) {
            ChatCreationResponse chatCreationResponse = (ChatCreationResponse) obj;
            return Intrinsics.areEqual(this.id, chatCreationResponse.id) && Intrinsics.areEqual(this.chatMemberResponses, chatCreationResponse.chatMemberResponses) && Intrinsics.areEqual(this.chatCreatorInfo, chatCreationResponse.chatCreatorInfo) && Intrinsics.areEqual(this.chatExpansion, chatCreationResponse.chatExpansion) && this.userNum == chatCreationResponse.userNum && Intrinsics.areEqual(this.invitationLink, chatCreationResponse.invitationLink);
        }
        return false;
    }

    @g
    public final ChatMemberResponse getChatCreatorInfo() {
        return this.chatCreatorInfo;
    }

    @h
    public final ChatExpansionResponse getChatExpansion() {
        return this.chatExpansion;
    }

    @g
    public final List<ChatMemberResponse> getChatMemberResponses() {
        return this.chatMemberResponses;
    }

    @g
    public final String getId() {
        return this.id;
    }

    @h
    public final String getInvitationLink() {
        return this.invitationLink;
    }

    public final int getUserNum() {
        return this.userNum;
    }

    public int hashCode() {
        int hashCode = ((((this.id.hashCode() * 31) + this.chatMemberResponses.hashCode()) * 31) + this.chatCreatorInfo.hashCode()) * 31;
        ChatExpansionResponse chatExpansionResponse = this.chatExpansion;
        int hashCode2 = (((hashCode + (chatExpansionResponse == null ? 0 : chatExpansionResponse.hashCode())) * 31) + this.userNum) * 31;
        String str = this.invitationLink;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    @g
    public String toString() {
        return "ChatCreationResponse(id=" + this.id + ", chatMemberResponses=" + this.chatMemberResponses + ", chatCreatorInfo=" + this.chatCreatorInfo + ", chatExpansion=" + this.chatExpansion + ", userNum=" + this.userNum + ", invitationLink=" + this.invitationLink + ')';
    }
}
