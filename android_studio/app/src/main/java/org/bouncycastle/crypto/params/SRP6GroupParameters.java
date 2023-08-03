package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public class SRP6GroupParameters {
    private BigInteger N;

    /* renamed from: g  reason: collision with root package name */
    private BigInteger f91347g;

    public SRP6GroupParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this.N = bigInteger;
        this.f91347g = bigInteger2;
    }

    public BigInteger getG() {
        return this.f91347g;
    }

    public BigInteger getN() {
        return this.N;
    }
}
