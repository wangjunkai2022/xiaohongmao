package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.f;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: LegendWinMsg.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bJ\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J1\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\nR\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u001f"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendWinMsg;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;", "anchorId", "", "anchorNickname", "", "userId", "userNickname", "(ILjava/lang/String;ILjava/lang/String;)V", "getAnchorId", "()I", "setAnchorId", "(I)V", "getAnchorNickname", "()Ljava/lang/String;", "getUserId", "getUserNickname", "asAnchorUserInfo", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "asUserInfo", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LegendWinMsg extends LegendMsg {
    @SerializedName(f.f54199a)
    private int anchorId;
    @SerializedName("anchor_nickname")
    @g
    private final String anchorNickname;
    @SerializedName("user_id")
    private final int userId;
    @SerializedName("user_nickname")
    @g
    private final String userNickname;

    public LegendWinMsg(int i4, @g String anchorNickname, int i10, @g String userNickname) {
        Intrinsics.checkNotNullParameter(anchorNickname, "anchorNickname");
        Intrinsics.checkNotNullParameter(userNickname, "userNickname");
        this.anchorId = i4;
        this.anchorNickname = anchorNickname;
        this.userId = i10;
        this.userNickname = userNickname;
    }

    public static /* synthetic */ LegendWinMsg copy$default(LegendWinMsg legendWinMsg, int i4, String str, int i10, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = legendWinMsg.anchorId;
        }
        if ((i11 & 2) != 0) {
            str = legendWinMsg.anchorNickname;
        }
        if ((i11 & 4) != 0) {
            i10 = legendWinMsg.userId;
        }
        if ((i11 & 8) != 0) {
            str2 = legendWinMsg.userNickname;
        }
        return legendWinMsg.copy(i4, str, i10, str2);
    }

    @g
    public final UserInfo asAnchorUserInfo() {
        UserInfo userInfo = new UserInfo();
        userInfo.setId(String.valueOf(this.anchorId));
        userInfo.setNickname(this.anchorNickname);
        userInfo.setIsMystery(getIsMystery());
        return userInfo;
    }

    @g
    public final UserInfo asUserInfo() {
        UserInfo userInfo = new UserInfo();
        userInfo.setId(String.valueOf(this.userId));
        userInfo.setNickname(this.userNickname);
        userInfo.setIsMystery(getIsMystery());
        return userInfo;
    }

    public final int component1() {
        return this.anchorId;
    }

    @g
    public final String component2() {
        return this.anchorNickname;
    }

    public final int component3() {
        return this.userId;
    }

    @g
    public final String component4() {
        return this.userNickname;
    }

    @g
    public final LegendWinMsg copy(int i4, @g String anchorNickname, int i10, @g String userNickname) {
        Intrinsics.checkNotNullParameter(anchorNickname, "anchorNickname");
        Intrinsics.checkNotNullParameter(userNickname, "userNickname");
        return new LegendWinMsg(i4, anchorNickname, i10, userNickname);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LegendWinMsg) {
            LegendWinMsg legendWinMsg = (LegendWinMsg) obj;
            return this.anchorId == legendWinMsg.anchorId && Intrinsics.areEqual(this.anchorNickname, legendWinMsg.anchorNickname) && this.userId == legendWinMsg.userId && Intrinsics.areEqual(this.userNickname, legendWinMsg.userNickname);
        }
        return false;
    }

    public final int getAnchorId() {
        return this.anchorId;
    }

    @g
    public final String getAnchorNickname() {
        return this.anchorNickname;
    }

    public final int getUserId() {
        return this.userId;
    }

    @g
    public final String getUserNickname() {
        return this.userNickname;
    }

    public int hashCode() {
        return (((((this.anchorId * 31) + this.anchorNickname.hashCode()) * 31) + this.userId) * 31) + this.userNickname.hashCode();
    }

    public final void setAnchorId(int i4) {
        this.anchorId = i4;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.websocket.LegendMsg
    @g
    public String toString() {
        return "LegendWinMsg(anchorId=" + this.anchorId + ", anchorNickname=" + this.anchorNickname + ", userId=" + this.userId + ", userNickname=" + this.userNickname + ')';
    }
}
