package com.qennnsad.aknkaksd.data.bean.gift;

import com.alipay.sdk.packet.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SendGiftAction.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004BW\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\r\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\b\u0012\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0002\u0010\u0010J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0000J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010 \u001a\u00020\bHÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010%\u001a\u00020\bHÆ\u0003J\t\u0010&\u001a\u00020\bHÆ\u0003J\t\u0010'\u001a\u00020\bHÆ\u0003Jm\u0010(\u001a\u00020\u00002\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\bHÆ\u0001J\u0013\u0010)\u001a\u00020\u001d2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\bHÖ\u0001J\t\u0010,\u001a\u00020\u0006HÖ\u0001R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\r\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u000f\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0014¨\u0006-"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;", "", "sendGiftMsg", "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;", "(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;)V", "fromUid", "", "roomId", "", "nickname", "avatar", "giftName", "giftIcon", "combo", "intcombe", "effortDuration", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V", "getAvatar", "()Ljava/lang/String;", "getCombo", "()I", "getEffortDuration", "getFromUid", "getGiftIcon", "getGiftName", "getIntcombe", "getNickname", "getRoomId", "canBeJoined", "", d.f6907q, "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SendGiftAction {
    @h
    private final String avatar;
    private final int combo;
    private final int effortDuration;
    @h
    private final String fromUid;
    @h
    private final String giftIcon;
    @h
    private final String giftName;
    private final int intcombe;
    @h
    private final String nickname;
    private final int roomId;

    public SendGiftAction(@h String str, int i4, @h String str2, @h String str3, @h String str4, @h String str5, int i10, int i11, int i12) {
        this.fromUid = str;
        this.roomId = i4;
        this.nickname = str2;
        this.avatar = str3;
        this.giftName = str4;
        this.giftIcon = str5;
        this.combo = i10;
        this.intcombe = i11;
        this.effortDuration = i12;
    }

    public final boolean canBeJoined(@g SendGiftAction action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return Intrinsics.areEqual(this.fromUid, action.fromUid) && Intrinsics.areEqual(this.giftName, action.giftName) && action.roomId == this.roomId;
    }

    @h
    public final String component1() {
        return this.fromUid;
    }

    public final int component2() {
        return this.roomId;
    }

    @h
    public final String component3() {
        return this.nickname;
    }

    @h
    public final String component4() {
        return this.avatar;
    }

    @h
    public final String component5() {
        return this.giftName;
    }

    @h
    public final String component6() {
        return this.giftIcon;
    }

    public final int component7() {
        return this.combo;
    }

    public final int component8() {
        return this.intcombe;
    }

    public final int component9() {
        return this.effortDuration;
    }

    @g
    public final SendGiftAction copy(@h String str, int i4, @h String str2, @h String str3, @h String str4, @h String str5, int i10, int i11, int i12) {
        return new SendGiftAction(str, i4, str2, str3, str4, str5, i10, i11, i12);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendGiftAction) {
            SendGiftAction sendGiftAction = (SendGiftAction) obj;
            return Intrinsics.areEqual(this.fromUid, sendGiftAction.fromUid) && this.roomId == sendGiftAction.roomId && Intrinsics.areEqual(this.nickname, sendGiftAction.nickname) && Intrinsics.areEqual(this.avatar, sendGiftAction.avatar) && Intrinsics.areEqual(this.giftName, sendGiftAction.giftName) && Intrinsics.areEqual(this.giftIcon, sendGiftAction.giftIcon) && this.combo == sendGiftAction.combo && this.intcombe == sendGiftAction.intcombe && this.effortDuration == sendGiftAction.effortDuration;
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    public final int getCombo() {
        return this.combo;
    }

    public final int getEffortDuration() {
        return this.effortDuration;
    }

    @h
    public final String getFromUid() {
        return this.fromUid;
    }

    @h
    public final String getGiftIcon() {
        return this.giftIcon;
    }

    @h
    public final String getGiftName() {
        return this.giftName;
    }

    public final int getIntcombe() {
        return this.intcombe;
    }

    @h
    public final String getNickname() {
        return this.nickname;
    }

    public final int getRoomId() {
        return this.roomId;
    }

    public int hashCode() {
        String str = this.fromUid;
        int hashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.roomId) * 31;
        String str2 = this.nickname;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.avatar;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.giftName;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.giftIcon;
        return ((((((hashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.combo) * 31) + this.intcombe) * 31) + this.effortDuration;
    }

    @g
    public String toString() {
        return "SendGiftAction(fromUid=" + this.fromUid + ", roomId=" + this.roomId + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ", giftName=" + this.giftName + ", giftIcon=" + this.giftIcon + ", combo=" + this.combo + ", intcombe=" + this.intcombe + ", effortDuration=" + this.effortDuration + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public SendGiftAction(@m8.g com.qennnsad.aknkaksd.data.bean.websocket.SendGiftMsg r12) {
        /*
            r11 = this;
            java.lang.String r0 = "sendGiftMsg"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r5 = r12.getFromUserAvatar()
            int r3 = r12.getRoom_id()
            java.lang.String r2 = r12.getFromUserId()
            int r8 = r12.getGiftCount()
            java.lang.String r4 = r12.getFromUserName()
            java.lang.String r7 = r12.getGiftIcon()
            java.lang.String r6 = r12.getGiftName()
            int r9 = r12.getComboHit()
            int r10 = r12.getEffortDuration()
            r1 = r11
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.data.bean.gift.SendGiftAction.<init>(com.qennnsad.aknkaksd.data.bean.websocket.SendGiftMsg):void");
    }
}
