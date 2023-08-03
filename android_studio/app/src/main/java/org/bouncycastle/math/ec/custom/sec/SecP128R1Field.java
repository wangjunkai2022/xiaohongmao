package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat128;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public class SecP128R1Field {
    private static final long M = 4294967295L;
    private static final int P3s1 = 2147483646;
    private static final int PExt7s1 = 2147483646;
    static final int[] P = {-1, -1, -1, -3};
    private static final int[] PExt = {1, 0, 0, 4, -2, -1, 3, -4};
    private static final int[] PExtInv = {-1, -1, -1, -5, 1, 0, -4, 3};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat128.add(iArr, iArr2, iArr3) != 0 || ((iArr3[3] >>> 1) >= 2147483646 && Nat128.gte(iArr3, P))) {
            addPInvTo(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.add(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && Nat256.gte(iArr3, PExt))) {
            int[] iArr4 = PExtInv;
            Nat.addTo(iArr4.length, iArr4, iArr3);
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        if (Nat.inc(4, iArr, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && Nat128.gte(iArr2, P))) {
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
        iArr[3] = (int) (j10 + (M & iArr[3]) + 2);
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat128.fromBigInteger(bigInteger);
        if ((fromBigInteger[3] >>> 1) >= 2147483646) {
            int[] iArr = P;
            if (Nat128.gte(fromBigInteger, iArr)) {
                Nat128.subFrom(iArr, fromBigInteger);
            }
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(4, iArr, 0, iArr2);
        } else {
            Nat.shiftDownBit(4, iArr2, Nat128.add(iArr, P, iArr2));
        }
    }

    public static void inv(int[] iArr, int[] iArr2) {
        Mod.checkedModOddInverse(P, iArr, iArr2);
    }

    public static int isZero(int[] iArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 4; i10++) {
            i4 |= iArr[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] createExt = Nat128.createExt();
        Nat128.mul(iArr, iArr2, createExt);
        reduce(createExt, iArr3);
    }

    public static void multiplyAddToExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat128.mulAddTo(iArr, iArr2, iArr3) != 0 || ((iArr3[7] >>> 1) >= 2147483646 && Nat256.gte(iArr3, PExt))) {
            int[] iArr4 = PExtInv;
            Nat.addTo(iArr4.length, iArr4, iArr3);
        }
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (isZero(iArr) == 0) {
            Nat128.sub(P, iArr, iArr2);
            return;
        }
        int[] iArr3 = P;
        Nat128.sub(iArr3, iArr3, iArr2);
    }

    public static void random(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[16];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, iArr, 0, 4);
        } while (Nat.lessThan(4, iArr, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] iArr) {
        do {
            random(secureRandom, iArr);
        } while (isZero(iArr) != 0);
    }

    public static void reduce(int[] iArr, int[] iArr2) {
        long j4 = iArr[0] & M;
        long j10 = iArr[1] & M;
        long j11 = iArr[2] & M;
        long j12 = iArr[3] & M;
        long j13 = iArr[4] & M;
        long j14 = iArr[5] & M;
        long j15 = iArr[6] & M;
        long j16 = iArr[7] & M;
        long j17 = j12 + j16;
        long j18 = j15 + (j16 << 1);
        long j19 = j11 + j18;
        long j20 = j14 + (j18 << 1);
        long j21 = j10 + j20;
        long j22 = j13 + (j20 << 1);
        long j23 = j4 + j22;
        iArr2[0] = (int) j23;
        long j24 = j21 + (j23 >>> 32);
        iArr2[1] = (int) j24;
        long j25 = j19 + (j24 >>> 32);
        iArr2[2] = (int) j25;
        long j26 = j17 + (j22 << 1) + (j25 >>> 32);
        iArr2[3] = (int) j26;
        reduce32((int) (j26 >>> 32), iArr2);
    }

    public static void reduce32(int i4, int[] iArr) {
        while (i4 != 0) {
            long j4 = i4 & M;
            long j10 = (iArr[0] & M) + j4;
            iArr[0] = (int) j10;
            long j11 = j10 >> 32;
            if (j11 != 0) {
                long j12 = j11 + (iArr[1] & M);
                iArr[1] = (int) j12;
                long j13 = (j12 >> 32) + (iArr[2] & M);
                iArr[2] = (int) j13;
                j11 = j13 >> 32;
            }
            long j14 = j11 + (M & iArr[3]) + (j4 << 1);
            iArr[3] = (int) j14;
            i4 = (int) (j14 >> 32);
        }
        if ((iArr[3] >>> 1) < 2147483646 || !Nat128.gte(iArr, P)) {
            return;
        }
        addPInvTo(iArr);
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] createExt = Nat128.createExt();
        Nat128.square(iArr, createExt);
        reduce(createExt, iArr2);
    }

    public static void squareN(int[] iArr, int i4, int[] iArr2) {
        int[] createExt = Nat128.createExt();
        Nat128.square(iArr, createExt);
        while (true) {
            reduce(createExt, iArr2);
            i4--;
            if (i4 <= 0) {
                return;
            }
            Nat128.square(iArr2, createExt);
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
        iArr[3] = (int) (j10 + ((M & iArr[3]) - 2));
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat128.sub(iArr, iArr2, iArr3) != 0) {
            subPInvFrom(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(10, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = PExtInv;
            Nat.subFrom(iArr4.length, iArr4, iArr3);
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        if (Nat.shiftUpBit(4, iArr, 0, iArr2) != 0 || ((iArr2[3] >>> 1) >= 2147483646 && Nat128.gte(iArr2, P))) {
            addPInvTo(iArr2);
        }
    }
}
