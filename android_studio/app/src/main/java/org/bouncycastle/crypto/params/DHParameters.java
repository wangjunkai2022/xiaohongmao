package org.bouncycastle.crypto.params;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.util.Properties;

/* loaded from: classes4.dex */
public class DHParameters implements CipherParameters {
    private static final int DEFAULT_MINIMUM_LENGTH = 160;

    /* renamed from: g  reason: collision with root package name */
    private BigInteger f91308g;

    /* renamed from: j  reason: collision with root package name */
    private BigInteger f91309j;

    /* renamed from: l  reason: collision with root package name */
    private int f91310l;

    /* renamed from: m  reason: collision with root package name */
    private int f91311m;

    /* renamed from: p  reason: collision with root package name */
    private BigInteger f91312p;

    /* renamed from: q  reason: collision with root package name */
    private BigInteger f91313q;
    private DHValidationParameters validation;

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2) {
        this(bigInteger, bigInteger2, null, 0);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, 0);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i4) {
        this(bigInteger, bigInteger2, bigInteger3, getDefaultMParam(i4), i4, null, null);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i4, int i10) {
        this(bigInteger, bigInteger2, bigInteger3, i4, i10, null, null);
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i4, int i10, BigInteger bigInteger4, DHValidationParameters dHValidationParameters) {
        if (i10 != 0) {
            if (i10 > bigInteger.bitLength()) {
                throw new IllegalArgumentException("when l value specified, it must satisfy 2^(l-1) <= p");
            }
            if (i10 < i4) {
                throw new IllegalArgumentException("when l value specified, it may not be less than m value");
            }
        }
        if (i4 > bigInteger.bitLength() && !Properties.isOverrideSet("org.bouncycastle.dh.allow_unsafe_p_value")) {
            throw new IllegalArgumentException("unsafe p value so small specific l required");
        }
        this.f91308g = bigInteger2;
        this.f91312p = bigInteger;
        this.f91313q = bigInteger3;
        this.f91311m = i4;
        this.f91310l = i10;
        this.f91309j = bigInteger4;
        this.validation = dHValidationParameters;
    }

    public DHParameters(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, DHValidationParameters dHValidationParameters) {
        this(bigInteger, bigInteger2, bigInteger3, 160, 0, bigInteger4, dHValidationParameters);
    }

    private static int getDefaultMParam(int i4) {
        if (i4 != 0 && i4 < 160) {
            return i4;
        }
        return 160;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DHParameters) {
            DHParameters dHParameters = (DHParameters) obj;
            if (getQ() != null) {
                if (!getQ().equals(dHParameters.getQ())) {
                    return false;
                }
            } else if (dHParameters.getQ() != null) {
                return false;
            }
            return dHParameters.getP().equals(this.f91312p) && dHParameters.getG().equals(this.f91308g);
        }
        return false;
    }

    public BigInteger getG() {
        return this.f91308g;
    }

    public BigInteger getJ() {
        return this.f91309j;
    }

    public int getL() {
        return this.f91310l;
    }

    public int getM() {
        return this.f91311m;
    }

    public BigInteger getP() {
        return this.f91312p;
    }

    public BigInteger getQ() {
        return this.f91313q;
    }

    public DHValidationParameters getValidationParameters() {
        return this.validation;
    }

    public int hashCode() {
        return (getP().hashCode() ^ getG().hashCode()) ^ (getQ() != null ? getQ().hashCode() : 0);
    }
}
