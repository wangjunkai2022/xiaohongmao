package org.bouncycastle.math.ec.custom.sec;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;
import org.bouncycastle.math.raw.Nat512;
import org.bouncycastle.util.Pack;

/* loaded from: classes5.dex */
public class SecP521R1Field {
    static final int[] P = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 511};
    private static final int P16 = 511;

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        int add = Nat.add(16, iArr, iArr2, iArr3) + iArr[16] + iArr2[16];
        if (add > 511 || (add == 511 && Nat.eq(16, iArr3, P))) {
            add = (add + Nat.inc(16, iArr3)) & 511;
        }
        iArr3[16] = add;
    }

    public static void addOne(int[] iArr, int[] iArr2) {
        int inc = Nat.inc(16, iArr, iArr2) + iArr[16];
        if (inc > 511 || (inc == 511 && Nat.eq(16, iArr2, P))) {
            inc = (inc + Nat.inc(16, iArr2)) & 511;
        }
        iArr2[16] = inc;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        int[] fromBigInteger = Nat.fromBigInteger(521, bigInteger);
        if (Nat.eq(17, fromBigInteger, P)) {
            Nat.zero(17, fromBigInteger);
        }
        return fromBigInteger;
    }

    public static void half(int[] iArr, int[] iArr2) {
        int i4 = iArr[16];
        iArr2[16] = (Nat.shiftDownBit(16, iArr, i4, iArr2) >>> 23) | (i4 >>> 1);
    }

    protected static void implMultiply(int[] iArr, int[] iArr2, int[] iArr3) {
        Nat512.mul(iArr, iArr2, iArr3);
        int i4 = iArr[16];
        int i10 = iArr2[16];
        iArr3[32] = Nat.mul31BothAdd(16, i4, iArr2, i10, iArr, iArr3, 16) + (i4 * i10);
    }

    protected static void implSquare(int[] iArr, int[] iArr2) {
        Nat512.square(iArr, iArr2);
        int i4 = iArr[16];
        iArr2[32] = Nat.mulWordAddTo(16, i4 << 1, iArr, 0, iArr2, 16) + (i4 * i4);
    }

    public static void inv(int[] iArr, int[] iArr2) {
        Mod.checkedModOddInverse(P, iArr, iArr2);
    }

    public static int isZero(int[] iArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 17; i10++) {
            i4 |= iArr[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static void multiply(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] create = Nat.create(33);
        implMultiply(iArr, iArr2, create);
        reduce(create, iArr3);
    }

    public static void negate(int[] iArr, int[] iArr2) {
        if (isZero(iArr) == 0) {
            Nat.sub(17, P, iArr, iArr2);
            return;
        }
        int[] iArr3 = P;
        Nat.sub(17, iArr3, iArr3, iArr2);
    }

    public static void random(SecureRandom secureRandom, int[] iArr) {
        byte[] bArr = new byte[68];
        do {
            secureRandom.nextBytes(bArr);
            Pack.littleEndianToInt(bArr, 0, iArr, 0, 17);
            iArr[16] = iArr[16] & 511;
        } while (Nat.lessThan(17, iArr, P) == 0);
    }

    public static void randomMult(SecureRandom secureRandom, int[] iArr) {
        do {
            random(secureRandom, iArr);
        } while (isZero(iArr) != 0);
    }

    public static void reduce(int[] iArr, int[] iArr2) {
        int i4 = iArr[32];
        int shiftDownBits = (Nat.shiftDownBits(16, iArr, 16, 9, i4, iArr2, 0) >>> 23) + (i4 >>> 9) + Nat.addTo(16, iArr, iArr2);
        if (shiftDownBits > 511 || (shiftDownBits == 511 && Nat.eq(16, iArr2, P))) {
            shiftDownBits = (shiftDownBits + Nat.inc(16, iArr2)) & 511;
        }
        iArr2[16] = shiftDownBits;
    }

    public static void reduce23(int[] iArr) {
        int i4 = iArr[16];
        int addWordTo = Nat.addWordTo(16, i4 >>> 9, iArr) + (i4 & 511);
        if (addWordTo > 511 || (addWordTo == 511 && Nat.eq(16, iArr, P))) {
            addWordTo = (addWordTo + Nat.inc(16, iArr)) & 511;
        }
        iArr[16] = addWordTo;
    }

    public static void square(int[] iArr, int[] iArr2) {
        int[] create = Nat.create(33);
        implSquare(iArr, create);
        reduce(create, iArr2);
    }

    public static void squareN(int[] iArr, int i4, int[] iArr2) {
        int[] create = Nat.create(33);
        implSquare(iArr, create);
        while (true) {
            reduce(create, iArr2);
            i4--;
            if (i4 <= 0) {
                return;
            }
            implSquare(iArr2, create);
        }
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3) {
        int sub = (Nat.sub(16, iArr, iArr2, iArr3) + iArr[16]) - iArr2[16];
        if (sub < 0) {
            sub = (sub + Nat.dec(16, iArr3)) & 511;
        }
        iArr3[16] = sub;
    }

    public static void twice(int[] iArr, int[] iArr2) {
        int i4 = iArr[16];
        iArr2[16] = (Nat.shiftUpBit(16, iArr, i4 << 23, iArr2) | (i4 << 1)) & 511;
    }
}
