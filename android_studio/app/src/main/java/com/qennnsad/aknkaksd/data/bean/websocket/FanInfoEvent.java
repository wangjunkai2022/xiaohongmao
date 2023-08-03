package com.qennnsad.aknkaksd.data.bean.websocket;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FanInfoEvent.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J;\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u0005HÖ\u0001J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u000b\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0007\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000b¨\u0006\u001e"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/websocket/FanInfoEvent;", "", "type", "", "level", "", "coins", "upLevel", "freeGifts", "(Ljava/lang/String;IIII)V", "getCoins", "()I", "getFreeGifts", "setFreeGifts", "(I)V", "getLevel", "getType", "()Ljava/lang/String;", "getUpLevel", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "", "other", "hashCode", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FanInfoEvent {
    private final int coins;
    @SerializedName("free_gifts")
    private int freeGifts;
    private final int level;
    @g
    private final String type;
    @SerializedName("up_level")
    private final int upLevel;

    public FanInfoEvent(@g String type, int i4, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.level = i4;
        this.coins = i10;
        this.upLevel = i11;
        this.freeGifts = i12;
    }

    public static /* synthetic */ FanInfoEvent copy$default(FanInfoEvent fanInfoEvent, String str, int i4, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = fanInfoEvent.type;
        }
        if ((i13 & 2) != 0) {
            i4 = fanInfoEvent.level;
        }
        int i14 = i4;
        if ((i13 & 4) != 0) {
            i10 = fanInfoEvent.coins;
        }
        int i15 = i10;
        if ((i13 & 8) != 0) {
            i11 = fanInfoEvent.upLevel;
        }
        int i16 = i11;
        if ((i13 & 16) != 0) {
            i12 = fanInfoEvent.freeGifts;
        }
        return fanInfoEvent.copy(str, i14, i15, i16, i12);
    }

    @g
    public final String component1() {
        return this.type;
    }

    public final int component2() {
        return this.level;
    }

    public final int component3() {
        return this.coins;
    }

    public final int component4() {
        return this.upLevel;
    }

    public final int component5() {
        return this.freeGifts;
    }

    @g
    public final FanInfoEvent copy(@g String type, int i4, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new FanInfoEvent(type, i4, i10, i11, i12);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FanInfoEvent) {
            FanInfoEvent fanInfoEvent = (FanInfoEvent) obj;
            return Intrinsics.areEqual(this.type, fanInfoEvent.type) && this.level == fanInfoEvent.level && this.coins == fanInfoEvent.coins && this.upLevel == fanInfoEvent.upLevel && this.freeGifts == fanInfoEvent.freeGifts;
        }
        return false;
    }

    public final int getCoins() {
        return this.coins;
    }

    public final int getFreeGifts() {
        return this.freeGifts;
    }

    public final int getLevel() {
        return this.level;
    }

    @g
    public final String getType() {
        return this.type;
    }

    public final int getUpLevel() {
        return this.upLevel;
    }

    public int hashCode() {
        return (((((((this.type.hashCode() * 31) + this.level) * 31) + this.coins) * 31) + this.upLevel) * 31) + this.freeGifts;
    }

    public final void setFreeGifts(int i4) {
        this.freeGifts = i4;
    }

    @g
    public String toString() {
        return "FanInfoEvent(type=" + this.type + ", level=" + this.level + ", coins=" + this.coins + ", upLevel=" + this.upLevel + ", freeGifts=" + this.freeGifts + ')';
    }
}
