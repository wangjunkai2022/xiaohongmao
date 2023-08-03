package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public class CramerShoupPublicKeyParameters extends CramerShoupKeyParameters {

    /* renamed from: c  reason: collision with root package name */
    private BigInteger f91305c;

    /* renamed from: d  reason: collision with root package name */
    private BigInteger f91306d;

    /* renamed from: h  reason: collision with root package name */
    private BigInteger f91307h;

    public CramerShoupPublicKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        super(false, cramerShoupParameters);
        this.f91305c = bigInteger;
        this.f91306d = bigInteger2;
        this.f91307h = bigInteger3;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public boolean equals(Object obj) {
        if (obj instanceof CramerShoupPublicKeyParameters) {
            CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters) obj;
            return cramerShoupPublicKeyParameters.getC().equals(this.f91305c) && cramerShoupPublicKeyParameters.getD().equals(this.f91306d) && cramerShoupPublicKeyParameters.getH().equals(this.f91307h) && super.equals(obj);
        }
        return false;
    }

    public BigInteger getC() {
        return this.f91305c;
    }

    public BigInteger getD() {
        return this.f91306d;
    }

    public BigInteger getH() {
        return this.f91307h;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public int hashCode() {
        return ((this.f91305c.hashCode() ^ this.f91306d.hashCode()) ^ this.f91307h.hashCode()) ^ super.hashCode();
    }
}
