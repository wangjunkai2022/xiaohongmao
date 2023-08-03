package org.bouncycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.SRP6GroupParameters;

/* loaded from: classes4.dex */
public class SRP6Client {
    protected BigInteger A;
    protected BigInteger B;
    protected BigInteger Key;
    protected BigInteger M1;
    protected BigInteger M2;
    protected BigInteger N;
    protected BigInteger S;

    /* renamed from: a  reason: collision with root package name */
    protected BigInteger f91180a;
    protected Digest digest;

    /* renamed from: g  reason: collision with root package name */
    protected BigInteger f91181g;
    protected SecureRandom random;

    /* renamed from: u  reason: collision with root package name */
    protected BigInteger f91182u;

    /* renamed from: x  reason: collision with root package name */
    protected BigInteger f91183x;

    private BigInteger calculateS() {
        BigInteger calculateK = SRP6Util.calculateK(this.digest, this.N, this.f91181g);
        return this.B.subtract(this.f91181g.modPow(this.f91183x, this.N).multiply(calculateK).mod(this.N)).mod(this.N).modPow(this.f91182u.multiply(this.f91183x).add(this.f91180a), this.N);
    }

    public BigInteger calculateClientEvidenceMessage() throws CryptoException {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3 = this.A;
        if (bigInteger3 == null || (bigInteger = this.B) == null || (bigInteger2 = this.S) == null) {
            throw new CryptoException("Impossible to compute M1: some data are missing from the previous operations (A,B,S)");
        }
        BigInteger calculateM1 = SRP6Util.calculateM1(this.digest, this.N, bigInteger3, bigInteger, bigInteger2);
        this.M1 = calculateM1;
        return calculateM1;
    }

    public BigInteger calculateSecret(BigInteger bigInteger) throws CryptoException {
        BigInteger validatePublicValue = SRP6Util.validatePublicValue(this.N, bigInteger);
        this.B = validatePublicValue;
        this.f91182u = SRP6Util.calculateU(this.digest, this.N, this.A, validatePublicValue);
        BigInteger calculateS = calculateS();
        this.S = calculateS;
        return calculateS;
    }

    public BigInteger calculateSessionKey() throws CryptoException {
        BigInteger bigInteger = this.S;
        if (bigInteger == null || this.M1 == null || this.M2 == null) {
            throw new CryptoException("Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)");
        }
        BigInteger calculateKey = SRP6Util.calculateKey(this.digest, this.N, bigInteger);
        this.Key = calculateKey;
        return calculateKey;
    }

    public BigInteger generateClientCredentials(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f91183x = SRP6Util.calculateX(this.digest, this.N, bArr, bArr2, bArr3);
        BigInteger selectPrivateValue = selectPrivateValue();
        this.f91180a = selectPrivateValue;
        BigInteger modPow = this.f91181g.modPow(selectPrivateValue, this.N);
        this.A = modPow;
        return modPow;
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, Digest digest, SecureRandom secureRandom) {
        this.N = bigInteger;
        this.f91181g = bigInteger2;
        this.digest = digest;
        this.random = secureRandom;
    }

    public void init(SRP6GroupParameters sRP6GroupParameters, Digest digest, SecureRandom secureRandom) {
        init(sRP6GroupParameters.getN(), sRP6GroupParameters.getG(), digest, secureRandom);
    }

    protected BigInteger selectPrivateValue() {
        return SRP6Util.generatePrivateValue(this.digest, this.N, this.f91181g, this.random);
    }

    public boolean verifyServerEvidenceMessage(BigInteger bigInteger) throws CryptoException {
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4 = this.A;
        if (bigInteger4 == null || (bigInteger2 = this.M1) == null || (bigInteger3 = this.S) == null) {
            throw new CryptoException("Impossible to compute and verify M2: some data are missing from the previous operations (A,M1,S)");
        }
        if (SRP6Util.calculateM2(this.digest, this.N, bigInteger4, bigInteger2, bigInteger3).equals(bigInteger)) {
            this.M2 = bigInteger;
            return true;
        }
        return false;
    }
}
