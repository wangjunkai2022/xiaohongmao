package com.im.freechat.data.sources.api.entities.chat;

import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BM\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0018\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u000eJV\u0010\u0019\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\b\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\f¨\u0006 "}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;", "", "name", "", "nickname", "avatarUrl", "pinnedChatTime", ContactResponseMapperKt.BIO, "isMystery", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V", "getAvatarUrl", "()Ljava/lang/String;", "getBio", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "getName", "getNickname", "getPinnedChatTime", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;", "equals", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UserExpansionInfo {
    @h
    private final String avatarUrl;
    @h
    private final String bio;
    @h
    private final Boolean isMystery;
    @h
    private final String name;
    @h
    private final String nickname;
    @h
    private final String pinnedChatTime;

    public UserExpansionInfo(@g(name = "name") @h String str, @g(name = "nickname") @h String str2, @g(name = "avatarUrl") @h String str3, @g(name = "pinned_chat_time") @h String str4, @g(name = "bio") @h String str5, @g(name = "is_mystery") @h Boolean bool) {
        this.name = str;
        this.nickname = str2;
        this.avatarUrl = str3;
        this.pinnedChatTime = str4;
        this.bio = str5;
        this.isMystery = bool;
    }

    public static /* synthetic */ UserExpansionInfo copy$default(UserExpansionInfo userExpansionInfo, String str, String str2, String str3, String str4, String str5, Boolean bool, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = userExpansionInfo.name;
        }
        if ((i4 & 2) != 0) {
            str2 = userExpansionInfo.nickname;
        }
        String str6 = str2;
        if ((i4 & 4) != 0) {
            str3 = userExpansionInfo.avatarUrl;
        }
        String str7 = str3;
        if ((i4 & 8) != 0) {
            str4 = userExpansionInfo.pinnedChatTime;
        }
        String str8 = str4;
        if ((i4 & 16) != 0) {
            str5 = userExpansionInfo.bio;
        }
        String str9 = str5;
        if ((i4 & 32) != 0) {
            bool = userExpansionInfo.isMystery;
        }
        return userExpansionInfo.copy(str, str6, str7, str8, str9, bool);
    }

    @h
    public final String component1() {
        return this.name;
    }

    @h
    public final String component2() {
        return this.nickname;
    }

    @h
    public final String component3() {
        return this.avatarUrl;
    }

    @h
    public final String component4() {
        return this.pinnedChatTime;
    }

    @h
    public final String component5() {
        return this.bio;
    }

    @h
    public final Boolean component6() {
        return this.isMystery;
    }

    @m8.g
    public final UserExpansionInfo copy(@g(name = "name") @h String str, @g(name = "nickname") @h String str2, @g(name = "avatarUrl") @h String str3, @g(name = "pinned_chat_time") @h String str4, @g(name = "bio") @h String str5, @g(name = "is_mystery") @h Boolean bool) {
        return new UserExpansionInfo(str, str2, str3, str4, str5, bool);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserExpansionInfo) {
            UserExpansionInfo userExpansionInfo = (UserExpansionInfo) obj;
            return Intrinsics.areEqual(this.name, userExpansionInfo.name) && Intrinsics.areEqual(this.nickname, userExpansionInfo.nickname) && Intrinsics.areEqual(this.avatarUrl, userExpansionInfo.avatarUrl) && Intrinsics.areEqual(this.pinnedChatTime, userExpansionInfo.pinnedChatTime) && Intrinsics.areEqual(this.bio, userExpansionInfo.bio) && Intrinsics.areEqual(this.isMystery, userExpansionInfo.isMystery);
        }
        return false;
    }

    @h
    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    @h
    public final String getBio() {
        return this.bio;
    }

    @h
    public final String getName() {
        return this.name;
    }

    @h
    public final String getNickname() {
        return this.nickname;
    }

    @h
    public final String getPinnedChatTime() {
        return this.pinnedChatTime;
    }

    public int hashCode() {
        String str = this.name;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.nickname;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.avatarUrl;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.pinnedChatTime;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.bio;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Boolean bool = this.isMystery;
        return hashCode5 + (bool != null ? bool.hashCode() : 0);
    }

    @h
    public final Boolean isMystery() {
        return this.isMystery;
    }

    @m8.g
    public String toString() {
        return "UserExpansionInfo(name=" + this.name + ", nickname=" + this.nickname + ", avatarUrl=" + this.avatarUrl + ", pinnedChatTime=" + this.pinnedChatTime + ", bio=" + this.bio + ", isMystery=" + this.isMystery + ')';
    }
}
