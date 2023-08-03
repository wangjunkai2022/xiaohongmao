package org.bouncycastle.crypto.prng.drbg;

import org.bouncycastle.math.ec.ECPoint;

/* loaded from: classes4.dex */
public class DualECPoints {
    private final int cofactor;

    /* renamed from: p  reason: collision with root package name */
    private final ECPoint f91350p;

    /* renamed from: q  reason: collision with root package name */
    private final ECPoint f91351q;
    private final int securityStrength;

    public DualECPoints(int i4, ECPoint eCPoint, ECPoint eCPoint2, int i10) {
        if (!eCPoint.getCurve().equals(eCPoint2.getCurve())) {
            throw new IllegalArgumentException("points need to be on the same curve");
        }
        this.securityStrength = i4;
        this.f91350p = eCPoint;
        this.f91351q = eCPoint2;
        this.cofactor = i10;
    }

    private static int log2(int i4) {
        int i10 = 0;
        while (true) {
            i4 >>= 1;
            if (i4 == 0) {
                return i10;
            }
            i10++;
        }
    }

    public int getCofactor() {
        return this.cofactor;
    }

    public int getMaxOutlen() {
        return ((this.f91350p.getCurve().getFieldSize() - (log2(this.cofactor) + 13)) / 8) * 8;
    }

    public ECPoint getP() {
        return this.f91350p;
    }

    public ECPoint getQ() {
        return this.f91351q;
    }

    public int getSecurityStrength() {
        return this.securityStrength;
    }

    public int getSeedLen() {
        return this.f91350p.getCurve().getFieldSize();
    }
}
