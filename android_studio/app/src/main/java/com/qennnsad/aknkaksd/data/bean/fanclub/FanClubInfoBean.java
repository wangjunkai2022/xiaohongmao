package com.qennnsad.aknkaksd.data.bean.fanclub;

import a5.a;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FanClubInfoBean.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0007¢\u0006\u0002\u0010\fJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\tHÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0007HÆ\u0003JO\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u0007HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020\u0003HÖ\u0001J\t\u0010%\u001a\u00020\tHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u000e\"\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000e¨\u0006&"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;", "", "level", "", "coins", "upLevel", "fanOf", "", "nickname", "", "freeGifts", "startedAt", "(IIIJLjava/lang/String;IJ)V", "getCoins", "()I", "getFanOf", "()J", "getFreeGifts", "setFreeGifts", "(I)V", "getLevel", "getNickname", "()Ljava/lang/String;", "getStartedAt", "getUpLevel", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FanClubInfoBean {
    private final int coins;
    @SerializedName("fan_of")
    private final long fanOf;
    @SerializedName("free_gifts")
    private int freeGifts;
    private final int level;
    @g
    private final String nickname;
    @SerializedName("started_at")
    private final long startedAt;
    @SerializedName("up_level")
    private final int upLevel;

    public FanClubInfoBean() {
        this(0, 0, 0, 0L, null, 0, 0L, 127, null);
    }

    public FanClubInfoBean(int i4, int i10, int i11, long j4, @g String nickname, int i12, long j10) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        this.level = i4;
        this.coins = i10;
        this.upLevel = i11;
        this.fanOf = j4;
        this.nickname = nickname;
        this.freeGifts = i12;
        this.startedAt = j10;
    }

    public final int component1() {
        return this.level;
    }

    public final int component2() {
        return this.coins;
    }

    public final int component3() {
        return this.upLevel;
    }

    public final long component4() {
        return this.fanOf;
    }

    @g
    public final String component5() {
        return this.nickname;
    }

    public final int component6() {
        return this.freeGifts;
    }

    public final long component7() {
        return this.startedAt;
    }

    @g
    public final FanClubInfoBean copy(int i4, int i10, int i11, long j4, @g String nickname, int i12, long j10) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        return new FanClubInfoBean(i4, i10, i11, j4, nickname, i12, j10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FanClubInfoBean) {
            FanClubInfoBean fanClubInfoBean = (FanClubInfoBean) obj;
            return this.level == fanClubInfoBean.level && this.coins == fanClubInfoBean.coins && this.upLevel == fanClubInfoBean.upLevel && this.fanOf == fanClubInfoBean.fanOf && Intrinsics.areEqual(this.nickname, fanClubInfoBean.nickname) && this.freeGifts == fanClubInfoBean.freeGifts && this.startedAt == fanClubInfoBean.startedAt;
        }
        return false;
    }

    public final int getCoins() {
        return this.coins;
    }

    public final long getFanOf() {
        return this.fanOf;
    }

    public final int getFreeGifts() {
        return this.freeGifts;
    }

    public final int getLevel() {
        return this.level;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    public final long getStartedAt() {
        return this.startedAt;
    }

    public final int getUpLevel() {
        return this.upLevel;
    }

    public int hashCode() {
        return (((((((((((this.level * 31) + this.coins) * 31) + this.upLevel) * 31) + a.a(this.fanOf)) * 31) + this.nickname.hashCode()) * 31) + this.freeGifts) * 31) + a.a(this.startedAt);
    }

    public final void setFreeGifts(int i4) {
        this.freeGifts = i4;
    }

    @g
    public String toString() {
        return "FanClubInfoBean(level=" + this.level + ", coins=" + this.coins + ", upLevel=" + this.upLevel + ", fanOf=" + this.fanOf + ", nickname=" + this.nickname + ", freeGifts=" + this.freeGifts + ", startedAt=" + this.startedAt + ')';
    }

    public /* synthetic */ FanClubInfoBean(int i4, int i10, int i11, long j4, String str, int i12, long j10, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i4, (i13 & 2) != 0 ? 0 : i10, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0L : j4, (i13 & 16) != 0 ? "" : str, (i13 & 32) == 0 ? i12 : 0, (i13 & 64) == 0 ? j10 : 0L);
    }
}
