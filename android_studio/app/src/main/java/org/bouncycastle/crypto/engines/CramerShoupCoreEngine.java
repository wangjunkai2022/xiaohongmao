package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.params.CramerShoupKeyParameters;
import org.bouncycastle.crypto.params.CramerShoupPrivateKeyParameters;
import org.bouncycastle.crypto.params.CramerShoupPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Strings;

/* loaded from: classes4.dex */
public class CramerShoupCoreEngine {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private boolean forEncryption;
    private CramerShoupKeyParameters key;
    private byte[] label = null;
    private SecureRandom random;

    /* loaded from: classes4.dex */
    public static class CramerShoupCiphertextException extends Exception {
        private static final long serialVersionUID = -6360977166495345076L;

        public CramerShoupCiphertextException(String str) {
            super(str);
        }
    }

    private BigInteger generateRandomElement(BigInteger bigInteger, SecureRandom secureRandom) {
        BigInteger bigInteger2 = ONE;
        return BigIntegers.createRandomInRange(bigInteger2, bigInteger.subtract(bigInteger2), secureRandom);
    }

    private boolean isValidMessage(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.compareTo(bigInteger2) < 0;
    }

    public BigInteger convertInput(byte[] bArr, int i4, int i10) {
        if (i10 <= getInputBlockSize() + 1) {
            if (i10 == getInputBlockSize() + 1 && this.forEncryption) {
                throw new DataLengthException("input too large for Cramer Shoup cipher.");
            }
            if (i4 != 0 || i10 != bArr.length) {
                byte[] bArr2 = new byte[i10];
                System.arraycopy(bArr, i4, bArr2, 0, i10);
                bArr = bArr2;
            }
            BigInteger bigInteger = new BigInteger(1, bArr);
            if (bigInteger.compareTo(this.key.getParameters().getP()) < 0) {
                return bigInteger;
            }
            throw new DataLengthException("input too large for Cramer Shoup cipher.");
        }
        throw new DataLengthException("input too large for Cramer Shoup cipher.");
    }

    public byte[] convertOutput(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (this.forEncryption) {
            if (byteArray[0] == 0) {
                int length = byteArray.length - 1;
                byte[] bArr = new byte[length];
                System.arraycopy(byteArray, 1, bArr, 0, length);
                return bArr;
            }
        } else if (byteArray[0] == 0 && byteArray.length > getOutputBlockSize()) {
            int length2 = byteArray.length - 1;
            byte[] bArr2 = new byte[length2];
            System.arraycopy(byteArray, 1, bArr2, 0, length2);
            return bArr2;
        } else if (byteArray.length < getOutputBlockSize()) {
            int outputBlockSize = getOutputBlockSize();
            byte[] bArr3 = new byte[outputBlockSize];
            System.arraycopy(byteArray, 0, bArr3, outputBlockSize - byteArray.length, byteArray.length);
            return bArr3;
        }
        return byteArray;
    }

    public BigInteger decryptBlock(CramerShoupCiphertext cramerShoupCiphertext) throws CramerShoupCiphertextException {
        if (this.key.isPrivate() && !this.forEncryption) {
            CramerShoupKeyParameters cramerShoupKeyParameters = this.key;
            if (cramerShoupKeyParameters instanceof CramerShoupPrivateKeyParameters) {
                CramerShoupPrivateKeyParameters cramerShoupPrivateKeyParameters = (CramerShoupPrivateKeyParameters) cramerShoupKeyParameters;
                BigInteger p9 = cramerShoupPrivateKeyParameters.getParameters().getP();
                Digest h4 = cramerShoupPrivateKeyParameters.getParameters().getH();
                byte[] byteArray = cramerShoupCiphertext.getU1().toByteArray();
                h4.update(byteArray, 0, byteArray.length);
                byte[] byteArray2 = cramerShoupCiphertext.getU2().toByteArray();
                h4.update(byteArray2, 0, byteArray2.length);
                byte[] byteArray3 = cramerShoupCiphertext.getE().toByteArray();
                h4.update(byteArray3, 0, byteArray3.length);
                byte[] bArr = this.label;
                if (bArr != null) {
                    h4.update(bArr, 0, bArr.length);
                }
                byte[] bArr2 = new byte[h4.getDigestSize()];
                h4.doFinal(bArr2, 0);
                BigInteger bigInteger = new BigInteger(1, bArr2);
                if (cramerShoupCiphertext.f91229v.equals(cramerShoupCiphertext.f91227u1.modPow(cramerShoupPrivateKeyParameters.getX1().add(cramerShoupPrivateKeyParameters.getY1().multiply(bigInteger)), p9).multiply(cramerShoupCiphertext.f91228u2.modPow(cramerShoupPrivateKeyParameters.getX2().add(cramerShoupPrivateKeyParameters.getY2().multiply(bigInteger)), p9)).mod(p9))) {
                    return cramerShoupCiphertext.f91226e.multiply(cramerShoupCiphertext.f91227u1.modPow(cramerShoupPrivateKeyParameters.getZ(), p9).modInverse(p9)).mod(p9);
                }
                throw new CramerShoupCiphertextException("Sorry, that ciphertext is not correct");
            }
        }
        return null;
    }

