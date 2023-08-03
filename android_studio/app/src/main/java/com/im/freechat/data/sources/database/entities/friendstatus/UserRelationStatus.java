package com.im.freechat.data.sources.database.entities.friendstatus;

import androidx.room.Embedded;
import com.im.freechat.data.sources.database.entities.contact.UserEntity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FriendStatusEntity.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;", "", "user", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;", "friendStatus", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;", "(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V", "getFriendStatus", "()Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;", "getUser", "()Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UserRelationStatus {
    @Embedded
    @g
    private final FriendStatusEntity friendStatus;
    @Embedded
    @g
    private final UserEntity user;

    public UserRelationStatus(@g UserEntity user, @g FriendStatusEntity friendStatus) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(friendStatus, "friendStatus");
        this.user = user;
        this.friendStatus = friendStatus;
    }

    public static /* synthetic */ UserRelationStatus copy$default(UserRelationStatus userRelationStatus, UserEntity userEntity, FriendStatusEntity friendStatusEntity, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            userEntity = userRelationStatus.user;
        }
        if ((i4 & 2) != 0) {
            friendStatusEntity = userRelationStatus.friendStatus;
        }
        return userRelationStatus.copy(userEntity, friendStatusEntity);
    }

    @g
    public final UserEntity component1() {
        return this.user;
    }

    @g
    public final FriendStatusEntity component2() {
        return this.friendStatus;
    }

    @g
    public final UserRelationStatus copy(@g UserEntity user, @g FriendStatusEntity friendStatus) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(friendStatus, "friendStatus");
        return new UserRelationStatus(user, friendStatus);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserRelationStatus) {
            UserRelationStatus userRelationStatus = (UserRelationStatus) obj;
            return Intrinsics.areEqual(this.user, userRelationStatus.user) && Intrinsics.areEqual(this.friendStatus, userRelationStatus.friendStatus);
        }
        return false;
    }

    @g
    public final FriendStatusEntity getFriendStatus() {
        return this.friendStatus;
    }

    @g
    public final UserEntity getUser() {
        return this.user;
    }

    public int hashCode() {
        return (this.user.hashCode() * 31) + this.friendStatus.hashCode();
    }

    @g
    public String toString() {
        return "UserRelationStatus(user=" + this.user + ", friendStatus=" + this.friendStatus + ')';
    }
}
