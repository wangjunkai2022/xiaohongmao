package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;

/* loaded from: classes5.dex */
public class GOST3410PublicKeySpec implements KeySpec {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f91406a;

    /* renamed from: p  reason: collision with root package name */
    private BigInteger f91407p;

    /* renamed from: q  reason: collision with root package name */
    private BigInteger f91408q;

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f91409y;

    public GOST3410PublicKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f91409y = bigInteger;
        this.f91407p = bigInteger2;
        this.f91408q = bigInteger3;
        this.f91406a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f91406a;
    }

    public BigInteger getP() {
        return this.f91407p;
    }

    public BigInteger getQ() {
        return this.f91408q;
    }

    public BigInteger getY() {
        return this.f91409y;
    }
}
