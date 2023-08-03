package com.im.freechat.shared.entities.chat;

import a5.a;
import com.im.freechat.shared.entities.contact.UserModel;
import io.sentry.clientreport.e;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FriendStatus.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J3\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u001cHÖ\u0001J\t\u0010\u001d\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/im/freechat/shared/entities/chat/FriendStatus;", "", "user", "Lcom/im/freechat/shared/entities/contact/UserModel;", "invitedTime", "", e.b.f83079a, "", "status", "Lcom/im/freechat/shared/entities/chat/Status;", "(Lcom/im/freechat/shared/entities/contact/UserModel;JLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V", "getInvitedTime", "()J", "getReason", "()Ljava/lang/String;", "getStatus", "()Lcom/im/freechat/shared/entities/chat/Status;", "getUser", "()Lcom/im/freechat/shared/entities/contact/UserModel;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FriendStatus {
    private final long invitedTime;
    @h
    private final String reason;
    @g
    private final Status status;
    @g
    private final UserModel user;

    public FriendStatus(@g UserModel user, long j4, @h String str, @g Status status) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(status, "status");
        this.user = user;
        this.invitedTime = j4;
        this.reason = str;
        this.status = status;
    }

    public static /* synthetic */ FriendStatus copy$default(FriendStatus friendStatus, UserModel userModel, long j4, String str, Status status, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            userModel = friendStatus.user;
        }
        if ((i4 & 2) != 0) {
            j4 = friendStatus.invitedTime;
        }
        long j10 = j4;
        if ((i4 & 4) != 0) {
            str = friendStatus.reason;
        }
        String str2 = str;
        if ((i4 & 8) != 0) {
            status = friendStatus.status;
        }
        return friendStatus.copy(userModel, j10, str2, status);
    }

    @g
    public final UserModel component1() {
        return this.user;
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
    public final FriendStatus copy(@g UserModel user, long j4, @h String str, @g Status status) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(status, "status");
        return new FriendStatus(user, j4, str, status);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FriendStatus) {
            FriendStatus friendStatus = (FriendStatus) obj;
            return Intrinsics.areEqual(this.user, friendStatus.user) && this.invitedTime == friendStatus.invitedTime && Intrinsics.areEqual(this.reason, friendStatus.reason) && this.status == friendStatus.status;
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

    @g
    public final UserModel getUser() {
        return this.user;
    }

    public int hashCode() {
        int hashCode = ((this.user.hashCode() * 31) + a.a(this.invitedTime)) * 31;
        String str = this.reason;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.status.hashCode();
    }

    @g
    public String toString() {
        return "FriendStatus(user=" + this.user + ", invitedTime=" + this.invitedTime + ", reason=" + this.reason + ", status=" + this.status + ')';
    }
}
