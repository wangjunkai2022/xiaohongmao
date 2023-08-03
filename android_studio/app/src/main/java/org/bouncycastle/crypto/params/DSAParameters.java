package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;

/* loaded from: classes4.dex */
public class DSAParameters implements CipherParameters {

    /* renamed from: g  reason: collision with root package name */
    private BigInteger f91318g;

    /* renamed from: p  reason: collision with root package name */
    private BigInteger f91319p;

    /* renamed from: q  reason: collision with root package name */
    private BigInteger f91320q;
    private DSAValidationParameters validation;

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.f91318g = bigInteger3;
        this.f91319p = bigInteger;
        this.f91320q = bigInteger2;
    }

    public DSAParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, DSAValidationParameters dSAValidationParameters) {
        this.f91318g = bigInteger3;
        this.f91319p = bigInteger;
        this.f91320q = bigInteger2;
        this.validation = dSAValidationParameters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAParameters) {
            DSAParameters dSAParameters = (DSAParameters) obj;
            return dSAParameters.getP().equals(this.f91319p) && dSAParameters.getQ().equals(this.f91320q) && dSAParameters.getG().equals(this.f91318g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f91318g;
    }

    public BigInteger getP() {
        return this.f91319p;
    }

    public BigInteger getQ() {
        return this.f91320q;
    }

    public DSAValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getQ().hashCode()) ^ getG().hashCode();
    }
}
