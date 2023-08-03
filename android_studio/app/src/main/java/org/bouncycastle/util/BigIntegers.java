package org.bouncycastle.util;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.math.raw.Mod;
import org.bouncycastle.math.raw.Nat;

/* loaded from: classes5.dex */
public final class BigIntegers {
    private static final int MAX_ITERATIONS = 1000;
    public static final BigInteger ZERO = BigInteger.valueOf(0);
    public static final BigInteger ONE = BigInteger.valueOf(1);
    public static final BigInteger TWO = BigInteger.valueOf(2);
    private static final BigInteger THREE = BigInteger.valueOf(3);
    private static final BigInteger SMALL_PRIMES_PRODUCT = new BigInteger("8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f", 16);
    private static final int MAX_SMALL = BigInteger.valueOf(743).bitLength();

    public static void asUnsignedByteArray(BigInteger bigInteger, byte[] bArr, int i4, int i10) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i10) {
            System.arraycopy(byteArray, 0, bArr, i4, i10);
            return;
        }
        int i11 = 1;
        i11 = (byteArray[0] != 0 || byteArray.length == 1) ? 0 : 0;
        int length = byteArray.length - i11;
        if (length > i10) {
            throw new IllegalArgumentException("standard length exceeded for value");
        }
        int i12 = (i10 - length) + i4;
        Arrays.fill(bArr, i4, i12, (byte) 0);
        System.arraycopy(byteArray, i11, bArr, i12, length);
    }

    public static byte[] asUnsignedByteArray(int i4, BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == i4) {
            return byteArray;
        }
        int i10 = 0;
        if (byteArray[0] == 0 && byteArray.length != 1) {
            i10 = 1;
        }
        int length = byteArray.length - i10;
        if (length <= i4) {
            byte[] bArr = new byte[i4];
            System.arraycopy(byteArray, i10, bArr, i4 - length, length);
            return bArr;
        }
        throw new IllegalArgumentException("standard length exceeded for value");
    }

    public static byte[] asUnsignedByteArray(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] != 0 || byteArray.length == 1) {
            return byteArray;
        }
        int length = byteArray.length - 1;
        byte[] bArr = new byte[length];
        System.arraycopy(byteArray, 1, bArr, 0, length);
        return bArr;
    }

    public static byte byteValueExact(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 7) {
            return bigInteger.byteValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }

    private static byte[] createRandom(int i4, SecureRandom secureRandom) throws IllegalArgumentException {
        if (i4 >= 1) {
            int i10 = (i4 + 7) / 8;
            byte[] bArr = new byte[i10];
            secureRandom.nextBytes(bArr);
            bArr[0] = (byte) (bArr[0] & ((byte) (255 >>> ((i10 * 8) - i4))));
            return bArr;
        }
        throw new IllegalArgumentException("bitLength must be at least 1");
    }

    public static BigInteger createRandomBigInteger(int i4, SecureRandom secureRandom) {
        return new BigInteger(1, createRandom(i4, secureRandom));
    }

    public static BigInteger createRandomInRange(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger createRandomBigInteger;
        int compareTo = bigInteger.compareTo(bigInteger2);
        if (compareTo >= 0) {
            if (compareTo <= 0) {
                return bigInteger;
            }
            throw new IllegalArgumentException("'min' may not be greater than 'max'");
        }
        if (bigInteger.bitLength() > bigInteger2.bitLength() / 2) {
            createRandomBigInteger = createRandomInRange(ZERO, bigInteger2.subtract(bigInteger), secureRandom);
        } else {
            for (int i4 = 0; i4 < 1000; i4++) {
                BigInteger createRandomBigInteger2 = createRandomBigInteger(bigInteger2.bitLength(), secureRandom);
                if (createRandomBigInteger2.compareTo(bigInteger) >= 0 && createRandomBigInteger2.compareTo(bigInteger2) <= 0) {
                    return createRandomBigInteger2;
                }
            }
            createRandomBigInteger = createRandomBigInteger(bigInteger2.subtract(bigInteger).bitLength() - 1, secureRandom);
        }
        return createRandomBigInteger.add(bigInteger);
    }

    public static BigInteger createRandomPrime(int i4, int i10, SecureRandom secureRandom) {
        BigInteger bigInteger;
        if (i4 >= 2) {
            if (i4 == 2) {
                return secureRandom.nextInt() < 0 ? TWO : THREE;
            }
            do {
                byte[] createRandom = createRandom(i4, secureRandom);
                createRandom[0] = (byte) (((byte) (1 << (7 - ((createRandom.length * 8) - i4)))) | createRandom[0]);
                int length = createRandom.length - 1;
                createRandom[length] = (byte) (createRandom[length] | 1);
                bigInteger = new BigInteger(1, createRandom);
                if (i4 > MAX_SMALL) {
                    while (!bigInteger.gcd(SMALL_PRIMES_PRODUCT).equals(ONE)) {
                        bigInteger = bigInteger.add(TWO);
                    }
                }
            } while (!bigInteger.isProbablePrime(i10));
            return bigInteger;
        }
        throw new IllegalArgumentException("bitLength < 2");
    }

    public static BigInteger fromUnsignedByteArray(byte[] bArr) {
        return new BigInteger(1, bArr);
    }

    public static BigInteger fromUnsignedByteArray(byte[] bArr, int i4, int i10) {
        if (i4 != 0 || i10 != bArr.length) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(bArr, i4, bArr2, 0, i10);
            bArr = bArr2;
        }
        return new BigInteger(1, bArr);
    }

    public static int getUnsignedByteLength(BigInteger bigInteger) {
        if (bigInteger.equals(ZERO)) {
            return 1;
        }
        return (bigInteger.bitLength() + 7) / 8;
    }

    public static int intValueExact(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 31) {
            return bigInteger.intValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }

    public static long longValueExact(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 63) {
            return bigInteger.longValue();
        }
        throw new ArithmeticException("BigInteger out of long range");
    }

    public static BigInteger modOddInverse(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger.testBit(0)) {
            if (bigInteger.signum() == 1) {
                if (bigInteger2.signum() < 0 || bigInteger2.compareTo(bigInteger) >= 0) {
                    bigInteger2 = bigInteger2.mod(bigInteger);
                }
                int bitLength = bigInteger.bitLength();
                int[] fromBigInteger = Nat.fromBigInteger(bitLength, bigInteger);
                int[] fromBigInteger2 = Nat.fromBigInteger(bitLength, bigInteger2);
                int length = fromBigInteger.length;
                int[] create = Nat.create(length);
                if (Mod.modOddInverse(fromBigInteger, fromBigInteger2, create) != 0) {
                    return Nat.toBigInteger(length, create);
                }
                throw new ArithmeticException("BigInteger not invertible.");
            }
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        throw new IllegalArgumentException("'M' must be odd");
    }

    public static BigInteger modOddInverseVar(BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger.testBit(0)) {
            if (bigInteger.signum() == 1) {
                BigInteger bigInteger3 = ONE;
                if (bigInteger.equals(bigInteger3)) {
                    return ZERO;
                }
                if (bigInteger2.signum() < 0 || bigInteger2.compareTo(bigInteger) >= 0) {
                    bigInteger2 = bigInteger2.mod(bigInteger);
                }
                if (bigInteger2.equals(bigInteger3)) {
                    return bigInteger3;
                }
                int bitLength = bigInteger.bitLength();
                int[] fromBigInteger = Nat.fromBigInteger(bitLength, bigInteger);
                int[] fromBigInteger2 = Nat.fromBigInteger(bitLength, bigInteger2);
                int length = fromBigInteger.length;
                int[] create = Nat.create(length);
                if (Mod.modOddInverseVar(fromBigInteger, fromBigInteger2, create)) {
                    return Nat.toBigInteger(length, create);
                }
                throw new ArithmeticException("BigInteger not invertible.");
            }
            throw new ArithmeticException("BigInteger: modulus not positive");
        }
        throw new IllegalArgumentException("'M' must be odd");
    }

    public static short shortValueExact(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 15) {
            return bigInteger.shortValue();
        }
        throw new ArithmeticException("BigInteger out of int range");
    }
}
