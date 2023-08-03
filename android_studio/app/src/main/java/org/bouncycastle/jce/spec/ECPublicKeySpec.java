package org.bouncycastle.jce.spec;

import org.bouncycastle.math.ec.ECPoint;

/* loaded from: classes5.dex */
public class ECPublicKeySpec extends ECKeySpec {

    /* renamed from: q  reason: collision with root package name */
    private ECPoint f91394q;

    public ECPublicKeySpec(ECPoint eCPoint, ECParameterSpec eCParameterSpec) {
        super(eCParameterSpec);
        this.f91394q = eCPoint.getCurve() != null ? eCPoint.normalize() : eCPoint;
    }

    public ECPoint getQ() {
        return this.f91394q;
    }
}
