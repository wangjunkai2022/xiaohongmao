package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m8.g;
import m8.h;

/* compiled from: DepositOption.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J1\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\u0019"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/DepositOption;", "", "coins", "", "yuan", "highlighted", "", "selected", "(IIZZ)V", "getCoins", "()I", "getHighlighted", "()Z", "getSelected", "getYuan", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DepositOption {
    private final int coins;
    private final boolean highlighted;
    private final boolean selected;
    private final int yuan;

    public DepositOption(int i4, int i10, boolean z9, boolean z10) {
        this.coins = i4;
        this.yuan = i10;
        this.highlighted = z9;
        this.selected = z10;
    }

    public static /* synthetic */ DepositOption copy$default(DepositOption depositOption, int i4, int i10, boolean z9, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = depositOption.coins;
        }
        if ((i11 & 2) != 0) {
            i10 = depositOption.yuan;
        }
        if ((i11 & 4) != 0) {
            z9 = depositOption.highlighted;
        }
        if ((i11 & 8) != 0) {
            z10 = depositOption.selected;
        }
        return depositOption.copy(i4, i10, z9, z10);
    }

    public final int component1() {
        return this.coins;
    }

    public final int component2() {
        return this.yuan;
    }

    public final boolean component3() {
        return this.highlighted;
    }

    public final boolean component4() {
        return this.selected;
    }

    @g
    public final DepositOption copy(int i4, int i10, boolean z9, boolean z10) {
        return new DepositOption(i4, i10, z9, z10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DepositOption) {
            DepositOption depositOption = (DepositOption) obj;
            return this.coins == depositOption.coins && this.yuan == depositOption.yuan && this.highlighted == depositOption.highlighted && this.selected == depositOption.selected;
        }
        return false;
    }

    public final int getCoins() {
        return this.coins;
    }

    public final boolean getHighlighted() {
        return this.highlighted;
    }

    public final boolean getSelected() {
        return this.selected;
    }

    public final int getYuan() {
        return this.yuan;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int i4 = ((this.coins * 31) + this.yuan) * 31;
        boolean z9 = this.highlighted;
        int i10 = z9;
        if (z9 != 0) {
            i10 = 1;
        }
        int i11 = (i4 + i10) * 31;
        boolean z10 = this.selected;
        return i11 + (z10 ? 1 : z10 ? 1 : 0);
    }

    @g
    public String toString() {
        return "DepositOption(coins=" + this.coins + ", yuan=" + this.yuan + ", highlighted=" + this.highlighted + ", selected=" + this.selected + ')';
    }

    public /* synthetic */ DepositOption(int i4, int i10, boolean z9, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, i10, z9, (i11 & 8) != 0 ? false : z10);
    }
}
