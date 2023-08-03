package org.bouncycastle.crypto.generators;

import com.qennnsad.aknkaksd.util.a1;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.params.DSAParameterGenerationParameters;
import org.bouncycastle.crypto.params.DSAParameters;
import org.bouncycastle.crypto.params.DSAValidationParameters;
import org.bouncycastle.crypto.util.DigestFactory;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes4.dex */
public class DSAParametersGenerator {
    private int L;
    private int N;
    private int certainty;
    private Digest digest;
    private int iterations;
    private SecureRandom random;
    private int usageIndex;
    private boolean use186_3;
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    public DSAParametersGenerator() {
        this(DigestFactory.createSHA1());
    }

    public DSAParametersGenerator(Digest digest) {
        this.digest = digest;
    }

    private static BigInteger calculateGenerator_FIPS186_2(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger modPow;
        BigInteger divide = bigInteger.subtract(ONE).divide(bigInteger2);
        BigInteger subtract = bigInteger.subtract(TWO);
        do {
            modPow = BigIntegers.createRandomInRange(TWO, subtract, secureRandom).modPow(divide, bigInteger);
        } while (modPow.bitLength() <= 1);
        return modPow;
    }

    private static BigInteger calculateGenerator_FIPS186_3_Unverifiable(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        return calculateGenerator_FIPS186_2(bigInteger, bigInteger2, secureRandom);
    }

    private static BigInteger calculateGenerator_FIPS186_3_Verifiable(Digest digest, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr, int i4) {
        BigInteger divide = bigInteger.subtract(ONE).divide(bigInteger2);
        byte[] decodeStrict = Hex.decodeStrict("6767656E");
        int length = bArr.length + decodeStrict.length + 1 + 2;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        System.arraycopy(decodeStrict, 0, bArr2, bArr.length, decodeStrict.length);
        bArr2[length - 3] = (byte) i4;
        byte[] bArr3 = new byte[digest.getDigestSize()];
        for (int i10 = 1; i10 < 65536; i10++) {
            inc(bArr2);
            hash(digest, bArr2, bArr3, 0);
            BigInteger modPow = new BigInteger(1, bArr3).modPow(divide, bigInteger);
            if (modPow.compareTo(TWO) >= 0) {
                return modPow;
            }
        }
        return null;
    }

    private DSAParameters generateParameters_FIPS186_2() {
        int i4 = 20;
        byte[] bArr = new byte[20];
        byte[] bArr2 = new byte[20];
        byte[] bArr3 = new byte[20];
        byte[] bArr4 = new byte[20];
        int i10 = this.L;
        int i11 = (i10 - 1) / a1.f54532a;
        int i12 = i10 / 8;
        byte[] bArr5 = new byte[i12];
        if (!(this.digest instanceof SHA1Digest)) {
            throw new IllegalStateException("can only use SHA-1 for generating FIPS 186-2 parameters");
        }
        while (true) {
            this.random.nextBytes(bArr);
            hash(this.digest, bArr, bArr2, 0);
            System.arraycopy(bArr, 0, bArr3, 0, i4);
            inc(bArr3);
            hash(this.digest, bArr3, bArr3, 0);
            for (int i13 = 0; i13 != i4; i13++) {
                bArr4[i13] = (byte) (bArr2[i13] ^ bArr3[i13]);
            }
            bArr4[0] = (byte) (bArr4[0] | Byte.MIN_VALUE);
            bArr4[19] = (byte) (bArr4[19] | 1);
            BigInteger bigInteger = new BigInteger(1, bArr4);
            if (isProbablePrime(bigInteger)) {
                byte[] clone = Arrays.clone(bArr);
                inc(clone);
                int i14 = 0;
                while (i14 < 4096) {
                    for (int i15 = 1; i15 <= i11; i15++) {
                        inc(clone);
                        hash(this.digest, clone, bArr5, i12 - (i15 * 20));
                    }
                    int i16 = i12 - (i11 * 20);
                    inc(clone);
                    hash(this.digest, clone, bArr2, 0);
                    System.arraycopy(bArr2, 20 - i16, bArr5, 0, i16);
                    bArr5[0] = (byte) (bArr5[0] | Byte.MIN_VALUE);
                    BigInteger bigInteger2 = new BigInteger(1, bArr5);
                    BigInteger subtract = bigInteger2.subtract(bigInteger2.mod(bigInteger.shiftLeft(1)).subtract(ONE));
                    if (subtract.bitLength() == this.L && isProbablePrime(subtract)) {
                        return new DSAParameters(subtract, bigInteger, calculateGenerator_FIPS186_2(subtract, bigInteger, this.random), new DSAValidationParameters(bArr, i14));
                    }
                    i14++;
                    i4 = 20;
                }
                continue;
            }
        }
    }

