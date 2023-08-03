package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public class NaccacheSternKeyParameters extends AsymmetricKeyParameter {

    /* renamed from: g  reason: collision with root package name */
    private BigInteger f91342g;
    int lowerSigmaBound;

    /* renamed from: n  reason: collision with root package name */
    private BigInteger f91343n;

    public NaccacheSternKeyParameters(boolean z9, BigInteger bigInteger, BigInteger bigInteger2, int i4) {
        super(z9);
        this.f91342g = bigInteger;
        this.f91343n = bigInteger2;
        this.lowerSigmaBound = i4;
    }

    public BigInteger getG() {
        return this.f91342g;
    }

    public int getLowerSigmaBound() {
        return this.lowerSigmaBound;
    }

    public BigInteger getModulus() {
        return this.f91343n;
    }
}