    public CramerShoupCiphertext encryptBlock(BigInteger bigInteger) {
        if (this.key.isPrivate() || !this.forEncryption) {
            return null;
        }
        CramerShoupKeyParameters cramerShoupKeyParameters = this.key;
        if (cramerShoupKeyParameters instanceof CramerShoupPublicKeyParameters) {
            CramerShoupPublicKeyParameters cramerShoupPublicKeyParameters = (CramerShoupPublicKeyParameters) cramerShoupKeyParameters;
            BigInteger p9 = cramerShoupPublicKeyParameters.getParameters().getP();
            BigInteger g12 = cramerShoupPublicKeyParameters.getParameters().getG1();
            BigInteger g22 = cramerShoupPublicKeyParameters.getParameters().getG2();
            BigInteger h4 = cramerShoupPublicKeyParameters.getH();
            if (isValidMessage(bigInteger, p9)) {
                BigInteger generateRandomElement = generateRandomElement(p9, this.random);
                BigInteger modPow = g12.modPow(generateRandomElement, p9);
                BigInteger modPow2 = g22.modPow(generateRandomElement, p9);
                BigInteger mod = h4.modPow(generateRandomElement, p9).multiply(bigInteger).mod(p9);
                Digest h10 = cramerShoupPublicKeyParameters.getParameters().getH();
                byte[] byteArray = modPow.toByteArray();
                h10.update(byteArray, 0, byteArray.length);
                byte[] byteArray2 = modPow2.toByteArray();
                h10.update(byteArray2, 0, byteArray2.length);
                byte[] byteArray3 = mod.toByteArray();
                h10.update(byteArray3, 0, byteArray3.length);
                byte[] bArr = this.label;
                if (bArr != null) {
                    h10.update(bArr, 0, bArr.length);
                }
                byte[] bArr2 = new byte[h10.getDigestSize()];
                h10.doFinal(bArr2, 0);
                return new CramerShoupCiphertext(modPow, modPow2, mod, cramerShoupPublicKeyParameters.getC().modPow(generateRandomElement, p9).multiply(cramerShoupPublicKeyParameters.getD().modPow(generateRandomElement.multiply(new BigInteger(1, bArr2)), p9)).mod(p9));
            }
            return null;
        }
        return null;
    }

    public int getInputBlockSize() {
        int bitLength = (this.key.getParameters().getP().bitLength() + 7) / 8;
        return this.forEncryption ? bitLength - 1 : bitLength;
    }

    public int getOutputBlockSize() {
        int bitLength = (this.key.getParameters().getP().bitLength() + 7) / 8;
        return this.forEncryption ? bitLength : bitLength - 1;
    }

    public void init(boolean z9, CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.key = (CramerShoupKeyParameters) parametersWithRandom.getParameters();
            secureRandom = parametersWithRandom.getRandom();
        } else {
            this.key = (CramerShoupKeyParameters) cipherParameters;
            secureRandom = null;
        }
        this.random = initSecureRandom(z9, secureRandom);
        this.forEncryption = z9;
    }

    public void init(boolean z9, CipherParameters cipherParameters, String str) {
        init(z9, cipherParameters);
        this.label = Strings.toUTF8ByteArray(str);
    }

    protected SecureRandom initSecureRandom(boolean z9, SecureRandom secureRandom) {
        if (z9) {
            return CryptoServicesRegistrar.getSecureRandom(secureRandom);
        }
        return null;
    }
}
