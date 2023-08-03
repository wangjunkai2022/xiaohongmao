package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.f;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: UserPublicMsg.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016J\u0006\u00101\u001a\u000202J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0003HÆ\u0003J\t\u00105\u001a\u00020\u0003HÆ\u0003J\t\u00106\u001a\u00020\u0007HÆ\u0003J\t\u00107\u001a\u00020\u0007HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0013HÆ\u0003J\t\u0010:\u001a\u00020\u0015HÆ\u0003J\t\u0010;\u001a\u00020\u0003HÆ\u0003J\t\u0010<\u001a\u00020\u0003HÆ\u0003J\t\u0010=\u001a\u00020\u0007HÆ\u0003J\t\u0010>\u001a\u00020\u0003HÆ\u0003J\t\u0010?\u001a\u00020\u0003HÆ\u0003J\t\u0010@\u001a\u00020\u0007HÆ\u0003J\t\u0010A\u001a\u00020\u0007HÆ\u0003J\t\u0010B\u001a\u00020\u0003HÆ\u0003J«\u0001\u0010C\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u00032\b\b\u0002\u0010\u000e\u001a\u00020\u00032\b\b\u0002\u0010\u000f\u001a\u00020\u00072\b\b\u0002\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0015HÆ\u0001J\u0013\u0010D\u001a\u00020\u00152\b\u0010E\u001a\u0004\u0018\u00010FHÖ\u0003J\t\u0010G\u001a\u00020\u0007HÖ\u0001J\t\u0010H\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001cR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001c\"\u0004\b#\u0010$R\u0016\u0010\u0010\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0016\u0010\u0011\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001cR\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001cR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001cR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001cR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010&R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001cR\u0016\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010&R\u0016\u0010\u000f\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010&R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001cR\u0016\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010&¨\u0006I"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;", "fromUserId", "", "fromClientName", "fromUserRole", "fromUserPeerageId", "", "content", j.f47980a, "vipLevel", "level", "fly", "avatar", "anchorBalance", "roomId", "fanLevel", "fanclubNickname", "charSequence", "", "alreadyTranslated", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/CharSequence;Z)V", "getAlreadyTranslated", "()Z", "setAlreadyTranslated", "(Z)V", "getAnchorBalance", "()Ljava/lang/String;", "getAvatar", "getCharSequence", "()Ljava/lang/CharSequence;", "setCharSequence", "(Ljava/lang/CharSequence;)V", "getContent", "setContent", "(Ljava/lang/String;)V", "getFanLevel", "()I", "getFanclubNickname", "getFly", "getFromClientName", "getFromUserId", "getFromUserPeerageId", "getFromUserRole", "getLevel", "getRoomId", "getTime", "getVipLevel", "asUserInfo", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class UserPublicMsg extends RoomMysterableMsg {
    private transient boolean alreadyTranslated;
    @g
    private final String anchorBalance;
    @g
    private final String avatar;
    @h
    private transient CharSequence charSequence;
    @g
    private String content;
    @SerializedName("fan_level")
    private final int fanLevel;
    @SerializedName("fanclub_nickname")
    @g
    private final String fanclubNickname;
    @g
    private final String fly;
    @SerializedName("from_client_name")
    @g
    private final String fromClientName;
    @SerializedName("from_user_id")
    @g
    private final String fromUserId;
    @SerializedName("from_user_peerage_id")
    private final int fromUserPeerageId;
    @SerializedName("from_user_role")
    @g
    private final String fromUserRole;
    @SerializedName("levelid")
    private final int level;
    @SerializedName(f.f54200b)
    private final int roomId;
    @g
    private final String time;
    @SerializedName("vip")
    private final int vipLevel;

    public /* synthetic */ UserPublicMsg(String str, String str2, String str3, int i4, String str4, String str5, int i10, int i11, String str6, String str7, String str8, int i12, int i13, String str9, CharSequence charSequence, boolean z9, int i14, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, i4, str4, str5, (i14 & 64) != 0 ? 0 : i10, (i14 & 128) != 0 ? 0 : i11, (i14 & 256) != 0 ? "" : str6, str7, str8, i12, i13, str9, (i14 & 16384) != 0 ? null : charSequence, (i14 & 32768) != 0 ? false : z9);
    }

    @g
    public final UserInfo asUserInfo() {
        UserInfo userInfo = new UserInfo();
        userInfo.setId(this.fromUserId);
        userInfo.setAvatar("");
        userInfo.setNickname(this.fromClientName);
        userInfo.setVip(String.valueOf(this.vipLevel));
        userInfo.setLevel(userInfo.getLevel().toString());
        userInfo.setCurrentRoomNum("");
        userInfo.setSay(this.content);
        userInfo.setPeerage_id(this.fromUserPeerageId);
        userInfo.setIsMystery(getIsMystery());
        return userInfo;
    }

    @g
    public final String component1() {
        return this.fromUserId;
    }

    @g
    public final String component10() {
        return this.avatar;
    }

    @g
    public final String component11() {
        return this.anchorBalance;
    }

    public final int component12() {
        return this.roomId;
    }

    public final int component13() {
        return this.fanLevel;
    }

    @g
    public final String component14() {
        return this.fanclubNickname;
    }

    @h
    public final CharSequence component15() {
        return this.charSequence;
    }

    public final boolean component16() {
        return this.alreadyTranslated;
    }

    @g
    public final String component2() {
        return this.fromClientName;
    }

    @g
    public final String component3() {
        return this.fromUserRole;
    }

    public final int component4() {
        return this.fromUserPeerageId;
    }

    @g
    public final String component5() {
        return this.content;
    }

    @g
    public final String component6() {
        return this.time;
    }

    public final int component7() {
        return this.vipLevel;
    }

    public final int component8() {
        return this.level;
    }

    @g
    public final String component9() {
        return this.fly;
    }

    @g
    public final UserPublicMsg copy(@g String fromUserId, @g String fromClientName, @g String fromUserRole, int i4, @g String content, @g String time, int i10, int i11, @g String fly, @g String avatar, @g String anchorBalance, int i12, int i13, @g String fanclubNickname, @h CharSequence charSequence, boolean z9) {
        Intrinsics.checkNotNullParameter(fromUserId, "fromUserId");
        Intrinsics.checkNotNullParameter(fromClientName, "fromClientName");
        Intrinsics.checkNotNullParameter(fromUserRole, "fromUserRole");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(time, "time");
        Intrinsics.checkNotNullParameter(fly, "fly");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(anchorBalance, "anchorBalance");
        Intrinsics.checkNotNullParameter(fanclubNickname, "fanclubNickname");
        return new UserPublicMsg(fromUserId, fromClientName, fromUserRole, i4, content, time, i10, i11, fly, avatar, anchorBalance, i12, i13, fanclubNickname, charSequence, z9);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UserPublicMsg) {
            UserPublicMsg userPublicMsg = (UserPublicMsg) obj;
            return Intrinsics.areEqual(this.fromUserId, userPublicMsg.fromUserId) && Intrinsics.areEqual(this.fromClientName, userPublicMsg.fromClientName) && Intrinsics.areEqual(this.fromUserRole, userPublicMsg.fromUserRole) && this.fromUserPeerageId == userPublicMsg.fromUserPeerageId && Intrinsics.areEqual(this.content, userPublicMsg.content) && Intrinsics.areEqual(this.time, userPublicMsg.time) && this.vipLevel == userPublicMsg.vipLevel && this.level == userPublicMsg.level && Intrinsics.areEqual(this.fly, userPublicMsg.fly) && Intrinsics.areEqual(this.avatar, userPublicMsg.avatar) && Intrinsics.areEqual(this.anchorBalance, userPublicMsg.anchorBalance) && this.roomId == userPublicMsg.roomId && this.fanLevel == userPublicMsg.fanLevel && Intrinsics.areEqual(this.fanclubNickname, userPublicMsg.fanclubNickname) && Intrinsics.areEqual(this.charSequence, userPublicMsg.charSequence) && this.alreadyTranslated == userPublicMsg.alreadyTranslated;
        }
        return false;
    }

    public final boolean getAlreadyTranslated() {
        return this.alreadyTranslated;
    }

    @g
    public final String getAnchorBalance() {
        return this.anchorBalance;
    }

    @g
    public final String getAvatar() {
        return this.avatar;
    }

    @h
    public final CharSequence getCharSequence() {
        return this.charSequence;
    }

    @g
    public final String getContent() {
        return this.content;
    }

    public final int getFanLevel() {
        return this.fanLevel;
    }

    @g
    public final String getFanclubNickname() {
        return this.fanclubNickname;
    }

    @g
    public final String getFly() {
        return this.fly;
    }

    @g
    public final String getFromClientName() {
        return this.fromClientName;
    }

    @g
    public final String getFromUserId() {
        return this.fromUserId;
    }

    public final int getFromUserPeerageId() {
        return this.fromUserPeerageId;
    }

    @g
    public final String getFromUserRole() {
        return this.fromUserRole;
    }

    public final int getLevel() {
        return this.level;
    }

    public final int getRoomId() {
        return this.roomId;
    }

    @g
    public final String getTime() {
        return this.time;
    }

    public final int getVipLevel() {
        return this.vipLevel;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((((((((((((((((((((((((this.fromUserId.hashCode() * 31) + this.fromClientName.hashCode()) * 31) + this.fromUserRole.hashCode()) * 31) + this.fromUserPeerageId) * 31) + this.content.hashCode()) * 31) + this.time.hashCode()) * 31) + this.vipLevel) * 31) + this.level) * 31) + this.fly.hashCode()) * 31) + this.avatar.hashCode()) * 31) + this.anchorBalance.hashCode()) * 31) + this.roomId) * 31) + this.fanLevel) * 31) + this.fanclubNickname.hashCode()) * 31;
        CharSequence charSequence = this.charSequence;
        int hashCode2 = (hashCode + (charSequence == null ? 0 : charSequence.hashCode())) * 31;
        boolean z9 = this.alreadyTranslated;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode2 + i4;
    }

    public final void setAlreadyTranslated(boolean z9) {
        this.alreadyTranslated = z9;
    }

    public final void setCharSequence(@h CharSequence charSequence) {
        this.charSequence = charSequence;
    }

    public final void setContent(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.content = str;
    }

    @g
    public String toString() {
        return "UserPublicMsg(fromUserId=" + this.fromUserId + ", fromClientName=" + this.fromClientName + ", fromUserRole=" + this.fromUserRole + ", fromUserPeerageId=" + this.fromUserPeerageId + ", content=" + this.content + ", time=" + this.time + ", vipLevel=" + this.vipLevel + ", level=" + this.level + ", fly=" + this.fly + ", avatar=" + this.avatar + ", anchorBalance=" + this.anchorBalance + ", roomId=" + this.roomId + ", fanLevel=" + this.fanLevel + ", fanclubNickname=" + this.fanclubNickname + ", charSequence=" + ((Object) this.charSequence) + ", alreadyTranslated=" + this.alreadyTranslated + ')';
    }

    public UserPublicMsg(@g String fromUserId, @g String fromClientName, @g String fromUserRole, int i4, @g String content, @g String time, int i10, int i11, @g String fly, @g String avatar, @g String anchorBalance, int i12, int i13, @g String fanclubNickname, @h CharSequence charSequence, boolean z9) {
        Intrinsics.checkNotNullParameter(fromUserId, "fromUserId");
        Intrinsics.checkNotNullParameter(fromClientName, "fromClientName");
        Intrinsics.checkNotNullParameter(fromUserRole, "fromUserRole");
        Intrinsics.checkNotNullParameter(content, "content");
        Intrinsics.checkNotNullParameter(time, "time");
        Intrinsics.checkNotNullParameter(fly, "fly");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(anchorBalance, "anchorBalance");
        Intrinsics.checkNotNullParameter(fanclubNickname, "fanclubNickname");
        this.fromUserId = fromUserId;
        this.fromClientName = fromClientName;
        this.fromUserRole = fromUserRole;
        this.fromUserPeerageId = i4;
        this.content = content;
        this.time = time;
        this.vipLevel = i10;
        this.level = i11;
        this.fly = fly;
        this.avatar = avatar;
        this.anchorBalance = anchorBalance;
        this.roomId = i12;
        this.fanLevel = i13;
        this.fanclubNickname = fanclubNickname;
        this.charSequence = charSequence;
        this.alreadyTranslated = z9;
    }
}
