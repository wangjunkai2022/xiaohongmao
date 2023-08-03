package com.im.freechat.data.sources.api.entities.chat;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J+\u0010\u000e\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/ChatRequestUser;", "", "userId", "", "nickname", "avatarUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAvatarUrl", "()Ljava/lang/String;", "getNickname", "getUserId", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatRequestUser {
    @h
    private final String avatarUrl;
    @h
    private final String nickname;
    @g
    private final String userId;

    public ChatRequestUser(@com.squareup.moshi.g(name = "unique_name") @g String userId, @com.squareup.moshi.g(name = "nickname") @h String str, @com.squareup.moshi.g(name = "avatar") @h String str2) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        this.nickname = str;
        this.avatarUrl = str2;
    }

    public static /* synthetic */ ChatRequestUser copy$default(ChatRequestUser chatRequestUser, String str, String str2, String str3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = chatRequestUser.userId;
        }
        if ((i4 & 2) != 0) {
            str2 = chatRequestUser.nickname;
        }
        if ((i4 & 4) != 0) {
            str3 = chatRequestUser.avatarUrl;
        }
        return chatRequestUser.copy(str, str2, str3);
    }

    @g
    public final String component1() {
        return this.userId;
    }

    @h
    public final String component2() {
        return this.nickname;
    }

    @h
    public final String component3() {
        return this.avatarUrl;
    }

    @g
    public final ChatRequestUser copy(@com.squareup.moshi.g(name = "unique_name") @g String userId, @com.squareup.moshi.g(name = "nickname") @h String str, @com.squareup.moshi.g(name = "avatar") @h String str2) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        return new ChatRequestUser(userId, str, str2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatRequestUser) {
            ChatRequestUser chatRequestUser = (ChatRequestUser) obj;
            return Intrinsics.areEqual(this.userId, chatRequestUser.userId) && Intrinsics.areEqual(this.nickname, chatRequestUser.nickname) && Intrinsics.areEqual(this.avatarUrl, chatRequestUser.avatarUrl);
        }
        return false;
    }

    @h
    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    @h
    public final String getNickname() {
        return this.nickname;
    }

    @g
    public final String getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = this.userId.hashCode() * 31;
        String str = this.nickname;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.avatarUrl;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @g
    public String toString() {
        return "ChatRequestUser(userId=" + this.userId + ", nickname=" + this.nickname + ", avatarUrl=" + this.avatarUrl + ')';
    }
}