    private DSAParameters generateParameters_FIPS186_3() {
        BigInteger bit;
        int i4;
        BigInteger subtract;
        BigInteger calculateGenerator_FIPS186_3_Verifiable;
        Digest digest = this.digest;
        int digestSize = digest.getDigestSize() * 8;
        byte[] bArr = new byte[this.N / 8];
        int i10 = this.L;
        int i11 = (i10 - 1) / digestSize;
        int i12 = (i10 - 1) % digestSize;
        int i13 = i10 / 8;
        byte[] bArr2 = new byte[i13];
        int digestSize2 = digest.getDigestSize();
        byte[] bArr3 = new byte[digestSize2];
        loop0: while (true) {
            this.random.nextBytes(bArr);
            int i14 = 0;
            hash(digest, bArr, bArr3, 0);
            bit = new BigInteger(1, bArr3).mod(ONE.shiftLeft(this.N - 1)).setBit(0).setBit(this.N - 1);
            if (isProbablePrime(bit)) {
                byte[] clone = Arrays.clone(bArr);
                int i15 = this.L * 4;
                i4 = 0;
                while (i4 < i15) {
                    for (int i16 = 1; i16 <= i11; i16++) {
                        inc(clone);
                        hash(digest, clone, bArr2, i13 - (i16 * digestSize2));
                    }
                    int i17 = i13 - (i11 * digestSize2);
                    inc(clone);
                    hash(digest, clone, bArr3, i14);
                    System.arraycopy(bArr3, digestSize2 - i17, bArr2, i14, i17);
                    bArr2[i14] = (byte) (bArr2[i14] | Byte.MIN_VALUE);
                    BigInteger bigInteger = new BigInteger(1, bArr2);
                    subtract = bigInteger.subtract(bigInteger.mod(bit.shiftLeft(1)).subtract(ONE));
                    if (subtract.bitLength() == this.L && isProbablePrime(subtract)) {
                        break loop0;
                    }
                    i4++;
                    i14 = 0;
                }
                continue;
            }
        }
        int i18 = this.usageIndex;
        return (i18 < 0 || (calculateGenerator_FIPS186_3_Verifiable = calculateGenerator_FIPS186_3_Verifiable(digest, subtract, bit, bArr, i18)) == null) ? new DSAParameters(subtract, bit, calculateGenerator_FIPS186_3_Unverifiable(subtract, bit, this.random), new DSAValidationParameters(bArr, i4)) : new DSAParameters(subtract, bit, calculateGenerator_FIPS186_3_Verifiable, new DSAValidationParameters(bArr, i4, this.usageIndex));
    }

    private static int getDefaultN(int i4) {
        if (i4 > 1024) {
            return 256;
        }
        return a1.f54532a;
    }

    private static int getMinimumIterations(int i4) {
        if (i4 <= 1024) {
            return 40;
        }
        return (((i4 - 1) / 1024) * 8) + 48;
    }

    private static void hash(Digest digest, byte[] bArr, byte[] bArr2, int i4) {
        digest.update(bArr, 0, bArr.length);
        digest.doFinal(bArr2, i4);
    }

    private static void inc(byte[] bArr) {
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte b10 = (byte) ((bArr[length] + 1) & 255);
            bArr[length] = b10;
            if (b10 != 0) {
                return;
            }
        }
    }

    private boolean isProbablePrime(BigInteger bigInteger) {
        return bigInteger.isProbablePrime(this.certainty);
    }

    public DSAParameters generateParameters() {
        return this.use186_3 ? generateParameters_FIPS186_3() : generateParameters_FIPS186_2();
    }

    public void init(int i4, int i10, SecureRandom secureRandom) {
        this.L = i4;
        this.N = getDefaultN(i4);
        this.certainty = i10;
        this.iterations = Math.max(getMinimumIterations(this.L), (i10 + 1) / 2);
        this.random = secureRandom;
        this.use186_3 = false;
        this.usageIndex = -1;
    }

    public void init(DSAParameterGenerationParameters dSAParameterGenerationParameters) {
        int l10 = dSAParameterGenerationParameters.getL();
        int n9 = dSAParameterGenerationParameters.getN();
        if (l10 < 1024 || l10 > 3072 || l10 % 1024 != 0) {
            throw new IllegalArgumentException("L values must be between 1024 and 3072 and a multiple of 1024");
        }
        if (l10 == 1024 && n9 != 160) {
            throw new IllegalArgumentException("N must be 160 for L = 1024");
        }
        if (l10 == 2048 && n9 != 224 && n9 != 256) {
            throw new IllegalArgumentException("N must be 224 or 256 for L = 2048");
        }
        if (l10 == 3072 && n9 != 256) {
            throw new IllegalArgumentException("N must be 256 for L = 3072");
        }
        if (this.digest.getDigestSize() * 8 < n9) {
            throw new IllegalStateException("Digest output size too small for value of N");
        }
        this.L = l10;
        this.N = n9;
        this.certainty = dSAParameterGenerationParameters.getCertainty();
        this.iterations = Math.max(getMinimumIterations(l10), (this.certainty + 1) / 2);
        this.random = dSAParameterGenerationParameters.getRandom();
        this.use186_3 = true;
        this.usageIndex = dSAParameterGenerationParameters.getUsageIndex();
    }
}
