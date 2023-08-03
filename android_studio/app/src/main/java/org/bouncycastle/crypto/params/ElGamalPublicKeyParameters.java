package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public class ElGamalPublicKeyParameters extends ElGamalKeyParameters {

    /* renamed from: y  reason: collision with root package name */
    private BigInteger f91331y;

    public ElGamalPublicKeyParameters(BigInteger bigInteger, ElGamalParameters elGamalParameters) {
        super(false, elGamalParameters);
        this.f91331y = bigInteger;
    }

    @Override // org.bouncycastle.crypto.params.ElGamalKeyParameters
    public boolean equals(Object obj) {
        return (obj instanceof ElGamalPublicKeyParameters) && ((ElGamalPublicKeyParameters) obj).getY().equals(this.f91331y) && super.equals(obj);
    }

    public BigInteger getY() {
        return this.f91331y;
    }

    @Override // org.bouncycastle.crypto.params.ElGamalKeyParameters
    public int hashCode() {
        return this.f91331y.hashCode() ^ super.hashCode();
    }
}
