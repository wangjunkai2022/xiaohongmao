package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes5.dex */
public class ECPrivateKeySpec extends ECKeySpec {

    /* renamed from: d  reason: collision with root package name */
    private BigInteger f91393d;

    public ECPrivateKeySpec(BigInteger bigInteger, ECParameterSpec eCParameterSpec) {
        super(eCParameterSpec);
        this.f91393d = bigInteger;
    }

    public BigInteger getD() {
        return this.f91393d;
    }
}
