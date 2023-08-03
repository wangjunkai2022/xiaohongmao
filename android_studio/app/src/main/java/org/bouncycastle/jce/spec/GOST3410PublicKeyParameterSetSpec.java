package org.bouncycastle.jce.spec;

import java.math.BigInteger;

/* loaded from: classes5.dex */
public class GOST3410PublicKeyParameterSetSpec {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f91403a;

    /* renamed from: p  reason: collision with root package name */
    private BigInteger f91404p;

    /* renamed from: q  reason: collision with root package name */
    private BigInteger f91405q;

    public GOST3410PublicKeyParameterSetSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f91404p = bigInteger;
        this.f91405q = bigInteger2;
        this.f91403a = bigInteger3;
    }

    public boolean equals(Object obj) {
        if (obj instanceof GOST3410PublicKeyParameterSetSpec) {
            GOST3410PublicKeyParameterSetSpec gOST3410PublicKeyParameterSetSpec = (GOST3410PublicKeyParameterSetSpec) obj;
            return this.f91403a.equals(gOST3410PublicKeyParameterSetSpec.f91403a) && this.f91404p.equals(gOST3410PublicKeyParameterSetSpec.f91404p) && this.f91405q.equals(gOST3410PublicKeyParameterSetSpec.f91405q);
        }
        return false;
    }

    public BigInteger getA() {
        return this.f91403a;
    }

    public BigInteger getP() {
        return this.f91404p;
    }

    public BigInteger getQ() {
        return this.f91405q;
    }

    public int hashCode() {
        return (this.f91403a.hashCode() ^ this.f91404p.hashCode()) ^ this.f91405q.hashCode();
    }
}
