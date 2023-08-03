package org.bouncycastle.crypto.agreement;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithUKM;
import org.bouncycastle.math.ec.ECAlgorithms;
import org.bouncycastle.math.ec.ECPoint;
import org.bouncycastle.util.BigIntegers;

/* loaded from: classes4.dex */
public class ECVKOAgreement {
    private final Digest digest;
    private ECPrivateKeyParameters key;
    private BigInteger ukm;

    public ECVKOAgreement(Digest digest) {
        this.digest = digest;
    }

    private byte[] fromPoint(ECPoint eCPoint) {
        BigInteger bigInteger = eCPoint.getAffineXCoord().toBigInteger();
        BigInteger bigInteger2 = eCPoint.getAffineYCoord().toBigInteger();
        int i4 = bigInteger.toByteArray().length > 33 ? 64 : 32;
        int i10 = i4 * 2;
        byte[] bArr = new byte[i10];
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(i4, bigInteger);
        byte[] asUnsignedByteArray2 = BigIntegers.asUnsignedByteArray(i4, bigInteger2);
        for (int i11 = 0; i11 != i4; i11++) {
            bArr[i11] = asUnsignedByteArray[(i4 - i11) - 1];
        }
        for (int i12 = 0; i12 != i4; i12++) {
            bArr[i4 + i12] = asUnsignedByteArray2[(i4 - i12) - 1];
        }
        this.digest.update(bArr, 0, i10);
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr2, 0);
        return bArr2;
    }

    private static BigInteger toInteger(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i4 = 0; i4 != length; i4++) {
            bArr2[i4] = bArr[(bArr.length - i4) - 1];
        }
        return new BigInteger(1, bArr2);
    }

    public byte[] calculateAgreement(CipherParameters cipherParameters) {
        ECPublicKeyParameters eCPublicKeyParameters = (ECPublicKeyParameters) cipherParameters;
        ECDomainParameters parameters = this.key.getParameters();
        if (parameters.equals(eCPublicKeyParameters.getParameters())) {
            BigInteger mod = parameters.getH().multiply(this.ukm).multiply(this.key.getD()).mod(parameters.getN());
            ECPoint cleanPoint = ECAlgorithms.cleanPoint(parameters.getCurve(), eCPublicKeyParameters.getQ());
            if (cleanPoint.isInfinity()) {
                throw new IllegalStateException("Infinity is not a valid public key for ECDHC");
            }
            ECPoint normalize = cleanPoint.multiply(mod).normalize();
            if (normalize.isInfinity()) {
                throw new IllegalStateException("Infinity is not a valid agreement value for ECVKO");
            }
            return fromPoint(normalize);
        }
        throw new IllegalStateException("ECVKO public key has wrong domain parameters");
    }

    public int getFieldSize() {
        return (this.key.getParameters().getCurve().getFieldSize() + 7) / 8;
    }

    public void init(CipherParameters cipherParameters) {
        ParametersWithUKM parametersWithUKM = (ParametersWithUKM) cipherParameters;
        this.key = (ECPrivateKeyParameters) parametersWithUKM.getParameters();
        this.ukm = toInteger(parametersWithUKM.getUKM());
    }
}
