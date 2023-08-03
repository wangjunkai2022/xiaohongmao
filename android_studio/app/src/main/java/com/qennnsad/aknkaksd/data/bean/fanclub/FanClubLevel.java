package com.qennnsad.aknkaksd.data.bean.fanclub;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FanClubConfig.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J;\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001b\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000eR\u0016\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000e¨\u0006\u001c"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;", "", "level", "", "color1", "", "color2", "gifts", "upCoins", "(ILjava/lang/String;Ljava/lang/String;II)V", "getColor1", "()Ljava/lang/String;", "getColor2", "getGifts", "()I", "getLevel", "getUpCoins", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FanClubLevel {
    @g
    private final String color1;
    @g
    private final String color2;
    private final int gifts;
    private final int level;
    @SerializedName("up_coins")
    private final int upCoins;

    public FanClubLevel(int i4, @g String color1, @g String color2, int i10, int i11) {
        Intrinsics.checkNotNullParameter(color1, "color1");
        Intrinsics.checkNotNullParameter(color2, "color2");
        this.level = i4;
        this.color1 = color1;
        this.color2 = color2;
        this.gifts = i10;
        this.upCoins = i11;
    }

    public static /* synthetic */ FanClubLevel copy$default(FanClubLevel fanClubLevel, int i4, String str, String str2, int i10, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i4 = fanClubLevel.level;
        }
        if ((i12 & 2) != 0) {
            str = fanClubLevel.color1;
        }
        String str3 = str;
        if ((i12 & 4) != 0) {
            str2 = fanClubLevel.color2;
        }
        String str4 = str2;
        if ((i12 & 8) != 0) {
            i10 = fanClubLevel.gifts;
        }
        int i13 = i10;
        if ((i12 & 16) != 0) {
            i11 = fanClubLevel.upCoins;
        }
        return fanClubLevel.copy(i4, str3, str4, i13, i11);
    }

    public final int component1() {
        return this.level;
    }

    @g
    public final String component2() {
        return this.color1;
    }

    @g
    public final String component3() {
        return this.color2;
    }

    public final int component4() {
        return this.gifts;
    }

    public final int component5() {
        return this.upCoins;
    }

    @g
    public final FanClubLevel copy(int i4, @g String color1, @g String color2, int i10, int i11) {
        Intrinsics.checkNotNullParameter(color1, "color1");
        Intrinsics.checkNotNullParameter(color2, "color2");
        return new FanClubLevel(i4, color1, color2, i10, i11);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FanClubLevel) {
            FanClubLevel fanClubLevel = (FanClubLevel) obj;
            return this.level == fanClubLevel.level && Intrinsics.areEqual(this.color1, fanClubLevel.color1) && Intrinsics.areEqual(this.color2, fanClubLevel.color2) && this.gifts == fanClubLevel.gifts && this.upCoins == fanClubLevel.upCoins;
        }
        return false;
    }

    @g
    public final String getColor1() {
        return this.color1;
    }

    @g
    public final String getColor2() {
        return this.color2;
    }

    public final int getGifts() {
        return this.gifts;
    }

    public final int getLevel() {
        return this.level;
    }

    public final int getUpCoins() {
        return this.upCoins;
    }

    public int hashCode() {
        return (((((((this.level * 31) + this.color1.hashCode()) * 31) + this.color2.hashCode()) * 31) + this.gifts) * 31) + this.upCoins;
    }

    @g
    public String toString() {
        return "FanClubLevel(level=" + this.level + ", color1=" + this.color1 + ", color2=" + this.color2 + ", gifts=" + this.gifts + ", upCoins=" + this.upCoins + ')';
    }
}
