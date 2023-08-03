package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public class DSAPrivateKeyParameters extends DSAKeyParameters {

    /* renamed from: x  reason: collision with root package name */
    private BigInteger f91321x;

    public DSAPrivateKeyParameters(BigInteger bigInteger, DSAParameters dSAParameters) {
        super(true, dSAParameters);
        this.f91321x = bigInteger;
    }

    public BigInteger getX() {
        return this.f91321x;
    }
}
