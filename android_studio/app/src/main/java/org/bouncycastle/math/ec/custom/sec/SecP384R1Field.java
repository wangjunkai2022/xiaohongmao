package org.bouncycastle.math.ec.custom.sec;

import com.facebook.imagepipeline.memory.c;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat384;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public class SecP384R1Field {
    private static final long M = 4294967295L;
    private static final int P11 = -1;
    private static final int PExt23 = -1;
    static final int[] P = {-1, 0, 0, -1, -2, -1, -1, -1, -1, -1, -1, -1};
    private static final int[] PExt = {1, -2, 0, 2, 0, -2, 0, 2, 1, 0, 0, 0, -2, 1, 0, -2, -3, -1, -1, -1, -1, -1, -1, -1};
    private static final int[] PExtInv = {-1, 1, -1, -3, -1, 1, -1, -3, -2, -1, -1, -1, 1, -2, -1, 1, 2};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.add(12, iArr, iArr2, iArr3) != 0 || (iArr3[11] == -1 && Nat.gte(12, iArr3, P))) {
            addPInvTo(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.add(24, iArr, iArr2, iArr3) != 0 || (iArr3[23] == -1 && Nat.gte(24, iArr3, PExt))) {
            int[] iArr4 = PExtInv;
            if (Nat.addTo(iArr4.length, iArr4, iArr3) != 0) {
                Nat.incAt(24, iArr3, iArr4.length);
            }
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        if (Nat.inc(12, iArr, iArr2) != 0 || (iArr2[11] == -1 && Nat.gte(12, iArr2, P))) {
            addPInvTo(iArr2);
        }
    }

    private static void addPInvTo(int[] iArr) {
        long j4 = (iArr[0] & M) + 1;
        iArr[0] = (int) j4;
        long j10 = (j4 >> 32) + ((iArr[1] & M) - 1);
        iArr[1] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (iArr[2] & M);
            iArr[2] = (int) j12;
            j11 = j12 >> 32;
        }
        long j13 = j11 + (iArr[3] & M) + 1;
        iArr[3] = (int) j13;
        long j14 = (j13 >> 32) + (M & iArr[4]) + 1;
        iArr[4] = (int) j14;
        if ((j14 >> 32) != 0) {
            Nat.incAt(12, iArr, 5);
        }
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat.fromBigInteger(c.f12563b, bigInteger);
        if (fromBigInteger[11] == -1) {
            int[] iArr = P;
            if (Nat.gte(12, fromBigInteger, iArr)) {
                Nat.subFrom(12, iArr, fromBigInteger);
            }
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(12, iArr, 0, iArr2);
        } else {
            Nat.shiftDownBit(12, iArr2, Nat.add(12, iArr, P, iArr2));
        }
    }

    public static void inv(int[] iArr, int[] iArr2) {
        Mod.checkedModOddInverse(P, iArr, iArr2);
    }

    public static int isZero(int[] iArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 12; i10++) {
            i4 |= iArr[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] create = Nat.create(24);
        Nat384.mul(iArr, iArr2, create);
        reduce(create, iArr3);
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (isZero(iArr) == 0) {
            Nat.sub(12, P, iArr, iArr2);
            return;
        }
        int[] iArr3 = P;
        Nat.sub(12, iArr3, iArr3, iArr2);
    }

    public static void random(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[48];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, iArr, 0, 12);
        } while (Nat.lessThan(12, iArr, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] iArr) {
        do {
            random(secureRandom, iArr);
        } while (isZero(iArr) != 0);
    }

    public static void reduce(int[] iArr, int[] iArr2) {
        long j4 = iArr[16] & M;
        long j10 = iArr[17] & M;
        long j11 = iArr[18] & M;
        long j12 = iArr[19] & M;
        long j13 = iArr[20] & M;
        long j14 = iArr[21] & M;
        long j15 = iArr[22] & M;
        long j16 = iArr[23] & M;
        long j17 = ((iArr[12] & M) + j13) - 1;
        long j18 = (iArr[13] & M) + j15;
        long j19 = (iArr[14] & M) + j15 + j16;
        long j20 = (iArr[15] & M) + j16;
        long j21 = j10 + j14;
        long j22 = j14 - j16;
        long j23 = j15 - j16;
        long j24 = j17 + j22;
        long j25 = (iArr[0] & M) + j24 + 0;
        iArr2[0] = (int) j25;
        long j26 = (j25 >> 32) + (((iArr[1] & M) + j16) - j17) + j18;
        iArr2[1] = (int) j26;
        long j27 = (j26 >> 32) + (((iArr[2] & M) - j14) - j18) + j19;
        iArr2[2] = (int) j27;
        long j28 = (j27 >> 32) + ((iArr[3] & M) - j19) + j20 + j24;
        iArr2[3] = (int) j28;
        long j29 = (j28 >> 32) + (((((iArr[4] & M) + j4) + j14) + j18) - j20) + j24;
        iArr2[4] = (int) j29;
        long j30 = (j29 >> 32) + ((iArr[5] & M) - j4) + j18 + j19 + j21;
        iArr2[5] = (int) j30;
        long j31 = (j30 >> 32) + (((iArr[6] & M) + j11) - j10) + j19 + j20;
        iArr2[6] = (int) j31;
        long j32 = (j31 >> 32) + ((((iArr[7] & M) + j4) + j12) - j11) + j20;
        iArr2[7] = (int) j32;
        long j33 = (j32 >> 32) + (((((iArr[8] & M) + j4) + j10) + j13) - j12);
        iArr2[8] = (int) j33;
        long j34 = (j33 >> 32) + (((iArr[9] & M) + j11) - j13) + j21;
        iArr2[9] = (int) j34;
        long j35 = (j34 >> 32) + ((((iArr[10] & M) + j11) + j12) - j22) + j23;
        iArr2[10] = (int) j35;
        long j36 = (j35 >> 32) + ((((iArr[11] & M) + j12) + j13) - j23);
        iArr2[11] = (int) j36;
        reduce32((int) ((j36 >> 32) + 1), iArr2);
    }

    public static void reduce32(int i4, int[] iArr) {
        long j4;
        if (i4 != 0) {
            long j10 = i4 & M;
            long j11 = (iArr[0] & M) + j10 + 0;
            iArr[0] = (int) j11;
            long j12 = (j11 >> 32) + ((iArr[1] & M) - j10);
            iArr[1] = (int) j12;
            long j13 = j12 >> 32;
            if (j13 != 0) {
                long j14 = j13 + (iArr[2] & M);
                iArr[2] = (int) j14;
                j13 = j14 >> 32;
            }
            long j15 = j13 + (iArr[3] & M) + j10;
            iArr[3] = (int) j15;
            long j16 = (j15 >> 32) + (M & iArr[4]) + j10;
            iArr[4] = (int) j16;
            j4 = j16 >> 32;
        } else {
            j4 = 0;
        }
        if ((j4 == 0 || Nat.incAt(12, iArr, 5) == 0) && !(iArr[11] == -1 && Nat.gte(12, iArr, P))) {
            return;
        }
        addPInvTo(iArr);
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] create = Nat.create(24);
        Nat384.square(iArr, create);
        reduce(create, iArr2);
    }

    public static void squareN(int[] iArr, int i4, int[] iArr2) {
        int[] create = Nat.create(24);
        Nat384.square(iArr, create);
        while (true) {
            reduce(create, iArr2);
            i4--;
            if (i4 <= 0) {
                return;
            }
            Nat384.square(iArr2, create);
        }
    }

    private static void subPInvFrom(int[] iArr) {
        long j4 = (iArr[0] & M) - 1;
        iArr[0] = (int) j4;
        long j10 = (j4 >> 32) + (iArr[1] & M) + 1;
        iArr[1] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            long j12 = j11 + (iArr[2] & M);
            iArr[2] = (int) j12;
            j11 = j12 >> 32;
        }
        long j13 = j11 + ((iArr[3] & M) - 1);
        iArr[3] = (int) j13;
        long j14 = (j13 >> 32) + ((M & iArr[4]) - 1);
        iArr[4] = (int) j14;
        if ((j14 >> 32) != 0) {
            Nat.decAt(12, iArr, 5);
        }
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(12, iArr, iArr2, iArr3) != 0) {
            subPInvFrom(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(24, iArr, iArr2, iArr3) != 0) {
            int[] iArr4 = PExtInv;
            if (Nat.subFrom(iArr4.length, iArr4, iArr3) != 0) {
                Nat.decAt(24, iArr3, iArr4.length);
            }
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        if (Nat.shiftUpBit(12, iArr, 0, iArr2) != 0 || (iArr2[11] == -1 && Nat.gte(12, iArr2, P))) {
            addPInvTo(iArr2);
        }
    }
}
