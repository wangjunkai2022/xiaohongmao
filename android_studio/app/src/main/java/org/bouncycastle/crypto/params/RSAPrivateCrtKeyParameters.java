package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public class RSAPrivateCrtKeyParameters extends RSAKeyParameters {
    private BigInteger dP;
    private BigInteger dQ;

    /* renamed from: e  reason: collision with root package name */
    private BigInteger f91344e;

    /* renamed from: p  reason: collision with root package name */
    private BigInteger f91345p;

    /* renamed from: q  reason: collision with root package name */
    private BigInteger f91346q;
    private BigInteger qInv;

    public RSAPrivateCrtKeyParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        super(true, bigInteger, bigInteger3);
        this.f91344e = bigInteger2;
        this.f91345p = bigInteger4;
        this.f91346q = bigInteger5;
        this.dP = bigInteger6;
        this.dQ = bigInteger7;
        this.qInv = bigInteger8;
    }

    public BigInteger getDP() {
        return this.dP;
    }

    public BigInteger getDQ() {
        return this.dQ;
    }

    public BigInteger getP() {
        return this.f91345p;
    }

    public BigInteger getPublicExponent() {
        return this.f91344e;
    }

    public BigInteger getQ() {
        return this.f91346q;
    }

    public BigInteger getQInv() {
        return this.qInv;
    }
}
