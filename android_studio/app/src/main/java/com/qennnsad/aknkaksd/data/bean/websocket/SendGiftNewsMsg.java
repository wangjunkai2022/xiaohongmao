package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.me.UserInfo;
import com.qennnsad.aknkaksd.presentation.ui.room.rank.f;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: SendGiftNewsMsg.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\n¢\u0006\u0002\u0010\rJ\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001aJ\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\nHÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\nHÆ\u0003Je\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\nHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\nHÖ\u0001J\t\u0010+\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000fR\u0016\u0010\f\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000f¨\u0006,"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;", "Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomMysterableMsg;", MessageBundle.TITLE_ENTRY, "", "fromUserId", "fromUserDesc", "fromUserName", "toUserId", "toUserName", "giftCount", "", "giftName", "roomId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V", "getFromUserDesc", "()Ljava/lang/String;", "getFromUserId", "getFromUserName", "getGiftCount", "()I", "getGiftName", "getRoomId", "getTitle", "getToUserId", "getToUserName", "asFromUserInfo", "Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;", "asToUserInfo", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SendGiftNewsMsg extends RoomMysterableMsg {
    @g
    private final String fromUserDesc;
    @h
    private final String fromUserId;
    @g
    private final String fromUserName;
    private final int giftCount;
    @g
    private final String giftName;
    @SerializedName(f.f54200b)
    private final int roomId;
    @g
    private final String title;
    @g
    private final String toUserId;
    @g
    private final String toUserName;

    public SendGiftNewsMsg(@g String title, @h String str, @g String fromUserDesc, @g String fromUserName, @g String toUserId, @g String toUserName, int i4, @g String giftName, int i10) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(fromUserDesc, "fromUserDesc");
        Intrinsics.checkNotNullParameter(fromUserName, "fromUserName");
        Intrinsics.checkNotNullParameter(toUserId, "toUserId");
        Intrinsics.checkNotNullParameter(toUserName, "toUserName");
        Intrinsics.checkNotNullParameter(giftName, "giftName");
        this.title = title;
        this.fromUserId = str;
        this.fromUserDesc = fromUserDesc;
        this.fromUserName = fromUserName;
        this.toUserId = toUserId;
        this.toUserName = toUserName;
        this.giftCount = i4;
        this.giftName = giftName;
        this.roomId = i10;
    }

    @g
    public final UserInfo asFromUserInfo() {
        UserInfo userInfo = new UserInfo();
        userInfo.setId(this.fromUserId);
        userInfo.setNickname(this.fromUserName);
        userInfo.setIsMystery(getIsMystery());
        return userInfo;
    }

    @g
    public final UserInfo asToUserInfo() {
        UserInfo userInfo = new UserInfo();
        userInfo.setId(this.toUserId);
        userInfo.setNickname(this.toUserName);
        userInfo.setIsMystery(0);
        return userInfo;
    }

    @g
    public final String component1() {
        return this.title;
    }

    @h
    public final String component2() {
        return this.fromUserId;
    }

    @g
    public final String component3() {
        return this.fromUserDesc;
    }

    @g
    public final String component4() {
        return this.fromUserName;
    }

    @g
    public final String component5() {
        return this.toUserId;
    }

    @g
    public final String component6() {
        return this.toUserName;
    }

    public final int component7() {
        return this.giftCount;
    }

    @g
    public final String component8() {
        return this.giftName;
    }

    public final int component9() {
        return this.roomId;
    }

    @g
    public final SendGiftNewsMsg copy(@g String title, @h String str, @g String fromUserDesc, @g String fromUserName, @g String toUserId, @g String toUserName, int i4, @g String giftName, int i10) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(fromUserDesc, "fromUserDesc");
        Intrinsics.checkNotNullParameter(fromUserName, "fromUserName");
        Intrinsics.checkNotNullParameter(toUserId, "toUserId");
        Intrinsics.checkNotNullParameter(toUserName, "toUserName");
        Intrinsics.checkNotNullParameter(giftName, "giftName");
        return new SendGiftNewsMsg(title, str, fromUserDesc, fromUserName, toUserId, toUserName, i4, giftName, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendGiftNewsMsg) {
            SendGiftNewsMsg sendGiftNewsMsg = (SendGiftNewsMsg) obj;
            return Intrinsics.areEqual(this.title, sendGiftNewsMsg.title) && Intrinsics.areEqual(this.fromUserId, sendGiftNewsMsg.fromUserId) && Intrinsics.areEqual(this.fromUserDesc, sendGiftNewsMsg.fromUserDesc) && Intrinsics.areEqual(this.fromUserName, sendGiftNewsMsg.fromUserName) && Intrinsics.areEqual(this.toUserId, sendGiftNewsMsg.toUserId) && Intrinsics.areEqual(this.toUserName, sendGiftNewsMsg.toUserName) && this.giftCount == sendGiftNewsMsg.giftCount && Intrinsics.areEqual(this.giftName, sendGiftNewsMsg.giftName) && this.roomId == sendGiftNewsMsg.roomId;
        }
        return false;
    }

    @g
    public final String getFromUserDesc() {
        return this.fromUserDesc;
    }

    @h
    public final String getFromUserId() {
        return this.fromUserId;
    }

    @g
    public final String getFromUserName() {
        return this.fromUserName;
    }

    public final int getGiftCount() {
        return this.giftCount;
    }

    @g
    public final String getGiftName() {
        return this.giftName;
    }

    public final int getRoomId() {
        return this.roomId;
    }

    @g
    public final String getTitle() {
        return this.title;
    }

    @g
    public final String getToUserId() {
        return this.toUserId;
    }

    @g
    public final String getToUserName() {
        return this.toUserName;
    }

    public int hashCode() {
        int hashCode = this.title.hashCode() * 31;
        String str = this.fromUserId;
        return ((((((((((((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.fromUserDesc.hashCode()) * 31) + this.fromUserName.hashCode()) * 31) + this.toUserId.hashCode()) * 31) + this.toUserName.hashCode()) * 31) + this.giftCount) * 31) + this.giftName.hashCode()) * 31) + this.roomId;
    }

    @g
    public String toString() {
        return "SendGiftNewsMsg(title=" + this.title + ", fromUserId=" + this.fromUserId + ", fromUserDesc=" + this.fromUserDesc + ", fromUserName=" + this.fromUserName + ", toUserId=" + this.toUserId + ", toUserName=" + this.toUserName + ", giftCount=" + this.giftCount + ", giftName=" + this.giftName + ", roomId=" + this.roomId + ')';
    }
}
