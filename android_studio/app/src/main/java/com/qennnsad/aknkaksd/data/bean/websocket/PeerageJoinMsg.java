package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: PeerageJoinMsg.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\nJ\u0006\u0010\u0013\u001a\u00020\u0014J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003JG\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00052\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u0005HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0016\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000f¨\u0006\""}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageJoinMsg;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;", MessageBundle.TITLE_ENTRY, "", "userId", "", "nickname", "desc", "peerageId", "peerageName", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V", "getDesc", "()Ljava/lang/String;", "getNickname", "getPeerageId", "()I", "getPeerageName", "getTitle", "getUserId", "asUserInfo", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PeerageJoinMsg extends RoomMysterableMsg {
    @g
    private final String desc;
    @SerializedName("user_nickname")
    @g
    private final String nickname;
    @SerializedName("peerage_id")
    private final int peerageId;
    @SerializedName("peerage_name")
    @h
    private final String peerageName;
    @g
    private final String title;
    @SerializedName("user_id")
    private final int userId;

    public PeerageJoinMsg(@g String title, int i4, @g String nickname, @g String desc, int i10, @h String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(desc, "desc");
        this.title = title;
        this.userId = i4;
        this.nickname = nickname;
        this.desc = desc;
        this.peerageId = i10;
        this.peerageName = str;
    }

    public static /* synthetic */ PeerageJoinMsg copy$default(PeerageJoinMsg peerageJoinMsg, String str, int i4, String str2, String str3, int i10, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = peerageJoinMsg.title;
        }
        if ((i11 & 2) != 0) {
            i4 = peerageJoinMsg.userId;
        }
        int i12 = i4;
        if ((i11 & 4) != 0) {
            str2 = peerageJoinMsg.nickname;
        }
        String str5 = str2;
        if ((i11 & 8) != 0) {
            str3 = peerageJoinMsg.desc;
        }
        String str6 = str3;
        if ((i11 & 16) != 0) {
            i10 = peerageJoinMsg.peerageId;
        }
        int i13 = i10;
        if ((i11 & 32) != 0) {
            str4 = peerageJoinMsg.peerageName;
        }
        return peerageJoinMsg.copy(str, i12, str5, str6, i13, str4);
    }

    @g
    public final UserInfo asUserInfo() {
        UserInfo userInfo = new UserInfo();
        userInfo.setId(String.valueOf(this.userId));
        userInfo.setAvatar("");
        userInfo.setNickname(userInfo.getNickname());
        userInfo.setPeerage_id(this.peerageId);
        userInfo.setIsMystery(getIsMystery());
        return userInfo;
    }

    @g
    public final String component1() {
        return this.title;
    }

    public final int component2() {
        return this.userId;
    }

    @g
    public final String component3() {
        return this.nickname;
    }

    @g
    public final String component4() {
        return this.desc;
    }

    public final int component5() {
        return this.peerageId;
    }

    @h
    public final String component6() {
        return this.peerageName;
    }

    @g
    public final PeerageJoinMsg copy(@g String title, int i4, @g String nickname, @g String desc, int i10, @h String str) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(desc, "desc");
        return new PeerageJoinMsg(title, i4, nickname, desc, i10, str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PeerageJoinMsg) {
            PeerageJoinMsg peerageJoinMsg = (PeerageJoinMsg) obj;
            return Intrinsics.areEqual(this.title, peerageJoinMsg.title) && this.userId == peerageJoinMsg.userId && Intrinsics.areEqual(this.nickname, peerageJoinMsg.nickname) && Intrinsics.areEqual(this.desc, peerageJoinMsg.desc) && this.peerageId == peerageJoinMsg.peerageId && Intrinsics.areEqual(this.peerageName, peerageJoinMsg.peerageName);
        }
        return false;
    }

    @g
    public final String getDesc() {
        return this.desc;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    public final int getPeerageId() {
        return this.peerageId;
    }

    @h
    public final String getPeerageName() {
        return this.peerageName;
    }

    @g
    public final String getTitle() {
        return this.title;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        int hashCode = ((((((((this.title.hashCode() * 31) + this.userId) * 31) + this.nickname.hashCode()) * 31) + this.desc.hashCode()) * 31) + this.peerageId) * 31;
        String str = this.peerageName;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @g
    public String toString() {
        return "PeerageJoinMsg(title=" + this.title + ", userId=" + this.userId + ", nickname=" + this.nickname + ", desc=" + this.desc + ", peerageId=" + this.peerageId + ", peerageName=" + this.peerageName + ')';
    }
}
