package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes4.dex */
public class GOST3410Parameters implements CipherParameters {

    /* renamed from: a  reason: collision with root package name */
    private BigInteger f91332a;

    /* renamed from: p  reason: collision with root package name */
    private BigInteger f91333p;

    /* renamed from: q  reason: collision with root package name */
    private BigInteger f91334q;
    private GOST3410ValidationParameters validation;

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f91333p = bigInteger;
        this.f91334q = bigInteger2;
        this.f91332a = bigInteger3;
    }

    public GOST3410Parameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, GOST3410ValidationParameters gOST3410ValidationParameters) {
        this.f91332a = bigInteger3;
        this.f91333p = bigInteger;
        this.f91334q = bigInteger2;
        this.validation = gOST3410ValidationParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof GOST3410Parameters) {
            GOST3410Parameters gOST3410Parameters = (GOST3410Parameters) obj;
            return gOST3410Parameters.getP().equals(this.f91333p) && gOST3410Parameters.getQ().equals(this.f91334q) && gOST3410Parameters.getA().equals(this.f91332a);
        }
        return false;
    }

    public BigInteger getA() {
        return this.f91332a;
    }

    public BigInteger getP() {
        return this.f91333p;
    }

    public BigInteger getQ() {
        return this.f91334q;
    }

    public GOST3410ValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (this.f91333p.hashCode() ^ this.f91334q.hashCode()) ^ this.f91332a.hashCode();
    }
}
