package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.bouncycastle.util.Arrays;

/* loaded from: classes4.dex */
class RSACoreEngine {
    private boolean forEncryption;
    private RSAKeyParameters key;

    public BigInteger convertInput(byte[] bArr, int i4, int i10) {
        if (i10 <= getInputBlockSize() + 1) {
            if (i10 != getInputBlockSize() + 1 || this.forEncryption) {
                if (i4 != 0 || i10 != bArr.length) {
                    byte[] bArr2 = new byte[i10];
                    System.arraycopy(bArr, i4, bArr2, 0, i10);
                    bArr = bArr2;
                }
                BigInteger bigInteger = new BigInteger(1, bArr);
                if (bigInteger.compareTo(this.key.getModulus()) < 0) {
                    return bigInteger;
                }
                throw new DataLengthException("input too large for RSA cipher.");
            }
            throw new DataLengthException("input too large for RSA cipher.");
        }
        throw new DataLengthException("input too large for RSA cipher.");
    }

    public byte[] convertOutput(BigInteger bigInteger) {
        byte[] bArr;
        byte[] byteArray = bigInteger.toByteArray();
        if (!this.forEncryption) {
            if (byteArray[0] == 0) {
                int length = byteArray.length - 1;
                bArr = new byte[length];
                System.arraycopy(byteArray, 1, bArr, 0, length);
            } else {
                int length2 = byteArray.length;
                bArr = new byte[length2];
                System.arraycopy(byteArray, 0, bArr, 0, length2);
            }
            Arrays.fill(byteArray, (byte) 0);
            return bArr;
        } else if (byteArray[0] == 0 && byteArray.length > getOutputBlockSize()) {
            int length3 = byteArray.length - 1;
            byte[] bArr2 = new byte[length3];
            System.arraycopy(byteArray, 1, bArr2, 0, length3);
            return bArr2;
        } else if (byteArray.length < getOutputBlockSize()) {
            int outputBlockSize = getOutputBlockSize();
            byte[] bArr3 = new byte[outputBlockSize];
            System.arraycopy(byteArray, 0, bArr3, outputBlockSize - byteArray.length, byteArray.length);
            return bArr3;
        } else {
            return byteArray;
        }
    }

    public int getInputBlockSize() {
        int bitLength = (this.key.getModulus().bitLength() + 7) / 8;
        return this.forEncryption ? bitLength - 1 : bitLength;
    }

    public int getOutputBlockSize() {
        int bitLength = (this.key.getModulus().bitLength() + 7) / 8;
        return this.forEncryption ? bitLength : bitLength - 1;
    }

    public void init(boolean z9, CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        this.key = (RSAKeyParameters) cipherParameters;
        this.forEncryption = z9;
    }

    public BigInteger processBlock(BigInteger bigInteger) {
        RSAKeyParameters rSAKeyParameters = this.key;
        if (rSAKeyParameters instanceof RSAPrivateCrtKeyParameters) {
            RSAPrivateCrtKeyParameters rSAPrivateCrtKeyParameters = (RSAPrivateCrtKeyParameters) rSAKeyParameters;
            BigInteger p9 = rSAPrivateCrtKeyParameters.getP();
            BigInteger q9 = rSAPrivateCrtKeyParameters.getQ();
            BigInteger dp = rSAPrivateCrtKeyParameters.getDP();
            BigInteger dq = rSAPrivateCrtKeyParameters.getDQ();
            BigInteger qInv = rSAPrivateCrtKeyParameters.getQInv();
            BigInteger modPow = bigInteger.remainder(p9).modPow(dp, p9);
            BigInteger modPow2 = bigInteger.remainder(q9).modPow(dq, q9);
            return modPow.subtract(modPow2).multiply(qInv).mod(p9).multiply(q9).add(modPow2);
        }
        return bigInteger.modPow(rSAKeyParameters.getExponent(), this.key.getModulus());
    }
}