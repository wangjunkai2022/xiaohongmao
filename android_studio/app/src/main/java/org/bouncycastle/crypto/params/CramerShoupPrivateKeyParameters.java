package org.bouncycastle.crypto.params;

import java.math.BigInteger;

/* loaded from: classes4.dex */
public class CramerShoupPrivateKeyParameters extends CramerShoupKeyParameters {
    private CramerShoupPublicKeyParameters pk;

    /* renamed from: x1  reason: collision with root package name */
    private BigInteger f91300x1;

    /* renamed from: x2  reason: collision with root package name */
    private BigInteger f91301x2;

    /* renamed from: y1  reason: collision with root package name */
    private BigInteger f91302y1;

    /* renamed from: y2  reason: collision with root package name */
    private BigInteger f91303y2;

    /* renamed from: z  reason: collision with root package name */
    private BigInteger f91304z;

    public CramerShoupPrivateKeyParameters(CramerShoupParameters cramerShoupParameters, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
        super(true, cramerShoupParameters);
        this.f91300x1 = bigInteger;
        this.f91301x2 = bigInteger2;
        this.f91302y1 = bigInteger3;
        this.f91303y2 = bigInteger4;
        this.f91304z = bigInteger5;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public boolean equals(Object obj) {
        if (obj instanceof CramerShoupPrivateKeyParameters) {
            CramerShoupPrivateKeyParameters cramerShoupPrivateKeyParameters = (CramerShoupPrivateKeyParameters) obj;
            return cramerShoupPrivateKeyParameters.getX1().equals(this.f91300x1) && cramerShoupPrivateKeyParameters.getX2().equals(this.f91301x2) && cramerShoupPrivateKeyParameters.getY1().equals(this.f91302y1) && cramerShoupPrivateKeyParameters.getY2().equals(this.f91303y2) && cramerShoupPrivateKeyParameters.getZ().equals(this.f91304z) && super.equals(obj);
        }
        return false;
    }

    public CramerShoupPublicKeyParameters getPk() {
        return this.pk;
    }

    public BigInteger getX1() {
        return this.f91300x1;
    }

    public BigInteger getX2() {
        return this.f91301x2;
    }

    public BigInteger getY1() {
        return this.f91302y1;
    }

    public BigInteger getY2() {
        return this.f91303y2;
    }

    public BigInteger getZ() {
        return this.f91304z;
    }

    @Override // org.bouncycastle.crypto.params.CramerShoupKeyParameters
    public int hashCode() {
        return ((((this.f91300x1.hashCode() ^ this.f91301x2.hashCode()) ^ this.f91302y1.hashCode()) ^ this.f91303y2.hashCode()) ^ this.f91304z.hashCode()) ^ super.hashCode();
    }

    public void setPk(CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters) {
        this.pk = cramerShoupPublicKeyParameters;
    }
}
