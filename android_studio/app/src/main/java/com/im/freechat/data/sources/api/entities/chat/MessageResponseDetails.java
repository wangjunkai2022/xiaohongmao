package com.im.freechat.data.sources.api.entities.chat;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0001\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u0010\u0019\u001a\u00020\nHÆ\u0003J?\u0010\u001a\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00052\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0003\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006 "}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;", "", "systemMessageType", "", "eventType", "", "senderId", "userExpansion", "Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;", "contentDetails", "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;", "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;)V", "getContentDetails", "()Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;", "getEventType", "()Ljava/lang/String;", "getSenderId", "getSystemMessageType", "()I", "getUserExpansion", "()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageResponseDetails {
    @g
    private final MessageResponseInfo contentDetails;
    @h
    private final String eventType;
    @g
    private final String senderId;
    private final int systemMessageType;
    @h
    private final UserExpansionInfo userExpansion;

    public MessageResponseDetails(@com.squareup.moshi.g(name = "msg_type") int i4, @com.squareup.moshi.g(name = "event_type") @h String str, @com.squareup.moshi.g(name = "from_user_unique_name") @g String senderId, @com.squareup.moshi.g(name = "from_user_expansion") @h UserExpansionInfo userExpansionInfo, @com.squareup.moshi.g(name = "message") @g MessageResponseInfo contentDetails) {
        Intrinsics.checkNotNullParameter(senderId, "senderId");
        Intrinsics.checkNotNullParameter(contentDetails, "contentDetails");
        this.systemMessageType = i4;
        this.eventType = str;
        this.senderId = senderId;
        this.userExpansion = userExpansionInfo;
        this.contentDetails = contentDetails;
    }

    public static /* synthetic */ MessageResponseDetails copy$default(MessageResponseDetails messageResponseDetails, int i4, String str, String str2, UserExpansionInfo userExpansionInfo, MessageResponseInfo messageResponseInfo, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = messageResponseDetails.systemMessageType;
        }
        if ((i10 & 2) != 0) {
            str = messageResponseDetails.eventType;
        }
        String str3 = str;
        if ((i10 & 4) != 0) {
            str2 = messageResponseDetails.senderId;
        }
        String str4 = str2;
        if ((i10 & 8) != 0) {
            userExpansionInfo = messageResponseDetails.userExpansion;
        }
        UserExpansionInfo userExpansionInfo2 = userExpansionInfo;
        if ((i10 & 16) != 0) {
            messageResponseInfo = messageResponseDetails.contentDetails;
        }
        return messageResponseDetails.copy(i4, str3, str4, userExpansionInfo2, messageResponseInfo);
    }

    public final int component1() {
        return this.systemMessageType;
    }

    @h
    public final String component2() {
        return this.eventType;
    }

    @g
    public final String component3() {
        return this.senderId;
    }

    @h
    public final UserExpansionInfo component4() {
        return this.userExpansion;
    }

    @g
    public final MessageResponseInfo component5() {
        return this.contentDetails;
    }

    @g
    public final MessageResponseDetails copy(@com.squareup.moshi.g(name = "msg_type") int i4, @com.squareup.moshi.g(name = "event_type") @h String str, @com.squareup.moshi.g(name = "from_user_unique_name") @g String senderId, @com.squareup.moshi.g(name = "from_user_expansion") @h UserExpansionInfo userExpansionInfo, @com.squareup.moshi.g(name = "message") @g MessageResponseInfo contentDetails) {
        Intrinsics.checkNotNullParameter(senderId, "senderId");
        Intrinsics.checkNotNullParameter(contentDetails, "contentDetails");
        return new MessageResponseDetails(i4, str, senderId, userExpansionInfo, contentDetails);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageResponseDetails) {
            MessageResponseDetails messageResponseDetails = (MessageResponseDetails) obj;
            return this.systemMessageType == messageResponseDetails.systemMessageType && Intrinsics.areEqual(this.eventType, messageResponseDetails.eventType) && Intrinsics.areEqual(this.senderId, messageResponseDetails.senderId) && Intrinsics.areEqual(this.userExpansion, messageResponseDetails.userExpansion) && Intrinsics.areEqual(this.contentDetails, messageResponseDetails.contentDetails);
        }
        return false;
    }

    @g
    public final MessageResponseInfo getContentDetails() {
        return this.contentDetails;
    }

    @h
    public final String getEventType() {
        return this.eventType;
    }

    @g
    public final String getSenderId() {
        return this.senderId;
    }

    public final int getSystemMessageType() {
        return this.systemMessageType;
    }

    @h
    public final UserExpansionInfo getUserExpansion() {
        return this.userExpansion;
    }

    public int hashCode() {
        int i4 = this.systemMessageType * 31;
        String str = this.eventType;
        int hashCode = (((i4 + (str == null ? 0 : str.hashCode())) * 31) + this.senderId.hashCode()) * 31;
        UserExpansionInfo userExpansionInfo = this.userExpansion;
        return ((hashCode + (userExpansionInfo != null ? userExpansionInfo.hashCode() : 0)) * 31) + this.contentDetails.hashCode();
    }

    @g
    public String toString() {
        return "MessageResponseDetails(systemMessageType=" + this.systemMessageType + ", eventType=" + this.eventType + ", senderId=" + this.senderId + ", userExpansion=" + this.userExpansion + ", contentDetails=" + this.contentDetails + ')';
    }
}
