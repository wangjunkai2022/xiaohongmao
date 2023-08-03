package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.KeySpec;

/* loaded from: classes5.dex */
public class GOST3410PrivateKeySpec implements KeySpec {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f91399a;

    /* renamed from: p  reason: collision with root package name */
    private BigInteger f91400p;

    /* renamed from: q  reason: collision with root package name */
    private BigInteger f91401q;

    /* renamed from: x  reason: collision with root package name */
    private BigInteger f91402x;

    public GOST3410PrivateKeySpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f91402x = bigInteger;
        this.f91400p = bigInteger2;
        this.f91401q = bigInteger3;
        this.f91399a = bigInteger4;
    }

    public BigInteger getA() {
        return this.f91399a;
    }

    public BigInteger getP() {
        return this.f91400p;
    }

    public BigInteger getQ() {
        return this.f91401q;
    }

    public BigInteger getX() {
        return this.f91402x;
    }
}
