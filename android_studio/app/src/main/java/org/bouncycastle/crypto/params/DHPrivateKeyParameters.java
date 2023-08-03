package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public class DHPrivateKeyParameters extends DHKeyParameters {

    /* renamed from: x  reason: collision with root package name */
    private BigInteger f91314x;

    public DHPrivateKeyParameters(BigInteger bigInteger, DHParameters dHParameters) {
        super(true, dHParameters);
        this.f91314x = bigInteger;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public boolean equals(Object obj) {
        return (obj instanceof DHPrivateKeyParameters) && ((DHPrivateKeyParameters) obj).getX().equals(this.f91314x) && super.equals(obj);
    }

    public BigInteger getX() {
        return this.f91314x;
    }

    @Override // org.bouncycastle.crypto.params.DHKeyParameters
    public int hashCode() {
        return this.f91314x.hashCode() ^ super.hashCode();
    }
}
