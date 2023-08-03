package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat192;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public class SecP192R1Field {
    private static final long M = 4294967295L;
    private static final int P5 = -1;
    private static final int PExt11 = -1;
    static final int[] P = {-1, -1, -2, -1, -1, -1};
    private static final int[] PExt = {1, 0, 2, 0, 1, 0, -2, -1, -3, -1, -1, -1};
    private static final int[] PExtInv = {-1, -1, -3, -1, -2, -1, 1, 0, 2};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat192.add(iArr, iArr2, iArr3) != 0 || (iArr3[5] == -1 && Nat192.gte(iArr3, P))) {
            addPInvTo(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.add(12, iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && Nat.gte(12, iArr3, PExt))) {
            int[] iArr4 = PExtInv;
            if (Nat.addTo(iArr4.length, iArr4, iArr3) != 0) {
                Nat.incAt(12, iArr3, iArr4.length);
            }
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        if (Nat.inc(6, iArr, iArr2) != 0 || (iArr2[5] == -1 && Nat192.gte(iArr2, P))) {
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
            j10 = j11 >> 32;
        }
        long j12 = j10 + (M & iArr[2]) + 1;
        iArr[2] = (int) j12;
        if ((j12 >> 32) != 0) {
            Nat.incAt(6, iArr, 3);
        }
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat192.fromBigInteger(bigInteger);
        if (fromBigInteger[5] == -1) {
            int[] iArr = P;
            if (Nat192.gte(fromBigInteger, iArr)) {
                Nat192.subFrom(iArr, fromBigInteger);
            }
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(6, iArr, 0, iArr2);
        } else {
            Nat.shiftDownBit(6, iArr2, Nat192.add(iArr, P, iArr2));
        }
    }

    public static void inv(int[] iArr, int[] iArr2) {
        Mod.checkedModOddInverse(P, iArr, iArr2);
    }

    public static int isZero(int[] iArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 6; i10++) {
            i4 |= iArr[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] createExt = Nat192.createExt();
        Nat192.mul(iArr, iArr2, createExt);
        reduce(createExt, iArr3);
    }

    public static void multiplyAddToExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat192.mulAddTo(iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && Nat.gte(12, iArr3, PExt))) {
            int[] iArr4 = PExtInv;
            if (Nat.addTo(iArr4.length, iArr4, iArr3) != 0) {
                Nat.incAt(12, iArr3, iArr4.length);
            }
        }
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (isZero(iArr) == 0) {
            Nat192.sub(P, iArr, iArr2);
            return;
        }
        int[] iArr3 = P;
        Nat192.sub(iArr3, iArr3, iArr2);
    }

    public static void random(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[24];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, iArr, 0, 6);
        } while (Nat.lessThan(6, iArr, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] iArr) {
        do {
            random(secureRandom, iArr);
        } while (isZero(iArr) != 0);
    }

    public static void reduce(int[] iArr, int[] iArr2) {
        long j4 = iArr[6] & M;
        long j10 = iArr[7] & M;
        long j11 = iArr[8] & M;
        long j12 = iArr[9] & M;
        long j13 = (iArr[10] & M) + j4;
        long j14 = (iArr[11] & M) + j10;
        long j15 = (iArr[0] & M) + j13 + 0;
        int i4 = (int) j15;
        long j16 = (j15 >> 32) + (iArr[1] & M) + j14;
        iArr2[1] = (int) j16;
        long j17 = j13 + j11;
        long j18 = j14 + j12;
        long j19 = (j16 >> 32) + (iArr[2] & M) + j17;
        long j20 = j19 & M;
        long j21 = (j19 >> 32) + (iArr[3] & M) + j18;
        iArr2[3] = (int) j21;
        long j22 = (j21 >> 32) + (iArr[4] & M) + (j17 - j4);
        iArr2[4] = (int) j22;
        long j23 = (j22 >> 32) + (iArr[5] & M) + (j18 - j10);
        iArr2[5] = (int) j23;
        long j24 = j23 >> 32;
        long j25 = j20 + j24;
        long j26 = j24 + (i4 & M);
        iArr2[0] = (int) j26;
        long j27 = j26 >> 32;
        if (j27 != 0) {
            long j28 = j27 + (M & iArr2[1]);
            iArr2[1] = (int) j28;
            j25 += j28 >> 32;
        }
        iArr2[2] = (int) j25;
        if (((j25 >> 32) == 0 || Nat.incAt(6, iArr2, 3) == 0) && !(iArr2[5] == -1 && Nat192.gte(iArr2, P))) {
            return;
        }
        addPInvTo(iArr2);
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
                j12 = j13 >> 32;
            }
            long j14 = j12 + (M & iArr[2]) + j10;
            iArr[2] = (int) j14;
            j4 = j14 >> 32;
        } else {
            j4 = 0;
        }
        if ((j4 == 0 || Nat.incAt(6, iArr, 3) == 0) && !(iArr[5] == -1 && Nat192.gte(iArr, P))) {
            return;
        }
        addPInvTo(iArr);
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] createExt = Nat192.createExt();
        Nat192.square(iArr, createExt);
        reduce(createExt, iArr2);
    }

    public static void squareN(int[] iArr, int i4, int[] iArr2) {
        int[] createExt = Nat192.createExt();
        Nat192.square(iArr, createExt);
        while (true) {
            reduce(createExt, iArr2);
            i4--;
            if (i4 <= 0) {
                return;
            }
            Nat192.square(iArr2, createExt);
        }
    }

    private static void subPInvFrom(int[] iArr) {
        long j4 = (iArr[0] & M) - 1;
        iArr[0] = (int) j4;
        long j10 = j4 >> 32;
        if (j10 != 0) {
            long j11 = j10 + (iArr[1] & M);
            iArr[1] = (int) j11;
            j10 = j11 >> 32;
        }
        long j12 = j10 + ((M & iArr[2]) - 1);
        iArr[2] = (int) j12;
        if ((j12 >> 32) != 0) {
            Nat.decAt(6, iArr, 3);
        }
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat192.sub(iArr, iArr2, iArr3) != 0) {
            subPInvFrom(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(12, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = PExtInv;
            if (Nat.subFrom(iArr4.length, iArr4, iArr3) != 0) {
                Nat.decAt(12, iArr3, iArr4.length);
            }
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        if (Nat.shiftUpBit(6, iArr, 0, iArr2) != 0 || (iArr2[5] == -1 && Nat192.gte(iArr2, P))) {
            addPInvTo(iArr2);
        }
    }
}
