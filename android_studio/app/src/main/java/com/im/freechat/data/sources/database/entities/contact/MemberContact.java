package com.im.freechat.data.sources.database.entities.contact;

import androidx.room.ColumnInfo;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: UserEntity.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\r\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0011R\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;", "", "userId", "", "nickname", "", "avatarUrl", "managementRole", "isCurrentUser", "", "lastOnline", "", ContactResponseMapperKt.BIO, "(ILjava/lang/String;Ljava/lang/String;IZJLjava/lang/String;)V", "getAvatarUrl", "()Ljava/lang/String;", "getBio", "()Z", "getLastOnline", "()J", "getManagementRole", "()I", "getNickname", "getUserId", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MemberContact {
    @h
    @ColumnInfo(name = "avatar_url")
    private final String avatarUrl;
    @h
    @ColumnInfo(name = ContactResponseMapperKt.BIO)
    private final String bio;
    @ColumnInfo(name = "is_current")
    private final boolean isCurrentUser;
    @ColumnInfo(name = "last_online")
    private final long lastOnline;
    @ColumnInfo(name = "management_role")
    private final int managementRole;
    @g
    @ColumnInfo(name = "nickname")
    private final String nickname;
    @ColumnInfo(name = "user_id")
    private final int userId;

    public MemberContact(int i4, @g String nickname, @h String str, int i10, boolean z9, long j4, @h String str2) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        this.userId = i4;
        this.nickname = nickname;
        this.avatarUrl = str;
        this.managementRole = i10;
        this.isCurrentUser = z9;
        this.lastOnline = j4;
        this.bio = str2;
    }

    @h
    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    @h
    public final String getBio() {
        return this.bio;
    }

    public final long getLastOnline() {
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

    public final boolean isCurrentUser() {
        return this.isCurrentUser;
    }
}
