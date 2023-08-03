package com.im.freechat.shared.entities.contact;

import a5.a;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.im.freechat.shared.entities.chat.ChatMember;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import m8.g;
import m8.h;

/* compiled from: UserModel.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u001d\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0086\b\u0018\u0000 12\u00020\u0001:\u00011B]\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0011J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0006HÆ\u0003J\t\u0010\"\u001a\u00020\bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u000bHÆ\u0003J\t\u0010%\u001a\u00020\u000bHÆ\u0003J\t\u0010&\u001a\u00020\u000bHÆ\u0003J\t\u0010'\u001a\u00020\u000fHÆ\u0003J\u000e\u0010(\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u0003Js\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010+\u001a\u00020\u000b2\b\u0010,\u001a\u0004\u0018\u00010-HÖ\u0003J\u0006\u0010.\u001a\u00020\u0003J\t\u0010/\u001a\u00020\u0006HÖ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0015R\u0011\u0010\r\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0015R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0013¨\u00062"}, d2 = {"Lcom/im/freechat/shared/entities/contact/UserModel;", "Ljava/io/Serializable;", "nickname", "", "avatar", "userId", "", "managementRole", "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "userNameMask", "isService", "", "isCurrentUser", "isGlobalSearch", "lastOnline", "", ContactResponseMapperKt.BIO, "(Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Ljava/lang/String;ZZZJLjava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getBio", "()Z", "getLastOnline", "()J", "getManagementRole", "()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "getNickname", "getUserId", "()I", "getUserNameMask", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "contains", "filter", "copy", "equals", "other", "", "getDisplayName", "hashCode", "toString", "Companion", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserModel implements Serializable {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final String SERVICE_AVATAR = "";
    @g
    public static final String SERVICE_NAME = "Service";
    public static final int SERVICE_USER_ID = 1;
    @h
    private final String avatar;
    @h
    private final String bio;
    private final boolean isCurrentUser;
    private final boolean isGlobalSearch;
    private final boolean isService;
    private final long lastOnline;
    @g
    private final ChatMember.ManagementRole managementRole;
    @g
    private final String nickname;
    private final int userId;
    @h
    private final String userNameMask;

    /* compiled from: UserModel.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/im/freechat/shared/entities/contact/UserModel$Companion;", "", "()V", "SERVICE_AVATAR", "", "SERVICE_NAME", "SERVICE_USER_ID", "", "serviceContact", "Lcom/im/freechat/shared/entities/contact/UserModel;", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final UserModel serviceContact() {
            return new UserModel(UserModel.SERVICE_NAME, "", 1, ChatMember.ManagementRole.NORMAL, UserModel.SERVICE_NAME, true, false, false, 0L, null);
        }
    }

    public UserModel(@g String nickname, @h String str, int i4, @g ChatMember.ManagementRole managementRole, @h String str2, boolean z9, boolean z10, boolean z11, long j4, @h String str3) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(managementRole, "managementRole");
        this.nickname = nickname;
        this.avatar = str;
        this.userId = i4;
        this.managementRole = managementRole;
        this.userNameMask = str2;
        this.isService = z9;
        this.isCurrentUser = z10;
        this.isGlobalSearch = z11;
        this.lastOnline = j4;
        this.bio = str3;
    }

    @g
    public final String component1() {
        return this.nickname;
    }

    @h
    public final String component10() {
        return this.bio;
    }

    @h
    public final String component2() {
        return this.avatar;
    }

    public final int component3() {
        return this.userId;
    }

    @g
    public final ChatMember.ManagementRole component4() {
        return this.managementRole;
    }

    @h
    public final String component5() {
        return this.userNameMask;
    }

    public final boolean component6() {
        return this.isService;
    }

    public final boolean component7() {
        return this.isCurrentUser;
    }

    public final boolean component8() {
        return this.isGlobalSearch;
    }

    public final long component9() {
        return this.lastOnline;
    }

    public final boolean contains(@g String filter) {
        Intrinsics.checkNotNullParameter(filter, "filter");
        if (StringsKt.contains((CharSequence) String.valueOf(this.userId), (CharSequence) filter, true)) {
            return true;
        }
        String str = this.userNameMask;
        return (str != null && StringsKt.contains((CharSequence) str, (CharSequence) filter, true)) || StringsKt.contains((CharSequence) this.nickname, (CharSequence) filter, true);
    }

    @g
    public final UserModel copy(@g String nickname, @h String str, int i4, @g ChatMember.ManagementRole managementRole, @h String str2, boolean z9, boolean z10, boolean z11, long j4, @h String str3) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(managementRole, "managementRole");
        return new UserModel(nickname, str, i4, managementRole, str2, z9, z10, z11, j4, str3);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserModel) {
            UserModel userModel = (UserModel) obj;
            return Intrinsics.areEqual(this.nickname, userModel.nickname) && Intrinsics.areEqual(this.avatar, userModel.avatar) && this.userId == userModel.userId && this.managementRole == userModel.managementRole && Intrinsics.areEqual(this.userNameMask, userModel.userNameMask) && this.isService == userModel.isService && this.isCurrentUser == userModel.isCurrentUser && this.isGlobalSearch == userModel.isGlobalSearch && this.lastOnline == userModel.lastOnline && Intrinsics.areEqual(this.bio, userModel.bio);
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
    public final String getDisplayName() {
        String str = this.userNameMask;
        return str == null ? this.nickname : str;
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

    public final int getUserId() {
        return this.userId;
    }

    @h
    public final String getUserNameMask() {
        return this.userNameMask;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.nickname.hashCode() * 31;
        String str = this.avatar;
        int hashCode2 = (((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.userId) * 31) + this.managementRole.hashCode()) * 31;
        String str2 = this.userNameMask;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        boolean z9 = this.isService;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        int i10 = (hashCode3 + i4) * 31;
        boolean z10 = this.isCurrentUser;
        int i11 = z10;
        if (z10 != 0) {
            i11 = 1;
        }
        int i12 = (i10 + i11) * 31;
        boolean z11 = this.isGlobalSearch;
        int a10 = (((i12 + (z11 ? 1 : z11 ? 1 : 0)) * 31) + a.a(this.lastOnline)) * 31;
        String str3 = this.bio;
        return a10 + (str3 != null ? str3.hashCode() : 0);
    }

    public final boolean isCurrentUser() {
        return this.isCurrentUser;
    }

    public final boolean isGlobalSearch() {
        return this.isGlobalSearch;
    }

    public final boolean isService() {
        return this.isService;
    }

    @g
    public String toString() {
        return "UserModel(nickname=" + this.nickname + ", avatar=" + this.avatar + ", userId=" + this.userId + ", managementRole=" + this.managementRole + ", userNameMask=" + this.userNameMask + ", isService=" + this.isService + ", isCurrentUser=" + this.isCurrentUser + ", isGlobalSearch=" + this.isGlobalSearch + ", lastOnline=" + this.lastOnline + ", bio=" + this.bio + ')';
    }

    public /* synthetic */ UserModel(String str, String str2, int i4, ChatMember.ManagementRole managementRole, String str3, boolean z9, boolean z10, boolean z11, long j4, String str4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, i4, managementRole, str3, z9, z10, (i10 & 128) != 0 ? false : z11, j4, str4);
    }
}
