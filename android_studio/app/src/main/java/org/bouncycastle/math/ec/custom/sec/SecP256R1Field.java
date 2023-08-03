package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public class SecP256R1Field {
    private static final long M = 4294967295L;
    private static final int P7 = -1;
    private static final int PExt15s1 = Integer.MAX_VALUE;
    static final int[] P = {-1, -1, -1, 0, 0, 0, 1, -1};
    private static final int[] PExt = {1, 0, 0, -2, -1, -1, -2, 1, -2, 1, -2, 1, 1, -2, 2, -2};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.add(iArr, iArr2, iArr3) != 0 || (iArr3[7] == -1 && Nat256.gte(iArr3, P))) {
            addPInvTo(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.add(16, iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && Nat.gte(16, iArr3, PExt))) {
            Nat.subFrom(16, PExt, iArr3);
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        if (Nat.inc(8, iArr, iArr2) != 0 || (iArr2[7] == -1 && Nat256.gte(iArr2, P))) {
            addPInvTo(iArr2);
        }
    }

    private static void addPInvTo(int[] iArr) {
        long j4 = (iArr[0] & M) + 1;
        iArr[0] = (int) j4;
        long j10 = j4 >> 32;
        if (j10 != 0) {
            long j11 = j10 + (iArr[1] & M);
            iArr[1] = (int) j11;
            long j12 = (j11 >> 32) + (iArr[2] & M);
            iArr[2] = (int) j12;
            j10 = j12 >> 32;
        }
        long j13 = j10 + ((iArr[3] & M) - 1);
        iArr[3] = (int) j13;
        long j14 = j13 >> 32;
        if (j14 != 0) {
            long j15 = j14 + (iArr[4] & M);
            iArr[4] = (int) j15;
            long j16 = (j15 >> 32) + (iArr[5] & M);
            iArr[5] = (int) j16;
            j14 = j16 >> 32;
        }
        long j17 = j14 + ((iArr[6] & M) - 1);
        iArr[6] = (int) j17;
        iArr[7] = (int) ((j17 >> 32) + (M & iArr[7]) + 1);
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat256.fromBigInteger(bigInteger);
        if (fromBigInteger[7] == -1) {
            int[] iArr = P;
            if (Nat256.gte(fromBigInteger, iArr)) {
                Nat256.subFrom(iArr, fromBigInteger);
            }
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(8, iArr, 0, iArr2);
        } else {
            Nat.shiftDownBit(8, iArr2, Nat256.add(iArr, P, iArr2));
        }
    }

    public static void inv(int[] iArr, int[] iArr2) {
        Mod.checkedModOddInverse(P, iArr, iArr2);
    }

    public static int isZero(int[] iArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            i4 |= iArr[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] createExt = Nat256.createExt();
        Nat256.mul(iArr, iArr2, createExt);
        reduce(createExt, iArr3);
    }

    public static void multiplyAddToExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.mulAddTo(iArr, iArr2, iArr3) != 0 || ((iArr3[15] >>> 1) >= Integer.MAX_VALUE && Nat.gte(16, iArr3, PExt))) {
            Nat.subFrom(16, PExt, iArr3);
        }
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (isZero(iArr) == 0) {
            Nat256.sub(P, iArr, iArr2);
            return;
        }
        int[] iArr3 = P;
        Nat256.sub(iArr3, iArr3, iArr2);
    }

    public static void random(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[32];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, iArr, 0, 8);
        } while (Nat.lessThan(8, iArr, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] iArr) {
        do {
            random(secureRandom, iArr);
        } while (isZero(iArr) != 0);
    }

    public static void reduce(int[] iArr, int[] iArr2) {
        long j4 = iArr[8] & M;
        long j10 = iArr[9] & M;
        long j11 = iArr[10] & M;
        long j12 = iArr[11] & M;
        long j13 = iArr[12] & M;
        long j14 = iArr[13] & M;
        long j15 = iArr[14] & M;
        long j16 = iArr[15] & M;
        long j17 = j4 - 6;
        long j18 = j17 + j10;
        long j19 = j10 + j11;
        long j20 = (j11 + j12) - j16;
        long j21 = j12 + j13;
        long j22 = j13 + j14;
        long j23 = j14 + j15;
        long j24 = j15 + j16;
        long j25 = j23 - j18;
        long j26 = (((iArr[0] & M) - j21) - j25) + 0;
        iArr2[0] = (int) j26;
        long j27 = (j26 >> 32) + ((((iArr[1] & M) + j19) - j22) - j24);
        iArr2[1] = (int) j27;
        long j28 = (j27 >> 32) + (((iArr[2] & M) + j20) - j23);
        iArr2[2] = (int) j28;
        long j29 = (j28 >> 32) + ((((iArr[3] & M) + (j21 << 1)) + j25) - j24);
        iArr2[3] = (int) j29;
        long j30 = (j29 >> 32) + ((((iArr[4] & M) + (j22 << 1)) + j15) - j19);
        iArr2[4] = (int) j30;
        long j31 = (j30 >> 32) + (((iArr[5] & M) + (j23 << 1)) - j20);
        iArr2[5] = (int) j31;
        long j32 = (j31 >> 32) + (iArr[6] & M) + (j24 << 1) + j25;
        iArr2[6] = (int) j32;
        long j33 = (j32 >> 32) + (((((iArr[7] & M) + (j16 << 1)) + j17) - j20) - j22);
        iArr2[7] = (int) j33;
        reduce32((int) ((j33 >> 32) + 6), iArr2);
    }

    public static void reduce32(int i4, int[] iArr) {
        long j4;
        if (i4 != 0) {
            long j10 = i4 & M;
            long j11 = (iArr[0] & M) + j10 + 0;
            iArr[0] = (int) j11;
            long j12 = j11 >> 32;
            if (j12 != 0) {
                long j13 = j12 + (iArr[1] & M);
                iArr[1] = (int) j13;
                long j14 = (j13 >> 32) + (iArr[2] & M);
                iArr[2] = (int) j14;
                j12 = j14 >> 32;
            }
            long j15 = j12 + ((iArr[3] & M) - j10);
            iArr[3] = (int) j15;
            long j16 = j15 >> 32;
            if (j16 != 0) {
                long j17 = j16 + (iArr[4] & M);
                iArr[4] = (int) j17;
                long j18 = (j17 >> 32) + (iArr[5] & M);
                iArr[5] = (int) j18;
                j16 = j18 >> 32;
            }
            long j19 = j16 + ((iArr[6] & M) - j10);
            iArr[6] = (int) j19;
            long j20 = (j19 >> 32) + (M & iArr[7]) + j10;
            iArr[7] = (int) j20;
            j4 = j20 >> 32;
        } else {
            j4 = 0;
        }
        if (j4 != 0 || (iArr[7] == -1 && Nat256.gte(iArr, P))) {
            addPInvTo(iArr);
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] createExt = Nat256.createExt();
        Nat256.square(iArr, createExt);
        reduce(createExt, iArr2);
    }

    public static void squareN(int[] iArr, int i4, int[] iArr2) {
        int[] createExt = Nat256.createExt();
        Nat256.square(iArr, createExt);
        while (true) {
            reduce(createExt, iArr2);
            i4--;
            if (i4 <= 0) {
                return;
            }
            Nat256.square(iArr2, createExt);
        }
    }

    private static void subPInvFrom(int[] iArr) {
        long j4 = (iArr[0] & M) - 1;
        iArr[0] = (int) j4;
        long j10 = j4 >> 32;
        if (j10 != 0) {
            long j11 = j10 + (iArr[1] & M);
            iArr[1] = (int) j11;
            long j12 = (j11 >> 32) + (iArr[2] & M);
            iArr[2] = (int) j12;
            j10 = j12 >> 32;
        }
        long j13 = j10 + (iArr[3] & M) + 1;
        iArr[3] = (int) j13;
        long j14 = j13 >> 32;
        if (j14 != 0) {
            long j15 = j14 + (iArr[4] & M);
            iArr[4] = (int) j15;
            long j16 = (j15 >> 32) + (iArr[5] & M);
            iArr[5] = (int) j16;
            j14 = j16 >> 32;
        }
        long j17 = j14 + (iArr[6] & M) + 1;
        iArr[6] = (int) j17;
        iArr[7] = (int) ((j17 >> 32) + ((M & iArr[7]) - 1));
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.sub(iArr, iArr2, iArr3) != 0) {
            subPInvFrom(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(16, iArr, iArr2, iArr3) != 0) {
            Nat.addTo(16, PExt, iArr3);
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        if (Nat.shiftUpBit(8, iArr, 0, iArr2) != 0 || (iArr2[7] == -1 && Nat256.gte(iArr2, P))) {
            addPInvTo(iArr2);
        }
    }
}
