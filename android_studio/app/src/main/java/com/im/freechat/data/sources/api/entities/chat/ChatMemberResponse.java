package com.im.freechat.data.sources.api.entities.chat;

import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\nJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u000eJJ\u0010\u0019\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0007HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0010\u0010\u000eR\u0015\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0011\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;", "", "userId", "", "expansion", "Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;", "role", "", "status", "managementRole", "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", "getExpansion", "()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;", "getManagementRole", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getRole", "getStatus", "getUserId", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatMemberResponse {
    @h
    private final UserExpansionInfo expansion;
    @h
    private final Integer managementRole;
    @h
    private final Integer role;
    @h
    private final Integer status;
    @h
    private final String userId;

    public ChatMemberResponse(@g(name = "unique_name") @h String str, @g(name = "expansion") @h UserExpansionInfo userExpansionInfo, @g(name = "role") @h Integer num, @g(name = "status") @h Integer num2, @g(name = "management_role") @h Integer num3) {
        this.userId = str;
        this.expansion = userExpansionInfo;
        this.role = num;
        this.status = num2;
        this.managementRole = num3;
    }

    public static /* synthetic */ ChatMemberResponse copy$default(ChatMemberResponse chatMemberResponse, String str, UserExpansionInfo userExpansionInfo, Integer num, Integer num2, Integer num3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = chatMemberResponse.userId;
        }
        if ((i4 & 2) != 0) {
            userExpansionInfo = chatMemberResponse.expansion;
        }
        UserExpansionInfo userExpansionInfo2 = userExpansionInfo;
        if ((i4 & 4) != 0) {
            num = chatMemberResponse.role;
        }
        Integer num4 = num;
        if ((i4 & 8) != 0) {
            num2 = chatMemberResponse.status;
        }
        Integer num5 = num2;
        if ((i4 & 16) != 0) {
            num3 = chatMemberResponse.managementRole;
        }
        return chatMemberResponse.copy(str, userExpansionInfo2, num4, num5, num3);
    }

    @h
    public final String component1() {
        return this.userId;
    }

    @h
    public final UserExpansionInfo component2() {
        return this.expansion;
    }

    @h
    public final Integer component3() {
        return this.role;
    }

    @h
    public final Integer component4() {
        return this.status;
    }

    @h
    public final Integer component5() {
        return this.managementRole;
    }

    @m8.g
    public final ChatMemberResponse copy(@g(name = "unique_name") @h String str, @g(name = "expansion") @h UserExpansionInfo userExpansionInfo, @g(name = "role") @h Integer num, @g(name = "status") @h Integer num2, @g(name = "management_role") @h Integer num3) {
        return new ChatMemberResponse(str, userExpansionInfo, num, num2, num3);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatMemberResponse) {
            ChatMemberResponse chatMemberResponse = (ChatMemberResponse) obj;
            return Intrinsics.areEqual(this.userId, chatMemberResponse.userId) && Intrinsics.areEqual(this.expansion, chatMemberResponse.expansion) && Intrinsics.areEqual(this.role, chatMemberResponse.role) && Intrinsics.areEqual(this.status, chatMemberResponse.status) && Intrinsics.areEqual(this.managementRole, chatMemberResponse.managementRole);
        }
        return false;
    }

    @h
    public final UserExpansionInfo getExpansion() {
        return this.expansion;
    }

    @h
    public final Integer getManagementRole() {
        return this.managementRole;
    }

    @h
    public final Integer getRole() {
        return this.role;
    }

    @h
    public final Integer getStatus() {
        return this.status;
    }

    @h
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        String str = this.userId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        UserExpansionInfo userExpansionInfo = this.expansion;
        int hashCode2 = (hashCode + (userExpansionInfo == null ? 0 : userExpansionInfo.hashCode())) * 31;
        Integer num = this.role;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.status;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.managementRole;
        return hashCode4 + (num3 != null ? num3.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "ChatMemberResponse(userId=" + this.userId + ", expansion=" + this.expansion + ", role=" + this.role + ", status=" + this.status + ", managementRole=" + this.managementRole + ')';
    }
}
