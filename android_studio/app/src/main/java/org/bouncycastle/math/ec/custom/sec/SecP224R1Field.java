package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat224;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public class SecP224R1Field {
    private static final long M = 4294967295L;
    private static final int P6 = -1;
    private static final int PExt13 = -1;
    static final int[] P = {1, 0, 0, -1, -1, -1, -1};
    private static final int[] PExt = {1, 0, 0, -2, -1, -1, 0, 2, 0, 0, -2, -1, -1, -1};
    private static final int[] PExtInv = {-1, -1, -1, 1, 0, 0, -1, -3, -1, -1, 1};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.add(iArr, iArr2, iArr3) != 0 || (iArr3[6] == -1 && Nat224.gte(iArr3, P))) {
            addPInvTo(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.add(14, iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && Nat.gte(14, iArr3, PExt))) {
            int[] iArr4 = PExtInv;
            if (Nat.addTo(iArr4.length, iArr4, iArr3) != 0) {
                Nat.incAt(14, iArr3, iArr4.length);
            }
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        if (Nat.inc(7, iArr, iArr2) != 0 || (iArr2[6] == -1 && Nat224.gte(iArr2, P))) {
            addPInvTo(iArr2);
        }
    }

    private static void addPInvTo(int[] iArr) {
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
        long j13 = j10 + (M & iArr[3]) + 1;
        iArr[3] = (int) j13;
        if ((j13 >> 32) != 0) {
            Nat.incAt(7, iArr, 4);
        }
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat224.fromBigInteger(bigInteger);
        if (fromBigInteger[6] == -1) {
            int[] iArr = P;
            if (Nat224.gte(fromBigInteger, iArr)) {
                Nat224.subFrom(iArr, fromBigInteger);
            }
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(7, iArr, 0, iArr2);
        } else {
            Nat.shiftDownBit(7, iArr2, Nat224.add(iArr, P, iArr2));
        }
    }

    public static void inv(int[] iArr, int[] iArr2) {
        Mod.checkedModOddInverse(P, iArr, iArr2);
    }

    public static int isZero(int[] iArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 7; i10++) {
            i4 |= iArr[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] createExt = Nat224.createExt();
        Nat224.mul(iArr, iArr2, createExt);
        reduce(createExt, iArr3);
    }

    public static void multiplyAddToExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.mulAddTo(iArr, iArr2, iArr3) != 0 || (iArr3[13] == -1 && Nat.gte(14, iArr3, PExt))) {
            int[] iArr4 = PExtInv;
            if (Nat.addTo(iArr4.length, iArr4, iArr3) != 0) {
                Nat.incAt(14, iArr3, iArr4.length);
            }
        }
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (isZero(iArr) == 0) {
            Nat224.sub(P, iArr, iArr2);
            return;
        }
        int[] iArr3 = P;
        Nat224.sub(iArr3, iArr3, iArr2);
    }

    public static void random(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[28];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, iArr, 0, 7);
        } while (Nat.lessThan(7, iArr, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] iArr) {
        do {
            random(secureRandom, iArr);
        } while (isZero(iArr) != 0);
    }

    public static void reduce(int[] iArr, int[] iArr2) {
        long j4 = iArr[10] & M;
        long j10 = iArr[11] & M;
        long j11 = iArr[12] & M;
        long j12 = iArr[13] & M;
        long j13 = ((iArr[7] & M) + j10) - 1;
        long j14 = (iArr[8] & M) + j11;
        long j15 = (iArr[9] & M) + j12;
        long j16 = ((iArr[0] & M) - j13) + 0;
        long j17 = j16 & M;
        long j18 = (j16 >> 32) + ((iArr[1] & M) - j14);
        iArr2[1] = (int) j18;
        long j19 = (j18 >> 32) + ((iArr[2] & M) - j15);
        iArr2[2] = (int) j19;
        long j20 = (j19 >> 32) + (((iArr[3] & M) + j13) - j4);
        long j21 = j20 & M;
        long j22 = (j20 >> 32) + (((iArr[4] & M) + j14) - j10);
        iArr2[4] = (int) j22;
        long j23 = (j22 >> 32) + (((iArr[5] & M) + j15) - j11);
        iArr2[5] = (int) j23;
        long j24 = (j23 >> 32) + (((iArr[6] & M) + j4) - j12);
        iArr2[6] = (int) j24;
        long j25 = (j24 >> 32) + 1;
        long j26 = j21 + j25;
        long j27 = j17 - j25;
        iArr2[0] = (int) j27;
        long j28 = j27 >> 32;
        if (j28 != 0) {
            long j29 = j28 + (iArr2[1] & M);
            iArr2[1] = (int) j29;
            long j30 = (j29 >> 32) + (M & iArr2[2]);
            iArr2[2] = (int) j30;
            j26 += j30 >> 32;
        }
        iArr2[3] = (int) j26;
        if (((j26 >> 32) == 0 || Nat.incAt(7, iArr2, 4) == 0) && !(iArr2[6] == -1 && Nat224.gte(iArr2, P))) {
            return;
        }
        addPInvTo(iArr2);
    }

    public static void reduce32(int i4, int[] iArr) {
        long j4;
        if (i4 != 0) {
            long j10 = i4 & M;
            long j11 = ((iArr[0] & M) - j10) + 0;
            iArr[0] = (int) j11;
            long j12 = j11 >> 32;
            if (j12 != 0) {
                long j13 = j12 + (iArr[1] & M);
                iArr[1] = (int) j13;
                long j14 = (j13 >> 32) + (iArr[2] & M);
                iArr[2] = (int) j14;
                j12 = j14 >> 32;
            }
            long j15 = j12 + (M & iArr[3]) + j10;
            iArr[3] = (int) j15;
            j4 = j15 >> 32;
        } else {
            j4 = 0;
        }
        if ((j4 == 0 || Nat.incAt(7, iArr, 4) == 0) && !(iArr[6] == -1 && Nat224.gte(iArr, P))) {
            return;
        }
        addPInvTo(iArr);
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] createExt = Nat224.createExt();
        Nat224.square(iArr, createExt);
        reduce(createExt, iArr2);
    }

    public static void squareN(int[] iArr, int i4, int[] iArr2) {
        int[] createExt = Nat224.createExt();
        Nat224.square(iArr, createExt);
        while (true) {
            reduce(createExt, iArr2);
            i4--;
            if (i4 <= 0) {
                return;
            }
            Nat224.square(iArr2, createExt);
        }
    }

    private static void subPInvFrom(int[] iArr) {
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
        long j13 = j10 + ((M & iArr[3]) - 1);
        iArr[3] = (int) j13;
        if ((j13 >> 32) != 0) {
            Nat.decAt(7, iArr, 4);
        }
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat224.sub(iArr, iArr2, iArr3) != 0) {
            subPInvFrom(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(14, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = PExtInv;
            if (Nat.subFrom(iArr4.length, iArr4, iArr3) != 0) {
                Nat.decAt(14, iArr3, iArr4.length);
            }
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        if (Nat.shiftUpBit(7, iArr, 0, iArr2) != 0 || (iArr2[6] == -1 && Nat224.gte(iArr2, P))) {
            addPInvTo(iArr2);
        }
    }
}
