package org.bouncycastle.math.ec;

/* loaded from: classes5.dex */
public class ScaleYPointMap implements ECPointMap {
    protected final ECFieldElement scale;

    public ScaleYPointMap(ECFieldElement eCFieldElement) {
        this.scale = eCFieldElement;
    }

    @Override // org.bouncycastle.math.ec.ECPointMap
    public ECPoint map(ECPoint eCPoint) {
        return eCPoint.scaleY(this.scale);
    }
}
