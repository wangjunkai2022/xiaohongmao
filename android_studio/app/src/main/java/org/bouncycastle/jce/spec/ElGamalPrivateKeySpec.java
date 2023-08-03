package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes5.dex */
public class ElGamalPrivateKeySpec extends ElGamalKeySpec {

    /* renamed from: x  reason: collision with root package name */
    private BigInteger f91397x;

    public ElGamalPrivateKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f91397x = bigInteger;
    }

    public BigInteger getX() {
        return this.f91397x;
    }
}
