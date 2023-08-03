package com.qennnsad.aknkaksd.data.bean.websocket;

import com.alipay.sdk.authjs.a;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.f;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AudienceInfo.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B\u0081\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\t¢\u0006\u0002\u0010\u0010J\u0006\u0010+\u001a\u00020,J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u000eHÆ\u0003J\t\u0010/\u001a\u00020\tHÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00104\u001a\u00020\tHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u00107\u001a\u00020\tHÆ\u0003J\u0085\u0001\u00108\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\b\u001a\u00020\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\f\u001a\u00020\t2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\tHÆ\u0001J\u0013\u00109\u001a\u00020\u000e2\b\u0010:\u001a\u0004\u0018\u00010;HÖ\u0003J\t\u0010<\u001a\u00020\tHÖ\u0001J\b\u0010=\u001a\u00020\u0003H\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R \u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0012\"\u0004\b\u0016\u0010\u0014R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0018\"\u0004\b\u0019\u0010\u001aR \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0012\"\u0004\b\u001c\u0010\u0014R\u001e\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0012\"\u0004\b\"\u0010\u0014R\u001a\u0010\f\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u001e\"\u0004\b$\u0010 R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0012\"\u0004\b&\u0010\u0014R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\u0012\"\u0004\b(\u0010\u0014R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u001e\"\u0004\b*\u0010 ¨\u0006>"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/AudienceInfo;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;", "clientName", "", "userId", "roomId", "ucuid", a.f6840k, "vip", "", "levelId", "avatar", j.f47980a, "isMsged", "", "peerageId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZI)V", "getAvatar", "()Ljava/lang/String;", "setAvatar", "(Ljava/lang/String;)V", "getClientId", "setClientId", "getClientName", "()Z", "setMsged", "(Z)V", "getLevelId", "setLevelId", "getPeerageId", "()I", "setPeerageId", "(I)V", "getRoomId", "setRoomId", "getTime", "setTime", "getUcuid", "setUcuid", "getUserId", "setUserId", "getVip", "setVip", "asUserInfo", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "component1", "component10", "component11", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AudienceInfo extends RoomMysterableMsg {
    @h
    private String avatar;
    @SerializedName("client_id")
    @h
    private String clientId;
    @SerializedName("client_name")
    @h
    private final String clientName;
    private boolean isMsged;
    @SerializedName("levelid")
    @h
    private String levelId;
    @SerializedName("peerageid")
    private int peerageId;
    @SerializedName(f.f54200b)
    @h
    private String roomId;
    private int time;
    @h
    private String ucuid;
    @SerializedName("user_id")
    @h
    private String userId;
    private int vip;

    public AudienceInfo() {
        this(null, null, null, null, null, 0, null, null, 0, false, 0, 2047, null);
    }

    public /* synthetic */ AudienceInfo(String str, String str2, String str3, String str4, String str5, int i4, String str6, String str7, int i10, boolean z9, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? null : str3, (i12 & 8) != 0 ? null : str4, (i12 & 16) != 0 ? null : str5, (i12 & 32) != 0 ? 0 : i4, (i12 & 64) != 0 ? null : str6, (i12 & 128) == 0 ? str7 : null, (i12 & 256) != 0 ? 0 : i10, (i12 & 512) != 0 ? false : z9, (i12 & 1024) == 0 ? i11 : 0);
    }

    @g
    public final UserInfo asUserInfo() {
        UserInfo userInfo = new UserInfo();
        userInfo.setId(this.userId);
        userInfo.setAvatar(this.avatar);
        userInfo.setNickname(this.clientName);
        userInfo.setVip(this.vip + "");
        userInfo.setLevel(this.levelId);
        userInfo.setCurrentRoomNum(this.roomId);
        userInfo.setPeerage_id(this.peerageId);
        userInfo.setIsMystery(getIsMystery());
        return userInfo;
    }

    @h
    public final String component1() {
        return this.clientName;
    }

    public final boolean component10() {
        return this.isMsged;
    }

    public final int component11() {
        return this.peerageId;
    }

    @h
    public final String component2() {
        return this.userId;
    }

    @h
    public final String component3() {
        return this.roomId;
    }

    @h
    public final String component4() {
        return this.ucuid;
    }

    @h
    public final String component5() {
        return this.clientId;
    }

    public final int component6() {
        return this.vip;
    }

    @h
    public final String component7() {
        return this.levelId;
    }

    @h
    public final String component8() {
        return this.avatar;
    }

    public final int component9() {
        return this.time;
    }

    @g
    public final AudienceInfo copy(@h String str, @h String str2, @h String str3, @h String str4, @h String str5, int i4, @h String str6, @h String str7, int i10, boolean z9, int i11) {
        return new AudienceInfo(str, str2, str3, str4, str5, i4, str6, str7, i10, z9, i11);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AudienceInfo) {
            AudienceInfo audienceInfo = (AudienceInfo) obj;
            return Intrinsics.areEqual(this.clientName, audienceInfo.clientName) && Intrinsics.areEqual(this.userId, audienceInfo.userId) && Intrinsics.areEqual(this.roomId, audienceInfo.roomId) && Intrinsics.areEqual(this.ucuid, audienceInfo.ucuid) && Intrinsics.areEqual(this.clientId, audienceInfo.clientId) && this.vip == audienceInfo.vip && Intrinsics.areEqual(this.levelId, audienceInfo.levelId) && Intrinsics.areEqual(this.avatar, audienceInfo.avatar) && this.time == audienceInfo.time && this.isMsged == audienceInfo.isMsged && this.peerageId == audienceInfo.peerageId;
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    @h
    public final String getClientId() {
        return this.clientId;
    }

    @h
    public final String getClientName() {
        return this.clientName;
    }

    @h
    public final String getLevelId() {
        return this.levelId;
    }

    public final int getPeerageId() {
        return this.peerageId;
    }

    @h
    public final String getRoomId() {
        return this.roomId;
    }

    public final int getTime() {
        return this.time;
    }

    @h
    public final String getUcuid() {
        return this.ucuid;
    }

    @h
    public final String getUserId() {
        return this.userId;
    }

    public final int getVip() {
        return this.vip;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        String str = this.clientName;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.userId;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.roomId;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.ucuid;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.clientId;
        int hashCode5 = (((hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31) + this.vip) * 31;
        String str6 = this.levelId;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.avatar;
        int hashCode7 = (((hashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31) + this.time) * 31;
        boolean z9 = this.isMsged;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return ((hashCode7 + i4) * 31) + this.peerageId;
    }

    public final boolean isMsged() {
        return this.isMsged;
    }

    public final void setAvatar(@h String str) {
        this.avatar = str;
    }

    public final void setClientId(@h String str) {
        this.clientId = str;
    }

    public final void setLevelId(@h String str) {
        this.levelId = str;
    }

    public final void setMsged(boolean z9) {
        this.isMsged = z9;
    }

    public final void setPeerageId(int i4) {
        this.peerageId = i4;
    }

    public final void setRoomId(@h String str) {
        this.roomId = str;
    }

    public final void setTime(int i4) {
        this.time = i4;
    }

    public final void setUcuid(@h String str) {
        this.ucuid = str;
    }

    public final void setUserId(@h String str) {
        this.userId = str;
    }

    public final void setVip(int i4) {
        this.vip = i4;
    }

    @g
    public String toString() {
        return "AudienceInfo{clientName='" + this.clientName + "', userId='" + this.userId + "', roomId='" + this.roomId + "', ucuid='" + this.ucuid + "', clientId='" + this.clientId + "', vip=" + this.vip + ", levelId='" + this.levelId + "', avatar='" + this.avatar + "', time=" + this.time + ", msged=" + this.isMsged + ", peerageId='" + this.peerageId + '}';
    }

    public AudienceInfo(@h String str, @h String str2, @h String str3, @h String str4, @h String str5, int i4, @h String str6, @h String str7, int i10, boolean z9, int i11) {
        this.clientName = str;
        this.userId = str2;
        this.roomId = str3;
        this.ucuid = str4;
        this.clientId = str5;
        this.vip = i4;
        this.levelId = str6;
        this.avatar = str7;
        this.time = i10;
        this.isMsged = z9;
        this.peerageId = i11;
    }
}
