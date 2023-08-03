package org.bouncycastle.jcajce.spec;

import java.math.BigInteger;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHValidationParameters;

/* loaded from: classes5.dex */
public class DHDomainParameterSpec extends DHParameterSpec {

    /* renamed from: j  reason: collision with root package name */
    private final BigInteger f91375j;

    /* renamed from: m  reason: collision with root package name */
    private final int f91376m;

    /* renamed from: q  reason: collision with root package name */
    private final BigInteger f91377q;
    private DHValidationParameters validationParameters;

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this(bigInteger, bigInteger2, bigInteger3, null, 0);
    }

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i4) {
        this(bigInteger, bigInteger2, bigInteger3, null, i4);
    }

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i4) {
        this(bigInteger, bigInteger2, bigInteger3, bigInteger4, 0, i4);
    }

    public DHDomainParameterSpec(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, int i4, int i10) {
        super(bigInteger, bigInteger3, i10);
        this.f91377q = bigInteger2;
        this.f91375j = bigInteger4;
        this.f91376m = i4;
    }

    public DHDomainParameterSpec(DHParameters dHParameters) {
        this(dHParameters.getP(), dHParameters.getQ(), dHParameters.getG(), dHParameters.getJ(), dHParameters.getM(), dHParameters.getL());
        this.validationParameters = dHParameters.getValidationParameters();
    }

    public DHParameters getDomainParameters() {
        return new DHParameters(getP(), getG(), this.f91377q, this.f91376m, getL(), this.f91375j, this.validationParameters);
    }

    public BigInteger getJ() {
        return this.f91375j;
    }

    public int getM() {
        return this.f91376m;
    }

    public BigInteger getQ() {
        return this.f91377q;
    }
}
