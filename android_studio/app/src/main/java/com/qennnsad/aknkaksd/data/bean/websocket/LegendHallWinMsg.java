package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: LegendHallWinMsg.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0006\u0010\r\u001a\u00020\u000eJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendHallWinMsg;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/LegendMsg;", "userId", "", "userNickname", "", "gameId", "(ILjava/lang/String;I)V", "getGameId", "()I", "getUserId", "getUserNickname", "()Ljava/lang/String;", "asUserInfo", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LegendHallWinMsg extends LegendMsg {
    @SerializedName("gameid")
    private final int gameId;
    @SerializedName("user_id")
    private final int userId;
    @SerializedName("user_nickname")
    @g
    private final String userNickname;

    public LegendHallWinMsg(int i4, @g String userNickname, int i10) {
        Intrinsics.checkNotNullParameter(userNickname, "userNickname");
        this.userId = i4;
        this.userNickname = userNickname;
        this.gameId = i10;
    }

    public static /* synthetic */ LegendHallWinMsg copy$default(LegendHallWinMsg legendHallWinMsg, int i4, String str, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = legendHallWinMsg.userId;
        }
        if ((i11 & 2) != 0) {
            str = legendHallWinMsg.userNickname;
        }
        if ((i11 & 4) != 0) {
            i10 = legendHallWinMsg.gameId;
        }
        return legendHallWinMsg.copy(i4, str, i10);
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
        return this.userId;
    }

    @g
    public final String component2() {
        return this.userNickname;
    }

    public final int component3() {
        return this.gameId;
    }

    @g
    public final LegendHallWinMsg copy(int i4, @g String userNickname, int i10) {
        Intrinsics.checkNotNullParameter(userNickname, "userNickname");
        return new LegendHallWinMsg(i4, userNickname, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LegendHallWinMsg) {
            LegendHallWinMsg legendHallWinMsg = (LegendHallWinMsg) obj;
            return this.userId == legendHallWinMsg.userId && Intrinsics.areEqual(this.userNickname, legendHallWinMsg.userNickname) && this.gameId == legendHallWinMsg.gameId;
        }
        return false;
    }

    public final int getGameId() {
        return this.gameId;
    }

    public final int getUserId() {
        return this.userId;
    }

    @g
    public final String getUserNickname() {
        return this.userNickname;
    }

    public int hashCode() {
        return (((this.userId * 31) + this.userNickname.hashCode()) * 31) + this.gameId;
    }

    @Override // com.qennnsad.aknkaksd.data.bean.websocket.LegendMsg
    @g
    public String toString() {
        return "LegendHallWinMsg(userId=" + this.userId + ", userNickname=" + this.userNickname + ", gameId=" + this.gameId + ')';
    }
}
