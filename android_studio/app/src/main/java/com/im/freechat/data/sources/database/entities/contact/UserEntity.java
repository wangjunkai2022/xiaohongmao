package com.im.freechat.data.sources.database.entities.contact;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: UserEntity.kt */
@Entity(primaryKeys = {"user_id"}, tableName = "user")
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u001e\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u000fJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010!\u001a\u00020\nHÆ\u0003J\t\u0010\"\u001a\u00020\nHÆ\u0003J\u0010\u0010#\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u0015J\u000b\u0010$\u001a\u0004\u0018\u00010\u0005HÆ\u0003Jp\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010&J\u0013\u0010'\u001a\u00020\n2\b\u0010(\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010)\u001a\u00020\u0003HÖ\u0001J\t\u0010*\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0013R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0013R\u001a\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0018R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011¨\u0006+"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;", "", "userId", "", "nickname", "", "avatarUrl", "managementRole", "userNameMask", "isService", "", "isCurrentUser", "lastOnline", "", ContactResponseMapperKt.BIO, "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)V", "getAvatarUrl", "()Ljava/lang/String;", "getBio", "()Z", "getLastOnline", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getManagementRole", "()I", "getNickname", "getUserId", "getUserNameMask", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;", "equals", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UserEntity {
    @h
    @ColumnInfo(name = "avatar_url")
    private final String avatarUrl;
    @h
    @ColumnInfo(name = ContactResponseMapperKt.BIO)
    private final String bio;
    @ColumnInfo(name = "is_current")
    private final boolean isCurrentUser;
    @ColumnInfo(defaultValue = "0", name = "is_service")
    private final boolean isService;
    @h
    @ColumnInfo(name = "last_online")
    private final Long lastOnline;
    @ColumnInfo(name = "management_role")
    private final int managementRole;
    @g
    @ColumnInfo(name = "nickname")
    private final String nickname;
    @ColumnInfo(name = "user_id")
    private final int userId;
    @h
    @ColumnInfo(name = "user_name_mask")
    private final String userNameMask;

    public UserEntity(int i4, @g String nickname, @h String str, int i10, @h String str2, boolean z9, boolean z10, @h Long l10, @h String str3) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        this.userId = i4;
        this.nickname = nickname;
        this.avatarUrl = str;
        this.managementRole = i10;
        this.userNameMask = str2;
        this.isService = z9;
        this.isCurrentUser = z10;
        this.lastOnline = l10;
        this.bio = str3;
    }

    public final int component1() {
        return this.userId;
    }

    @g
    public final String component2() {
        return this.nickname;
    }

    @h
    public final String component3() {
        return this.avatarUrl;
    }

    public final int component4() {
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

    @h
    public final Long component8() {
        return this.lastOnline;
    }

    @h
    public final String component9() {
        return this.bio;
    }

    @g
    public final UserEntity copy(int i4, @g String nickname, @h String str, int i10, @h String str2, boolean z9, boolean z10, @h Long l10, @h String str3) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        return new UserEntity(i4, nickname, str, i10, str2, z9, z10, l10, str3);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserEntity) {
            UserEntity userEntity = (UserEntity) obj;
            return this.userId == userEntity.userId && Intrinsics.areEqual(this.nickname, userEntity.nickname) && Intrinsics.areEqual(this.avatarUrl, userEntity.avatarUrl) && this.managementRole == userEntity.managementRole && Intrinsics.areEqual(this.userNameMask, userEntity.userNameMask) && this.isService == userEntity.isService && this.isCurrentUser == userEntity.isCurrentUser && Intrinsics.areEqual(this.lastOnline, userEntity.lastOnline) && Intrinsics.areEqual(this.bio, userEntity.bio);
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
    public final Long getLastOnline() {
        return this.lastOnline;
    }

    public final int getManagementRole() {
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
        int hashCode = ((this.userId * 31) + this.nickname.hashCode()) * 31;
        String str = this.avatarUrl;
        int hashCode2 = (((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.managementRole) * 31;
        String str2 = this.userNameMask;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        boolean z9 = this.isService;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        int i10 = (hashCode3 + i4) * 31;
        boolean z10 = this.isCurrentUser;
        int i11 = (i10 + (z10 ? 1 : z10 ? 1 : 0)) * 31;
        Long l10 = this.lastOnline;
        int hashCode4 = (i11 + (l10 == null ? 0 : l10.hashCode())) * 31;
        String str3 = this.bio;
        return hashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final boolean isCurrentUser() {
        return this.isCurrentUser;
    }

    public final boolean isService() {
        return this.isService;
    }

    @g
    public String toString() {
        return "UserEntity(userId=" + this.userId + ", nickname=" + this.nickname + ", avatarUrl=" + this.avatarUrl + ", managementRole=" + this.managementRole + ", userNameMask=" + this.userNameMask + ", isService=" + this.isService + ", isCurrentUser=" + this.isCurrentUser + ", lastOnline=" + this.lastOnline + ", bio=" + this.bio + ')';
    }

    public /* synthetic */ UserEntity(int i4, String str, String str2, int i10, String str3, boolean z9, boolean z10, Long l10, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, str, str2, (i11 & 8) != 0 ? 0 : i10, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? false : z9, (i11 & 64) != 0 ? false : z10, l10, (i11 & 256) != 0 ? null : str4);
    }
}
