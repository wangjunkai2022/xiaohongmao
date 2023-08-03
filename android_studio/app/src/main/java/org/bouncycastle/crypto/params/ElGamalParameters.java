package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes4.dex */
public class ElGamalParameters implements CipherParameters {

    /* renamed from: g  reason: collision with root package name */
    private BigInteger f91327g;

    /* renamed from: l  reason: collision with root package name */
    private int f91328l;

    /* renamed from: p  reason: collision with root package name */
    private BigInteger f91329p;

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, 0);
    }

    public ElGamalParameters(BigInteger bigInteger, BigInteger bigInteger2, int i4) {
        this.f91327g = bigInteger2;
        this.f91329p = bigInteger;
        this.f91328l = i4;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ElGamalParameters) {
            ElGamalParameters elGamalParameters = (ElGamalParameters) obj;
            return elGamalParameters.getP().equals(this.f91329p) && elGamalParameters.getG().equals(this.f91327g) && elGamalParameters.getL() == this.f91328l;
        }
        return false;
    }

    public BigInteger getG() {
        return this.f91327g;
    }

    public int getL() {
        return this.f91328l;
    }

    public BigInteger getP() {
        return this.f91329p;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) + this.f91328l;
    }
}
