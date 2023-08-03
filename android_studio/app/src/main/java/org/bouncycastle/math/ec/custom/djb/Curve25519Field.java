package org.bouncycastle.math.ec.custom.djb;

import com.ksyun.media.player.KSYMediaMeta;
import java.math.BigInteger;
import java.security.SecureRandom;
import kotlinx.coroutines.internal.a0;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat256;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public class Curve25519Field {
    private static final long M = 4294967295L;
    private static final int P7 = Integer.MAX_VALUE;
    private static final int PInv = 19;
    static final int[] P = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] PExt = {361, 0, 0, 0, 0, 0, 0, 0, -19, -1, -1, -1, -1, -1, -1, a0.f86219j};

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat256.add(iArr, iArr2, iArr3);
        if (Nat256.gte(iArr3, P)) {
            subPFrom(iArr3);
        }
    }

    public static void addExt(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat.add(16, iArr, iArr2, iArr3);
        if (Nat.gte(16, iArr3, PExt)) {
            subPExtFrom(iArr3);
        }
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        Nat.inc(8, iArr, iArr2);
        if (Nat256.gte(iArr2, P)) {
            subPFrom(iArr2);
        }
    }

    private static int addPExtTo(int[] iArr) {
        long j4 = iArr[0] & M;
        int[] iArr2 = PExt;
        long j10 = j4 + (iArr2[0] & M);
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            j11 = Nat.incAt(8, iArr, 1);
        }
        long j12 = j11 + ((iArr[8] & M) - 19);
        iArr[8] = (int) j12;
        long j13 = j12 >> 32;
        if (j13 != 0) {
            j13 = Nat.decAt(15, iArr, 9);
        }
        long j14 = j13 + (iArr[15] & M) + (M & (iArr2[15] + 1));
        iArr[15] = (int) j14;
        return (int) (j14 >> 32);
    }

    private static int addPTo(int[] iArr) {
        long j4 = (iArr[0] & M) - 19;
        iArr[0] = (int) j4;
        long j10 = j4 >> 32;
        if (j10 != 0) {
            j10 = Nat.decAt(7, iArr, 1);
        }
        long j11 = j10 + (M & iArr[7]) + KSYMediaMeta.AV_CH_WIDE_LEFT;
        iArr[7] = (int) j11;
        return (int) (j11 >> 32);
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat256.fromBigInteger(bigInteger);
        while (true) {
            int[] iArr = P;
            if (!Nat256.gte(fromBigInteger, iArr)) {
                return fromBigInteger;
            }
            Nat256.subFrom(iArr, fromBigInteger);
        }
    }

    public static void half(int[] iArr, int[] iArr2) {
        if ((iArr[0] & 1) == 0) {
            Nat.shiftDownBit(8, iArr, 0, iArr2);
            return;
        }
        Nat256.add(iArr, P, iArr2);
        Nat.shiftDownBit(8, iArr2, 0);
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
        Nat256.mulAddTo(iArr, iArr2, iArr3);
        if (Nat.gte(16, iArr3, PExt)) {
            subPExtFrom(iArr3);
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
            iArr[7] = iArr[7] & Integer.MAX_VALUE;
        } while (Nat.lessThan(8, iArr, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] iArr) {
        do {
            random(secureRandom, iArr);
        } while (isZero(iArr) != 0);
    }

    public static void reduce(int[] iArr, int[] iArr2) {
        int i4 = iArr[7];
        Nat.shiftUpBit(8, iArr, 8, i4, iArr2, 0);
        int i10 = iArr2[7];
        iArr2[7] = (i10 & Integer.MAX_VALUE) + Nat.addWordTo(7, ((Nat256.mulByWordAddTo(19, iArr, iArr2) << 1) + ((i10 >>> 31) - (i4 >>> 31))) * 19, iArr2);
        if (Nat256.gte(iArr2, P)) {
            subPFrom(iArr2);
        }
    }

    public static void reduce27(int i4, int[] iArr) {
        int i10 = iArr[7];
        iArr[7] = (i10 & Integer.MAX_VALUE) + Nat.addWordTo(7, ((i4 << 1) | (i10 >>> 31)) * 19, iArr);
        if (Nat256.gte(iArr, P)) {
            subPFrom(iArr);
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

    private static int subPExtFrom(int[] iArr) {
        long j4 = iArr[0] & M;
        int[] iArr2 = PExt;
        long j10 = j4 - (iArr2[0] & M);
        iArr[0] = (int) j10;
        long j11 = j10 >> 32;
        if (j11 != 0) {
            j11 = Nat.decAt(8, iArr, 1);
        }
        long j12 = j11 + (iArr[8] & M) + 19;
        iArr[8] = (int) j12;
        long j13 = j12 >> 32;
        if (j13 != 0) {
            j13 = Nat.incAt(15, iArr, 9);
        }
        long j14 = j13 + ((iArr[15] & M) - (M & (iArr2[15] + 1)));
        iArr[15] = (int) j14;
        return (int) (j14 >> 32);
    }

    private static int subPFrom(int[] iArr) {
        long j4 = (iArr[0] & M) + 19;
        iArr[0] = (int) j4;
        long j10 = j4 >> 32;
        if (j10 != 0) {
            j10 = Nat.incAt(7, iArr, 1);
        }
        long j11 = j10 + ((M & iArr[7]) - KSYMediaMeta.AV_CH_WIDE_LEFT);
        iArr[7] = (int) j11;
        return (int) (j11 >> 32);
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat256.sub(iArr, iArr2, iArr3) != 0) {
            addPTo(iArr3);
        }
    }

    public static void subtractExt(int[] iArr, int[] iArr2, int[] iArr3) {
        if (Nat.sub(16, iArr, iArr2, iArr3) != 0) {
            addPExtTo(iArr3);
        }
    }

    public static void twice(int[] iArr, int[] iArr2) {
        Nat.shiftUpBit(8, iArr, 0, iArr2);
        if (Nat256.gte(iArr2, P)) {
            subPFrom(iArr2);
        }
    }
}
