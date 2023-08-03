package com.im.freechat.data.sources.database.entities.contact;

import androidx.room.ColumnInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: UserEntity.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u000eR\u0016\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\rR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\r¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;", "", "userId", "", "nickname", "", "avatarUrl", "managementRole", "userNameMask", "isCurrentUser", "", "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V", "getAvatarUrl", "()Ljava/lang/String;", "()Z", "getManagementRole", "()I", "getNickname", "getUserId", "getUserNameMask", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SenderEntity {
    @h
    @ColumnInfo(name = "avatar_url")
    private final String avatarUrl;
    @ColumnInfo(name = "is_current")
    private final boolean isCurrentUser;
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

    public SenderEntity(int i4, @g String nickname, @h String str, int i10, @h String str2, boolean z9) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        this.userId = i4;
        this.nickname = nickname;
        this.avatarUrl = str;
        this.managementRole = i10;
        this.userNameMask = str2;
        this.isCurrentUser = z9;
    }

    @h
    public final String getAvatarUrl() {
        return this.avatarUrl;
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

    public final boolean isCurrentUser() {
        return this.isCurrentUser;
    }
}
