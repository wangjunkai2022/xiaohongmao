package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/HallBean;", "", "isShowLounge", "", "isShowBox", "isShowVegan", "(ZZZ)V", "()Z", "component1", "component2", "component3", "copy", "equals", "other", "hashCode", "", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class HallBean {
    @SerializedName("show_box")
    private final boolean isShowBox;
    @SerializedName("show_lounge")
    private final boolean isShowLounge;
    @SerializedName("show_vegan")
    private final boolean isShowVegan;

    public HallBean(boolean z9, boolean z10, boolean z11) {
        this.isShowLounge = z9;
        this.isShowBox = z10;
        this.isShowVegan = z11;
    }

    public static /* synthetic */ HallBean copy$default(HallBean hallBean, boolean z9, boolean z10, boolean z11, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = hallBean.isShowLounge;
        }
        if ((i4 & 2) != 0) {
            z10 = hallBean.isShowBox;
        }
        if ((i4 & 4) != 0) {
            z11 = hallBean.isShowVegan;
        }
        return hallBean.copy(z9, z10, z11);
    }

    public final boolean component1() {
        return this.isShowLounge;
    }

    public final boolean component2() {
        return this.isShowBox;
    }

    public final boolean component3() {
        return this.isShowVegan;
    }

    @g
    public final HallBean copy(boolean z9, boolean z10, boolean z11) {
        return new HallBean(z9, z10, z11);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HallBean) {
            HallBean hallBean = (HallBean) obj;
            return this.isShowLounge == hallBean.isShowLounge && this.isShowBox == hallBean.isShowBox && this.isShowVegan == hallBean.isShowVegan;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
    public int hashCode() {
        boolean z9 = this.isShowLounge;
        ?? r02 = z9;
        if (z9) {
            r02 = 1;
        }
        int i4 = r02 * 31;
        ?? r22 = this.isShowBox;
        int i10 = r22;
        if (r22 != 0) {
            i10 = 1;
        }
        int i11 = (i4 + i10) * 31;
        boolean z10 = this.isShowVegan;
        return i11 + (z10 ? 1 : z10 ? 1 : 0);
    }

    public final boolean isShowBox() {
        return this.isShowBox;
    }

    public final boolean isShowLounge() {
        return this.isShowLounge;
    }

    public final boolean isShowVegan() {
        return this.isShowVegan;
    }

    @g
    public String toString() {
        return "HallBean(isShowLounge=" + this.isShowLounge + ", isShowBox=" + this.isShowBox + ", isShowVegan=" + this.isShowVegan + ')';
    }
}
