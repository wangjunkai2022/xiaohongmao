package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes5.dex */
public class ElGamalPublicKeySpec extends ElGamalKeySpec {

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f91398y;

    public ElGamalPublicKeySpec(BigInteger bigInteger, ElGamalParameterSpec elGamalParameterSpec) {
        super(elGamalParameterSpec);
        this.f91398y = bigInteger;
    }

    public BigInteger getY() {
        return this.f91398y;
    }
}
