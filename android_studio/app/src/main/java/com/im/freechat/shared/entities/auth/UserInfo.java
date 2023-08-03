package com.im.freechat.shared.entities.auth;

import a5.a;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.contact.UserModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: UserInfo.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0011J\u0006\u0010 \u001a\u00020!J\t\u0010\"\u001a\u00020\u0003HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010$\u001a\u00020\u0005HÆ\u0003J\t\u0010%\u001a\u00020\u0005HÆ\u0003J\t\u0010&\u001a\u00020\u0005HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010)\u001a\u00020\u000bHÆ\u0003J\t\u0010*\u001a\u00020\rHÆ\u0003J\t\u0010+\u001a\u00020\u000fHÆ\u0003Js\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010-\u001a\u00020\r2\b\u0010.\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010/\u001a\u00020\u0003HÖ\u0001J\u0006\u00100\u001a\u00020\rJ\t\u00101\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0016R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001f¨\u00062"}, d2 = {"Lcom/im/freechat/shared/entities/auth/UserInfo;", "", "userId", "", "nickname", "", "token", "imToken", "avatar", "phoneNumber", "managementRole", "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "isMystery", "", "lastOnline", "", ContactResponseMapperKt.BIO, "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;ZJLjava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getBio", "getImToken", "()Z", "getLastOnline", "()J", "getManagementRole", "()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "getNickname", "getPhoneNumber", "getToken", "getUserId", "()I", "asContact", "Lcom/im/freechat/shared/entities/contact/UserModel;", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "isSuperUser", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserInfo {
    @h
    private final String avatar;
    @h
    private final String bio;
    @g
    private final String imToken;
    private final boolean isMystery;
    private final long lastOnline;
    @g
    private final ChatMember.ManagementRole managementRole;
    @g
    private final String nickname;
    @h
    private final String phoneNumber;
    @g
    private final String token;
    private final int userId;

    public UserInfo(int i4, @g String nickname, @g String token, @g String imToken, @h String str, @h String str2, @g ChatMember.ManagementRole managementRole, boolean z9, long j4, @h String str3) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(imToken, "imToken");
        Intrinsics.checkNotNullParameter(managementRole, "managementRole");
        this.userId = i4;
        this.nickname = nickname;
        this.token = token;
        this.imToken = imToken;
        this.avatar = str;
        this.phoneNumber = str2;
        this.managementRole = managementRole;
        this.isMystery = z9;
        this.lastOnline = j4;
        this.bio = str3;
    }

    @g
    public final UserModel asContact() {
        return new UserModel(this.nickname, this.avatar, this.userId, this.managementRole, null, false, true, false, this.lastOnline, this.bio, 128, null);
    }

    public final int component1() {
        return this.userId;
    }

    @h
    public final String component10() {
        return this.bio;
    }

    @g
    public final String component2() {
        return this.nickname;
    }

    @g
    public final String component3() {
        return this.token;
    }

    @g
    public final String component4() {
        return this.imToken;
    }

    @h
    public final String component5() {
        return this.avatar;
    }

    @h
    public final String component6() {
        return this.phoneNumber;
    }

    @g
    public final ChatMember.ManagementRole component7() {
        return this.managementRole;
    }

    public final boolean component8() {
        return this.isMystery;
    }

    public final long component9() {
        return this.lastOnline;
    }

    @g
    public final UserInfo copy(int i4, @g String nickname, @g String token, @g String imToken, @h String str, @h String str2, @g ChatMember.ManagementRole managementRole, boolean z9, long j4, @h String str3) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(imToken, "imToken");
        Intrinsics.checkNotNullParameter(managementRole, "managementRole");
        return new UserInfo(i4, nickname, token, imToken, str, str2, managementRole, z9, j4, str3);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserInfo) {
            UserInfo userInfo = (UserInfo) obj;
            return this.userId == userInfo.userId && Intrinsics.areEqual(this.nickname, userInfo.nickname) && Intrinsics.areEqual(this.token, userInfo.token) && Intrinsics.areEqual(this.imToken, userInfo.imToken) && Intrinsics.areEqual(this.avatar, userInfo.avatar) && Intrinsics.areEqual(this.phoneNumber, userInfo.phoneNumber) && this.managementRole == userInfo.managementRole && this.isMystery == userInfo.isMystery && this.lastOnline == userInfo.lastOnline && Intrinsics.areEqual(this.bio, userInfo.bio);
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    @h
    public final String getBio() {
        return this.bio;
    }

    @g
    public final String getImToken() {
        return this.imToken;
    }

    public final long getLastOnline() {
        return this.lastOnline;
    }

    @g
    public final ChatMember.ManagementRole getManagementRole() {
        return this.managementRole;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    @h
    public final String getPhoneNumber() {
        return this.phoneNumber;
    }

    @g
    public final String getToken() {
        return this.token;
    }

    public final int getUserId() {
        return this.userId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((this.userId * 31) + this.nickname.hashCode()) * 31) + this.token.hashCode()) * 31) + this.imToken.hashCode()) * 31;
        String str = this.avatar;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.phoneNumber;
        int hashCode3 = (((hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.managementRole.hashCode()) * 31;
        boolean z9 = this.isMystery;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        int a10 = (((hashCode3 + i4) * 31) + a.a(this.lastOnline)) * 31;
        String str3 = this.bio;
        return a10 + (str3 != null ? str3.hashCode() : 0);
    }

    public final boolean isMystery() {
        return this.isMystery;
    }

    public final boolean isSuperUser() {
        return this.managementRole.isSuperRole();
    }

    @g
    public String toString() {
        return "UserInfo(userId=" + this.userId + ", nickname=" + this.nickname + ", token=" + this.token + ", imToken=" + this.imToken + ", avatar=" + this.avatar + ", phoneNumber=" + this.phoneNumber + ", managementRole=" + this.managementRole + ", isMystery=" + this.isMystery + ", lastOnline=" + this.lastOnline + ", bio=" + this.bio + ')';
    }

    public /* synthetic */ UserInfo(int i4, String str, String str2, String str3, String str4, String str5, ChatMember.ManagementRole managementRole, boolean z9, long j4, String str6, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, str, str2, str3, str4, str5, (i10 & 64) != 0 ? ChatMember.ManagementRole.NORMAL : managementRole, z9, j4, (i10 & 512) != 0 ? null : str6);
    }
}
