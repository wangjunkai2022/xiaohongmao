package org.bouncycastle.crypto.params;

import com.google.android.exoplayer2.analytics.j1;
import java.math.BigInteger;
import java.util.Objects;
import org.bouncycastle.asn1.x9.X9ECParameters;
import org.bouncycastle.math.ec.ECAlgorithms;
import org.bouncycastle.math.ec.ECConstants;
import org.bouncycastle.math.ec.ECCurve;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes4.dex */
public class ECDomainParameters implements ECConstants {
    private final ECPoint G;
    private final ECCurve curve;

    /* renamed from: h  reason: collision with root package name */
    private final BigInteger f91323h;
    private BigInteger hInv;

    /* renamed from: n  reason: collision with root package name */
    private final BigInteger f91324n;
    private final byte[] seed;

    public ECDomainParameters(X9ECParameters x9ECParameters) {
        this(x9ECParameters.getCurve(), x9ECParameters.getG(), x9ECParameters.getN(), x9ECParameters.getH(), x9ECParameters.getSeed());
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger) {
        this(eCCurve, eCPoint, bigInteger, ECConstants.ONE, null);
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2) {
        this(eCCurve, eCPoint, bigInteger, bigInteger2, null);
    }

    public ECDomainParameters(ECCurve eCCurve, ECPoint eCPoint, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this.hInv = null;
        Objects.requireNonNull(eCCurve, "curve");
        Objects.requireNonNull(bigInteger, "n");
        this.curve = eCCurve;
        this.G = validatePublicPoint(eCCurve, eCPoint);
        this.f91324n = bigInteger;
        this.f91323h = bigInteger2;
        this.seed = Arrays.clone(bArr);
    }

    static ECPoint validatePublicPoint(ECCurve eCCurve, ECPoint eCPoint) {
        Objects.requireNonNull(eCPoint, "Point cannot be null");
        ECPoint normalize = ECAlgorithms.importPoint(eCCurve, eCPoint).normalize();
        if (normalize.isInfinity()) {
            throw new IllegalArgumentException("Point at infinity");
        }
        if (normalize.isValid()) {
            return normalize;
        }
        throw new IllegalArgumentException("Point not on curve");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ECDomainParameters) {
            ECDomainParameters eCDomainParameters = (ECDomainParameters) obj;
            return this.curve.equals(eCDomainParameters.curve) && this.G.equals(eCDomainParameters.G) && this.f91324n.equals(eCDomainParameters.f91324n);
        }
        return false;
    }

    public ECCurve getCurve() {
        return this.curve;
    }

    public ECPoint getG() {
        return this.G;
    }

    public BigInteger getH() {
        return this.f91323h;
    }

    public synchronized BigInteger getHInv() {
        if (this.hInv == null) {
            this.hInv = BigIntegers.modOddInverseVar(this.f91324n, this.f91323h);
        }
        return this.hInv;
    }

    public BigInteger getN() {
        return this.f91324n;
    }

    public byte[] getSeed() {
        return Arrays.clone(this.seed);
    }

    public int hashCode() {
        return ((((this.curve.hashCode() ^ j1.R) * 257) ^ this.G.hashCode()) * 257) ^ this.f91324n.hashCode();
    }

    public BigInteger validatePrivateScalar(BigInteger bigInteger) {
        Objects.requireNonNull(bigInteger, "Scalar cannot be null");
        if (bigInteger.compareTo(ECConstants.ONE) < 0 || bigInteger.compareTo(getN()) >= 0) {
            throw new IllegalArgumentException("Scalar is not in the interval [1, n - 1]");
        }
        return bigInteger;
    }

    public ECPoint validatePublicPoint(ECPoint eCPoint) {
        return validatePublicPoint(getCurve(), eCPoint);
    }
}
