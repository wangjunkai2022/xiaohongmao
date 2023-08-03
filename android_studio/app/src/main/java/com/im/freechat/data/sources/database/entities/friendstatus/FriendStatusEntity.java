package com.im.freechat.data.sources.database.entities.friendstatus;

import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import com.im.freechat.data.sources.database.entities.contact.UserEntity;
import com.im.freechat.shared.entities.chat.Status;
import io.sentry.clientreport.e;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FriendStatusEntity.kt */
@Entity(foreignKeys = {@ForeignKey(childColumns = {"target_user_id"}, entity = UserEntity.class, parentColumns = {"user_id"})}, primaryKeys = {"target_user_id"}, tableName = "friend_status")
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J3\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0007HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001d"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;", "", "userId", "", "invitedTime", "", e.b.f83079a, "", "status", "Lcom/im/freechat/shared/entities/chat/Status;", "(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V", "getInvitedTime", "()J", "getReason", "()Ljava/lang/String;", "getStatus", "()Lcom/im/freechat/shared/entities/chat/Status;", "getUserId", "()I", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class FriendStatusEntity {
    @ColumnInfo(name = "invited_time")
    private final long invitedTime;
    @h
    @ColumnInfo(name = e.b.f83079a)
    private final String reason;
    @g
    @ColumnInfo(name = "status")
    private final Status status;
    @ColumnInfo(name = "target_user_id")
    private final int userId;

    public FriendStatusEntity(int i4, long j4, @h String str, @g Status status) {
        Intrinsics.checkNotNullParameter(status, "status");
        this.userId = i4;
        this.invitedTime = j4;
        this.reason = str;
        this.status = status;
    }

    public static /* synthetic */ FriendStatusEntity copy$default(FriendStatusEntity friendStatusEntity, int i4, long j4, String str, Status status, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = friendStatusEntity.userId;
        }
        if ((i10 & 2) != 0) {
            j4 = friendStatusEntity.invitedTime;
        }
        long j10 = j4;
        if ((i10 & 4) != 0) {
            str = friendStatusEntity.reason;
        }
        String str2 = str;
        if ((i10 & 8) != 0) {
            status = friendStatusEntity.status;
        }
        return friendStatusEntity.copy(i4, j10, str2, status);
    }

    public final int component1() {
        return this.userId;
    }

    public final long component2() {
        return this.invitedTime;
    }

    @h
    public final String component3() {
        return this.reason;
    }

    @g
    public final Status component4() {
        return this.status;
    }

    @g
    public final FriendStatusEntity copy(int i4, long j4, @h String str, @g Status status) {
        Intrinsics.checkNotNullParameter(status, "status");
        return new FriendStatusEntity(i4, j4, str, status);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendStatusEntity) {
            FriendStatusEntity friendStatusEntity = (FriendStatusEntity) obj;
            return this.userId == friendStatusEntity.userId && this.invitedTime == friendStatusEntity.invitedTime && Intrinsics.areEqual(this.reason, friendStatusEntity.reason) && this.status == friendStatusEntity.status;
        }
        return false;
    }

    public final long getInvitedTime() {
        return this.invitedTime;
    }

    @h
    public final String getReason() {
        return this.reason;
    }

    @g
    public final Status getStatus() {
        return this.status;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int a10 = ((this.userId * 31) + a5.a.a(this.invitedTime)) * 31;
        String str = this.reason;
        return ((a10 + (str == null ? 0 : str.hashCode())) * 31) + this.status.hashCode();
    }

    @g
    public String toString() {
        return "FriendStatusEntity(userId=" + this.userId + ", invitedTime=" + this.invitedTime + ", reason=" + this.reason + ", status=" + this.status + ')';
    }

    public /* synthetic */ FriendStatusEntity(int i4, long j4, String str, Status status, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, j4, str, (i10 & 8) != 0 ? Status.NONE : status);
    }
}
