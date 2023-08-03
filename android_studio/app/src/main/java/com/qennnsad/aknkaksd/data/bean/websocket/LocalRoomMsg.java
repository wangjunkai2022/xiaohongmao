package com.qennnsad.aknkaksd.data.bean.websocket;

import androidx.core.app.FrameMetricsAggregator;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: LocalRoomMsg.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bk\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\t\u0010.\u001a\u00020\u0005HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u00100\u001a\u00020\bHÆ\u0003J\t\u00101\u001a\u00020\u0005HÆ\u0003J\t\u00102\u001a\u00020\bHÆ\u0003J\u0011\u00103\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\fHÆ\u0003J\t\u00104\u001a\u00020\bHÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u000fHÆ\u0003Jo\u00106\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\b2\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001J\u0013\u00107\u001a\u0002082\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020\bHÖ\u0001J\t\u0010;\u001a\u00020\u0005HÖ\u0001R\u001e\u0010\r\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001e\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR&\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001e\u0010\n\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0012\"\u0004\b$\u0010\u0014R \u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010\u0016\"\u0004\b*\u0010\u0018R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u0016\"\u0004\b,\u0010\u0018¨\u0006<"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;", "", "role", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;", "type", "", "roomId", "promptTime", "", "promptContent", "rollmsgTime", "rollmsgContent", "", "hasNamecard", "roomAd", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;", "(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/util/List;ILcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V", "getHasNamecard", "()I", "setHasNamecard", "(I)V", "getPromptContent", "()Ljava/lang/String;", "setPromptContent", "(Ljava/lang/String;)V", "getPromptTime", "setPromptTime", "getRole", "()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;", "setRole", "(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomRole;)V", "getRollmsgContent", "()Ljava/util/List;", "setRollmsgContent", "(Ljava/util/List;)V", "getRollmsgTime", "setRollmsgTime", "getRoomAd", "()Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;", "setRoomAd", "(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomAdBean;)V", "getRoomId", "setRoomId", "getType", "setType", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LocalRoomMsg {
    @SerializedName("has_namecard")
    private int hasNamecard;
    @SerializedName("prompt_content")
    @g
    private String promptContent;
    @SerializedName("prompt_time")
    private int promptTime;
    @g
    private RoomRole role;
    @SerializedName("rollmsg_content")
    @h
    private List<String> rollmsgContent;
    @SerializedName("rollmsg_time")
    private int rollmsgTime;
    @SerializedName("room_ad")
    @h
    private RoomAdBean roomAd;
    @SerializedName(f.f54200b)
    @h
    private String roomId;
    @g
    private String type;

    public LocalRoomMsg() {
        this(null, null, null, 0, null, 0, null, 0, null, FrameMetricsAggregator.EVERY_DURATION, null);
    }

    public LocalRoomMsg(@g RoomRole role, @g String type, @h String str, int i4, @g String promptContent, int i10, @h List<String> list, int i11, @h RoomAdBean roomAdBean) {
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(promptContent, "promptContent");
        this.role = role;
        this.type = type;
        this.roomId = str;
        this.promptTime = i4;
        this.promptContent = promptContent;
        this.rollmsgTime = i10;
        this.rollmsgContent = list;
        this.hasNamecard = i11;
        this.roomAd = roomAdBean;
    }

    @g
    public final RoomRole component1() {
        return this.role;
    }

    @g
    public final String component2() {
        return this.type;
    }

    @h
    public final String component3() {
        return this.roomId;
    }

    public final int component4() {
        return this.promptTime;
    }

    @g
    public final String component5() {
        return this.promptContent;
    }

    public final int component6() {
        return this.rollmsgTime;
    }

    @h
    public final List<String> component7() {
        return this.rollmsgContent;
    }

    public final int component8() {
        return this.hasNamecard;
    }

    @h
    public final RoomAdBean component9() {
        return this.roomAd;
    }

    @g
    public final LocalRoomMsg copy(@g RoomRole role, @g String type, @h String str, int i4, @g String promptContent, int i10, @h List<String> list, int i11, @h RoomAdBean roomAdBean) {
        Intrinsics.checkNotNullParameter(role, "role");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(promptContent, "promptContent");
        return new LocalRoomMsg(role, type, str, i4, promptContent, i10, list, i11, roomAdBean);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalRoomMsg) {
            LocalRoomMsg localRoomMsg = (LocalRoomMsg) obj;
            return this.role == localRoomMsg.role && Intrinsics.areEqual(this.type, localRoomMsg.type) && Intrinsics.areEqual(this.roomId, localRoomMsg.roomId) && this.promptTime == localRoomMsg.promptTime && Intrinsics.areEqual(this.promptContent, localRoomMsg.promptContent) && this.rollmsgTime == localRoomMsg.rollmsgTime && Intrinsics.areEqual(this.rollmsgContent, localRoomMsg.rollmsgContent) && this.hasNamecard == localRoomMsg.hasNamecard && Intrinsics.areEqual(this.roomAd, localRoomMsg.roomAd);
        }
        return false;
    }

    public final int getHasNamecard() {
        return this.hasNamecard;
    }

    @g
    public final String getPromptContent() {
        return this.promptContent;
    }

    public final int getPromptTime() {
        return this.promptTime;
    }

    @g
    public final RoomRole getRole() {
        return this.role;
    }

    @h
    public final List<String> getRollmsgContent() {
        return this.rollmsgContent;
    }

    public final int getRollmsgTime() {
        return this.rollmsgTime;
    }

    @h
    public final RoomAdBean getRoomAd() {
        return this.roomAd;
    }

    @h
    public final String getRoomId() {
        return this.roomId;
    }

    @g
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        int hashCode = ((this.role.hashCode() * 31) + this.type.hashCode()) * 31;
        String str = this.roomId;
        int hashCode2 = (((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.promptTime) * 31) + this.promptContent.hashCode()) * 31) + this.rollmsgTime) * 31;
        List<String> list = this.rollmsgContent;
        int hashCode3 = (((hashCode2 + (list == null ? 0 : list.hashCode())) * 31) + this.hasNamecard) * 31;
        RoomAdBean roomAdBean = this.roomAd;
        return hashCode3 + (roomAdBean != null ? roomAdBean.hashCode() : 0);
    }

    public final void setHasNamecard(int i4) {
        this.hasNamecard = i4;
    }

    public final void setPromptContent(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.promptContent = str;
    }

    public final void setPromptTime(int i4) {
        this.promptTime = i4;
    }

    public final void setRole(@g RoomRole roomRole) {
        Intrinsics.checkNotNullParameter(roomRole, "<set-?>");
        this.role = roomRole;
    }

    public final void setRollmsgContent(@h List<String> list) {
        this.rollmsgContent = list;
    }

    public final void setRollmsgTime(int i4) {
        this.rollmsgTime = i4;
    }

    public final void setRoomAd(@h RoomAdBean roomAdBean) {
        this.roomAd = roomAdBean;
    }

    public final void setRoomId(@h String str) {
        this.roomId = str;
    }

    public final void setType(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    @g
    public String toString() {
        return "LocalRoomMsg(role=" + this.role + ", type=" + this.type + ", roomId=" + this.roomId + ", promptTime=" + this.promptTime + ", promptContent=" + this.promptContent + ", rollmsgTime=" + this.rollmsgTime + ", rollmsgContent=" + this.rollmsgContent + ", hasNamecard=" + this.hasNamecard + ", roomAd=" + this.roomAd + ')';
    }

    public /* synthetic */ LocalRoomMsg(RoomRole roomRole, String str, String str2, int i4, String str3, int i10, List list, int i11, RoomAdBean roomAdBean, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? RoomRole.Viewer : roomRole, (i12 & 2) != 0 ? "" : str, (i12 & 4) != 0 ? null : str2, (i12 & 8) != 0 ? 0 : i4, (i12 & 16) == 0 ? str3 : "", (i12 & 32) != 0 ? 0 : i10, (i12 & 64) != 0 ? null : list, (i12 & 128) == 0 ? i11 : 0, (i12 & 256) == 0 ? roomAdBean : null);
    }
}
