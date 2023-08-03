package com.im.freechat.data.sources.api.entities.chat;

import com.im.freechat.ui.create.choosemember.h;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0001\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J7\u0010\u0017\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\u000e\b\u0003\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00072\b\b\u0003\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/CreateChatRequest;", "", "userId", "", "targetUserIds", "", h.f43539c, "", "expansion", "Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansion;", "(ILjava/util/List;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansion;)V", "getChatType", "()Ljava/lang/String;", "getExpansion", "()Lcom/im/freechat/data/sources/api/entities/chat/ChatExpansion;", "getTargetUserIds", "()Ljava/util/List;", "getUserId", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class CreateChatRequest {
    @g
    private final String chatType;
    @g
    private final ChatExpansion expansion;
    @g
    private final List<Integer> targetUserIds;
    private final int userId;

    public CreateChatRequest(@com.squareup.moshi.g(name = "unique_name") int i4, @com.squareup.moshi.g(name = "to_unique_name") @g List<Integer> targetUserIds, @com.squareup.moshi.g(name = "conv_type") @g String chatType, @com.squareup.moshi.g(name = "conv_expansion") @g ChatExpansion expansion) {
        Intrinsics.checkNotNullParameter(targetUserIds, "targetUserIds");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Intrinsics.checkNotNullParameter(expansion, "expansion");
        this.userId = i4;
        this.targetUserIds = targetUserIds;
        this.chatType = chatType;
        this.expansion = expansion;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CreateChatRequest copy$default(CreateChatRequest createChatRequest, int i4, List list, String str, ChatExpansion chatExpansion, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = createChatRequest.userId;
        }
        if ((i10 & 2) != 0) {
            list = createChatRequest.targetUserIds;
        }
        if ((i10 & 4) != 0) {
            str = createChatRequest.chatType;
        }
        if ((i10 & 8) != 0) {
            chatExpansion = createChatRequest.expansion;
        }
        return createChatRequest.copy(i4, list, str, chatExpansion);
    }

    public final int component1() {
        return this.userId;
    }

    @g
    public final List<Integer> component2() {
        return this.targetUserIds;
    }

    @g
    public final String component3() {
        return this.chatType;
    }

    @g
    public final ChatExpansion component4() {
        return this.expansion;
    }

    @g
    public final CreateChatRequest copy(@com.squareup.moshi.g(name = "unique_name") int i4, @com.squareup.moshi.g(name = "to_unique_name") @g List<Integer> targetUserIds, @com.squareup.moshi.g(name = "conv_type") @g String chatType, @com.squareup.moshi.g(name = "conv_expansion") @g ChatExpansion expansion) {
        Intrinsics.checkNotNullParameter(targetUserIds, "targetUserIds");
        Intrinsics.checkNotNullParameter(chatType, "chatType");
        Intrinsics.checkNotNullParameter(expansion, "expansion");
        return new CreateChatRequest(i4, targetUserIds, chatType, expansion);
    }

    public boolean equals(@m8.h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CreateChatRequest) {
            CreateChatRequest createChatRequest = (CreateChatRequest) obj;
            return this.userId == createChatRequest.userId && Intrinsics.areEqual(this.targetUserIds, createChatRequest.targetUserIds) && Intrinsics.areEqual(this.chatType, createChatRequest.chatType) && Intrinsics.areEqual(this.expansion, createChatRequest.expansion);
        }
        return false;
    }

    @g
    public final String getChatType() {
        return this.chatType;
    }

    @g
    public final ChatExpansion getExpansion() {
        return this.expansion;
    }

    @g
    public final List<Integer> getTargetUserIds() {
        return this.targetUserIds;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (((((this.userId * 31) + this.targetUserIds.hashCode()) * 31) + this.chatType.hashCode()) * 31) + this.expansion.hashCode();
    }

    @g
    public String toString() {
        return "CreateChatRequest(userId=" + this.userId + ", targetUserIds=" + this.targetUserIds + ", chatType=" + this.chatType + ", expansion=" + this.expansion + ')';
    }
}
