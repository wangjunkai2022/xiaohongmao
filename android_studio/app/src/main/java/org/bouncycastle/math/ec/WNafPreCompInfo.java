package org.bouncycastle.math.ec;

/* loaded from: classes5.dex */
public class WNafPreCompInfo implements PreCompInfo {
    volatile int promotionCountdown = 4;
    protected int confWidth = -1;
    protected ECPoint[] preComp = null;
    protected ECPoint[] preCompNeg = null;
    protected ECPoint twice = null;
    protected int width = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public int decrementPromotionCountdown() {
        int i4 = this.promotionCountdown;
        if (i4 > 0) {
            int i10 = i4 - 1;
            this.promotionCountdown = i10;
            return i10;
        }
        return i4;
    }

    public int getConfWidth() {
        return this.confWidth;
    }

    public ECPoint[] getPreComp() {
        return this.preComp;
    }

    public ECPoint[] getPreCompNeg() {
        return this.preCompNeg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getPromotionCountdown() {
        return this.promotionCountdown;
    }

    public ECPoint getTwice() {
        return this.twice;
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isPromoted() {
        return this.promotionCountdown <= 0;
    }

    public void setConfWidth(int i4) {
        this.confWidth = i4;
    }

    public void setPreComp(ECPoint[] eCPointArr) {
        this.preComp = eCPointArr;
    }

    public void setPreCompNeg(ECPoint[] eCPointArr) {
        this.preCompNeg = eCPointArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPromotionCountdown(int i4) {
        this.promotionCountdown = i4;
    }

    public void setTwice(ECPoint eCPoint) {
        this.twice = eCPoint;
    }

    public void setWidth(int i4) {
        this.width = i4;
    }
}
