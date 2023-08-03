package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PeeragePriceBean.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/PeeragePriceBean;", "", "peerageId", "", "price", "", "(IF)V", "getPeerageId", "()I", "getPrice", "()F", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PeeragePriceBean {
    @SerializedName("peerage_id")
    private final int peerageId;
    private final float price;

    public PeeragePriceBean(int i4, float f10) {
        this.peerageId = i4;
        this.price = f10;
    }

    public static /* synthetic */ PeeragePriceBean copy$default(PeeragePriceBean peeragePriceBean, int i4, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = peeragePriceBean.peerageId;
        }
        if ((i10 & 2) != 0) {
            f10 = peeragePriceBean.price;
        }
        return peeragePriceBean.copy(i4, f10);
    }

    public final int component1() {
        return this.peerageId;
    }

    public final float component2() {
        return this.price;
    }

    @g
    public final PeeragePriceBean copy(int i4, float f10) {
        return new PeeragePriceBean(i4, f10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PeeragePriceBean) {
            PeeragePriceBean peeragePriceBean = (PeeragePriceBean) obj;
            return this.peerageId == peeragePriceBean.peerageId && Intrinsics.areEqual((Object) Float.valueOf(this.price), (Object) Float.valueOf(peeragePriceBean.price));
        }
        return false;
    }

    public final int getPeerageId() {
        return this.peerageId;
    }

    public final float getPrice() {
        return this.price;
    }

    public int hashCode() {
        return (this.peerageId * 31) + Float.floatToIntBits(this.price);
    }

    @g
    public String toString() {
        return "PeeragePriceBean(peerageId=" + this.peerageId + ", price=" + this.price + ')';
    }
}
