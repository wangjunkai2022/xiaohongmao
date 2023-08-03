package org.bouncycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CryptoException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.SRP6GroupParameters;

/* loaded from: classes4.dex */
public class SRP6Server {
    protected BigInteger A;
    protected BigInteger B;
    protected BigInteger Key;
    protected BigInteger M1;
    protected BigInteger M2;
    protected BigInteger N;
    protected BigInteger S;

    /* renamed from: b  reason: collision with root package name */
    protected BigInteger f91184b;
    protected Digest digest;

    /* renamed from: g  reason: collision with root package name */
    protected BigInteger f91185g;
    protected SecureRandom random;

    /* renamed from: u  reason: collision with root package name */
    protected BigInteger f91186u;

    /* renamed from: v  reason: collision with root package name */
    protected BigInteger f91187v;

    private BigInteger calculateS() {
        return this.f91187v.modPow(this.f91186u, this.N).multiply(this.A).mod(this.N).modPow(this.f91184b, this.N);
    }

    public BigInteger calculateSecret(BigInteger bigInteger) throws CryptoException {
        BigInteger validatePublicValue = SRP6Util.validatePublicValue(this.N, bigInteger);
        this.A = validatePublicValue;
        this.f91186u = SRP6Util.calculateU(this.digest, this.N, validatePublicValue, this.B);
        BigInteger calculateS = calculateS();
        this.S = calculateS;
        return calculateS;
    }

    public BigInteger calculateServerEvidenceMessage() throws CryptoException {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigInteger3 = this.A;
        if (bigInteger3 == null || (bigInteger = this.M1) == null || (bigInteger2 = this.S) == null) {
            throw new CryptoException("Impossible to compute M2: some data are missing from the previous operations (A,M1,S)");
        }
        BigInteger calculateM2 = SRP6Util.calculateM2(this.digest, this.N, bigInteger3, bigInteger, bigInteger2);
        this.M2 = calculateM2;
        return calculateM2;
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

    public BigInteger generateServerCredentials() {
        BigInteger calculateK = SRP6Util.calculateK(this.digest, this.N, this.f91185g);
        this.f91184b = selectPrivateValue();
        BigInteger mod = calculateK.multiply(this.f91187v).mod(this.N).add(this.f91185g.modPow(this.f91184b, this.N)).mod(this.N);
        this.B = mod;
        return mod;
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, Digest digest, SecureRandom secureRandom) {
        this.N = bigInteger;
        this.f91185g = bigInteger2;
        this.f91187v = bigInteger3;
        this.random = secureRandom;
        this.digest = digest;
    }

    public void init(SRP6GroupParameters sRP6GroupParameters, BigInteger bigInteger, Digest digest, SecureRandom secureRandom) {
        init(sRP6GroupParameters.getN(), sRP6GroupParameters.getG(), bigInteger, digest, secureRandom);
    }

    protected BigInteger selectPrivateValue() {
        return SRP6Util.generatePrivateValue(this.digest, this.N, this.f91185g, this.random);
    }

    public boolean verifyClientEvidenceMessage(BigInteger bigInteger) throws CryptoException {
        BigInteger bigInteger2;
        BigInteger bigInteger3;
        BigInteger bigInteger4 = this.A;
        if (bigInteger4 == null || (bigInteger2 = this.B) == null || (bigInteger3 = this.S) == null) {
            throw new CryptoException("Impossible to compute and verify M1: some data are missing from the previous operations (A,B,S)");
        }
        if (SRP6Util.calculateM1(this.digest, this.N, bigInteger4, bigInteger2, bigInteger3).equals(bigInteger)) {
            this.M1 = bigInteger;
            return true;
        }
        return false;
    }
}
