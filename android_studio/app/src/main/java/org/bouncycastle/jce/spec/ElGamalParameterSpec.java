package org.bouncycastle.jce.spec;

import java.math.BigInteger;
import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes5.dex */
public class ElGamalParameterSpec implements AlgorithmParameterSpec {

    /* renamed from: g  reason: collision with root package name */
    private BigInteger f91395g;

    /* renamed from: p  reason: collision with root package name */
    private BigInteger f91396p;

    public ElGamalParameterSpec(BigInteger bigInteger, BigInteger bigInteger2) {
        this.f91396p = bigInteger;
        this.f91395g = bigInteger2;
    }

    public BigInteger getG() {
        return this.f91395g;
    }

    public BigInteger getP() {
        return this.f91396p;
    }
}
