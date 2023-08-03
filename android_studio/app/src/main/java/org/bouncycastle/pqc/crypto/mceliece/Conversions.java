package org.bouncycastle.pqc.crypto.mceliece;

import java.math.BigInteger;
import org.bouncycastle.pqc.math.linearalgebra.BigIntUtils;
import org.bouncycastle.pqc.math.linearalgebra.GF2Vector;
import org.bouncycastle.pqc.math.linearalgebra.IntegerFunctions;

/* loaded from: classes5.dex */
final class Conversions {
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final BigInteger ONE = BigInteger.valueOf(1);

    private Conversions() {
    }

    public static byte[] decode(int i4, int i10, GF2Vector gF2Vector) {
        if (gF2Vector.getLength() == i4 && gF2Vector.getHammingWeight() == i10) {
            int[] vecArray = gF2Vector.getVecArray();
            BigInteger binomial = IntegerFunctions.binomial(i4, i10);
            BigInteger bigInteger = ZERO;
            int i11 = i4;
            for (int i12 = 0; i12 < i4; i12++) {
                binomial = binomial.multiply(BigInteger.valueOf(i11 - i10)).divide(BigInteger.valueOf(i11));
                i11--;
                if ((vecArray[i12 >> 5] & (1 << (i12 & 31))) != 0) {
                    bigInteger = bigInteger.add(binomial);
                    i10--;
                    binomial = i11 == i10 ? ONE : binomial.multiply(BigInteger.valueOf(i10 + 1)).divide(BigInteger.valueOf(i11 - i10));
                }
            }
            return BigIntUtils.toMinimalByteArray(bigInteger);
        }
        throw new IllegalArgumentException("vector has wrong length or hamming weight");
    }

    public static GF2Vector encode(int i4, int i10, byte[] bArr) {
        if (i4 >= i10) {
            BigInteger binomial = IntegerFunctions.binomial(i4, i10);
            BigInteger bigInteger = new BigInteger(1, bArr);
            if (bigInteger.compareTo(binomial) < 0) {
                GF2Vector gF2Vector = new GF2Vector(i4);
                int i11 = i4;
                for (int i12 = 0; i12 < i4; i12++) {
                    binomial = binomial.multiply(BigInteger.valueOf(i11 - i10)).divide(BigInteger.valueOf(i11));
                    i11--;
                    if (binomial.compareTo(bigInteger) <= 0) {
                        gF2Vector.setBit(i12);
                        bigInteger = bigInteger.subtract(binomial);
                        i10--;
                        binomial = i11 == i10 ? ONE : binomial.multiply(BigInteger.valueOf(i10 + 1)).divide(BigInteger.valueOf(i11 - i10));
                    }
                }
                return gF2Vector;
            }
            throw new IllegalArgumentException("Encoded number too large.");
        }
        throw new IllegalArgumentException("n < t");
    }

    public static byte[] signConversion(int i4, int i10, byte[] bArr) {
        if (i4 >= i10) {
            BigInteger binomial = IntegerFunctions.binomial(i4, i10);
            int bitLength = binomial.bitLength() - 1;
            int i11 = bitLength >> 3;
            int i12 = bitLength & 7;
            int i13 = 8;
            if (i12 == 0) {
                i11--;
                i12 = 8;
            }
            int i14 = i4 >> 3;
            int i15 = i4 & 7;
            if (i15 == 0) {
                i14--;
            } else {
                i13 = i15;
            }
            int i16 = i14 + 1;
            byte[] bArr2 = new byte[i16];
            if (bArr.length < i16) {
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                for (int length = bArr.length; length < i16; length++) {
                    bArr2[length] = 0;
                }
            } else {
                System.arraycopy(bArr, 0, bArr2, 0, i14);
                bArr2[i14] = (byte) (bArr[i14] & ((1 << i13) - 1));
            }
            BigInteger bigInteger = ZERO;
            int i17 = i4;
            for (int i18 = 0; i18 < i4; i18++) {
                binomial = binomial.multiply(new BigInteger(Integer.toString(i17 - i10))).divide(new BigInteger(Integer.toString(i17)));
                i17--;
                if (((byte) (bArr2[i18 >>> 3] & (1 << (i18 & 7)))) != 0) {
                    bigInteger = bigInteger.add(binomial);
                    i10--;
                    binomial = i17 == i10 ? ONE : binomial.multiply(new BigInteger(Integer.toString(i10 + 1))).divide(new BigInteger(Integer.toString(i17 - i10)));
                }
            }
            int i19 = i11 + 1;
            byte[] bArr3 = new byte[i19];
            byte[] byteArray = bigInteger.toByteArray();
            if (byteArray.length < i19) {
                System.arraycopy(byteArray, 0, bArr3, 0, byteArray.length);
                for (int length2 = byteArray.length; length2 < i19; length2++) {
                    bArr3[length2] = 0;
                }
            } else {
                System.arraycopy(byteArray, 0, bArr3, 0, i11);
                bArr3[i11] = (byte) (((1 << i12) - 1) & byteArray[i11]);
            }
            return bArr3;
        }
        throw new IllegalArgumentException("n < t");
    }
}
