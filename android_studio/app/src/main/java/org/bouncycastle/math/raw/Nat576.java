package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public abstract class Nat576 {
    public static void copy64(long[] jArr, int i4, long[] jArr2, int i10) {
        jArr2[i10 + 0] = jArr[i4 + 0];
        jArr2[i10 + 1] = jArr[i4 + 1];
        jArr2[i10 + 2] = jArr[i4 + 2];
        jArr2[i10 + 3] = jArr[i4 + 3];
        jArr2[i10 + 4] = jArr[i4 + 4];
        jArr2[i10 + 5] = jArr[i4 + 5];
        jArr2[i10 + 6] = jArr[i4 + 6];
        jArr2[i10 + 7] = jArr[i4 + 7];
        jArr2[i10 + 8] = jArr[i4 + 8];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
        jArr2[4] = jArr[4];
        jArr2[5] = jArr[5];
        jArr2[6] = jArr[6];
        jArr2[7] = jArr[7];
        jArr2[8] = jArr[8];
    }

    public static long[] create64() {
        return new long[9];
    }

    public static long[] createExt64() {
        return new long[18];
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int i4 = 8; i4 >= 0; i4--) {
            if (jArr[i4] != jArr2[i4]) {
                return false;
            }
        }
        return true;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 576) {
            throw new IllegalArgumentException();
        }
        long[] create64 = create64();
        for (int i4 = 0; i4 < 9; i4++) {
            create64[i4] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return create64;
    }

    public static boolean isOne64(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int i4 = 1; i4 < 9; i4++) {
            if (jArr[i4] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int i4 = 0; i4 < 9; i4++) {
            if (jArr[i4] != 0) {
                return false;
            }
        }
        return true;
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[72];
        for (int i4 = 0; i4 < 9; i4++) {
            long j4 = jArr[i4];
            if (j4 != 0) {
                Pack.longToBigEndian(j4, bArr, (8 - i4) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }
}
