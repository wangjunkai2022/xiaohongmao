package org.bouncycastle.crypto.generators;

import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.engines.Salsa20Engine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public class SCrypt {
    private SCrypt() {
    }

    private static void BlockMix(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int i4) {
        System.arraycopy(iArr, iArr.length - 16, iArr2, 0, 16);
        int length = iArr.length >>> 1;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = i4 * 2; i12 > 0; i12--) {
            Xor(iArr2, iArr, i10, iArr3);
            Salsa20Engine.salsaCore(8, iArr3, iArr2);
            System.arraycopy(iArr2, 0, iArr4, i11, 16);
            i11 = (length + i10) - i11;
            i10 += 16;
        }
    }

    private static void Clear(byte[] bArr) {
        if (bArr != null) {
            Arrays.fill(bArr, (byte) 0);
        }
    }

    private static void Clear(int[] iArr) {
        if (iArr != null) {
            Arrays.fill(iArr, 0);
        }
    }

    private static void ClearAll(int[][] iArr) {
        for (int[] iArr2 : iArr) {
            Clear(iArr2);
        }
    }

    private static byte[] MFcrypt(byte[] bArr, byte[] bArr2, int i4, int i10, int i11, int i12) {
        int i13 = i10 * 128;
        byte[] SingleIterationPBKDF2 = SingleIterationPBKDF2(bArr, bArr2, i11 * i13);
        int[] iArr = null;
        try {
            int length = SingleIterationPBKDF2.length >>> 2;
            iArr = new int[length];
            Pack.littleEndianToInt(SingleIterationPBKDF2, 0, iArr);
            int i14 = 0;
            for (int i15 = i4 * i10; i4 - i14 > 2 && i15 > 1024; i15 >>>= 1) {
                i14++;
            }
            int i16 = i13 >>> 2;
            for (int i17 = 0; i17 < length; i17 += i16) {
                SMix(iArr, i17, i4, i14, i10);
            }
            Pack.intToLittleEndian(iArr, SingleIterationPBKDF2, 0);
            return SingleIterationPBKDF2(bArr, SingleIterationPBKDF2, i12);
        } finally {
            Clear(SingleIterationPBKDF2);
            Clear(iArr);
        }
    }

    private static void SMix(int[] iArr, int i4, int i10, int i11, int i12) {
        int i13 = i10 >>> i11;
        int i14 = 1 << i11;
        int i15 = i13 - 1;
        int numberOfTrailingZeros = Integers.numberOfTrailingZeros(i10) - i11;
        int i16 = i12 * 32;
        int[] iArr2 = new int[16];
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[i16];
        int[] iArr5 = new int[i16];
        int[][] iArr6 = new int[i14];
        try {
            System.arraycopy(iArr, i4, iArr5, 0, i16);
            int i17 = 0;
            while (i17 < i14) {
                int[] iArr7 = new int[i13 * i16];
                iArr6[i17] = iArr7;
                int i18 = i14;
                int i19 = 0;
                int i20 = 0;
                while (i20 < i13) {
                    System.arraycopy(iArr5, 0, iArr7, i19, i16);
                    int i21 = i19 + i16;
                    BlockMix(iArr5, iArr2, iArr3, iArr4, i12);
                    System.arraycopy(iArr4, 0, iArr7, i21, i16);
                    i19 = i21 + i16;
                    BlockMix(iArr4, iArr2, iArr3, iArr5, i12);
                    i20 += 2;
                    i13 = i13;
                }
                i17++;
                i14 = i18;
            }
            int i22 = i10 - 1;
            for (int i23 = 0; i23 < i10; i23++) {
                int i24 = iArr5[i16 - 16] & i22;
                System.arraycopy(iArr6[i24 >>> numberOfTrailingZeros], (i24 & i15) * i16, iArr4, 0, i16);
                Xor(iArr4, iArr5, 0, iArr4);
                BlockMix(iArr4, iArr2, iArr3, iArr5, i12);
            }
            System.arraycopy(iArr5, 0, iArr, i4, i16);
            ClearAll(iArr6);
            ClearAll(new int[][]{iArr5, iArr2, iArr3, iArr4});
        } catch (Throwable th) {
            ClearAll(iArr6);
            ClearAll(new int[][]{iArr5, iArr2, iArr3, iArr4});
            throw th;
        }
    }

    private static byte[] SingleIterationPBKDF2(byte[] bArr, byte[] bArr2, int i4) {
        PKCS5S2ParametersGenerator pKCS5S2ParametersGenerator = new PKCS5S2ParametersGenerator(new SHA256Digest());
        pKCS5S2ParametersGenerator.init(bArr, bArr2, 1);
        return ((KeyParameter) pKCS5S2ParametersGenerator.generateDerivedMacParameters(i4 * 8)).getKey();
    }

    private static void Xor(int[] iArr, int[] iArr2, int i4, int[] iArr3) {
        for (int length = iArr3.length - 1; length >= 0; length--) {
            iArr3[length] = iArr[length] ^ iArr2[i4 + length];
        }
    }

    public static byte[] generate(byte[] bArr, byte[] bArr2, int i4, int i10, int i11, int i12) {
        if (bArr != null) {
            if (bArr2 != null) {
                if (i4 <= 1 || !isPowerOf2(i4)) {
                    throw new IllegalArgumentException("Cost parameter N must be > 1 and a power of 2");
                }
                if (i10 != 1 || i4 < 65536) {
                    if (i10 >= 1) {
                        int i13 = Integer.MAX_VALUE / ((i10 * 128) * 8);
                        if (i11 >= 1 && i11 <= i13) {
                            if (i12 >= 1) {
                                return MFcrypt(bArr, bArr2, i4, i10, i11, i12);
                            }
                            throw new IllegalArgumentException("Generated key length dkLen must be >= 1.");
                        }
                        throw new IllegalArgumentException("Parallelisation parameter p must be >= 1 and <= " + i13 + " (based on block size r of " + i10 + ")");
                    }
                    throw new IllegalArgumentException("Block size r must be >= 1.");
                }
                throw new IllegalArgumentException("Cost parameter N must be > 1 and < 65536.");
            }
            throw new IllegalArgumentException("Salt S must be provided.");
        }
        throw new IllegalArgumentException("Passphrase P must be provided.");
    }

    private static boolean isPowerOf2(int i4) {
        return (i4 & (i4 + (-1))) == 0;
    }
}
