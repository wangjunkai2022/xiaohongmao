package org.bouncycastle.crypto.fpe;

import java.math.BigInteger;
import kotlin.UShort;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
class SP80038G {
    protected static final int BLOCK_SIZE = 16;
    static final String FF1_DISABLED = "org.bouncycastle.fpe.disable_ff1";
    static final String FPE_DISABLED = "org.bouncycastle.fpe.disable";
    protected static final double LOG2 = Math.log(2.0d);
    protected static final double TWO_TO_96 = Math.pow(2.0d, 96.0d);

    SP80038G() {
    }

    protected static BigInteger[] calculateModUV(BigInteger bigInteger, int i4, int i10) {
        BigInteger[] bigIntegerArr = {bigInteger.pow(i4), bigIntegerArr[0]};
        if (i10 != i4) {
            bigIntegerArr[1] = bigIntegerArr[1].multiply(bigInteger);
        }
        return bigIntegerArr;
    }

    protected static byte[] calculateP_FF1(int i4, byte b10, int i10, int i11) {
        byte[] bArr = {1, 2, 1, 0, (byte) (i4 >> 8), (byte) i4, 10, b10};
        Pack.intToBigEndian(i10, bArr, 8);
        Pack.intToBigEndian(i11, bArr, 12);
        return bArr;
    }

    protected static byte[] calculateTweak64_FF3_1(byte[] bArr) {
        return new byte[]{bArr[0], bArr[1], bArr[2], (byte) (bArr[3] & 240), bArr[4], bArr[5], bArr[6], (byte) (bArr[3] << 4)};
    }

    protected static BigInteger calculateY_FF1(BlockCipher blockCipher, BigInteger bigInteger, byte[] bArr, int i4, int i10, int i11, byte[] bArr2, short[] sArr) {
        int length = bArr.length;
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(num(bigInteger, sArr));
        int i12 = ((-(length + i4 + 1)) & 15) + length;
        int i13 = i12 + 1 + i4;
        byte[] bArr3 = new byte[i13];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        bArr3[i12] = (byte) i11;
        System.arraycopy(asUnsignedByteArray, 0, bArr3, i13 - asUnsignedByteArray.length, asUnsignedByteArray.length);
        byte[] prf = prf(blockCipher, Arrays.concatenate(bArr2, bArr3));
        if (i10 > 16) {
            int i14 = ((i10 + 16) - 1) / 16;
            byte[] bArr4 = new byte[i14 * 16];
            System.arraycopy(prf, 0, bArr4, 0, 16);
            byte[] bArr5 = new byte[4];
            for (int i15 = 1; i15 < i14; i15++) {
                int i16 = i15 * 16;
                System.arraycopy(prf, 0, bArr4, i16, 16);
                Pack.intToBigEndian(i15, bArr5, 0);
                xor(bArr5, 0, bArr4, (i16 + 16) - 4, 4);
                blockCipher.processBlock(bArr4, i16, bArr4, i16);
            }
            prf = bArr4;
        }
        return num(prf, 0, i10);
    }

    protected static BigInteger calculateY_FF3(BlockCipher blockCipher, BigInteger bigInteger, byte[] bArr, int i4, int i10, short[] sArr) {
        byte[] bArr2 = new byte[16];
        Pack.intToBigEndian(i10, bArr2, 0);
        xor(bArr, i4, bArr2, 0, 4);
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(num(bigInteger, sArr));
        if (16 - asUnsignedByteArray.length >= 4) {
            System.arraycopy(asUnsignedByteArray, 0, bArr2, 16 - asUnsignedByteArray.length, asUnsignedByteArray.length);
            rev(bArr2);
            blockCipher.processBlock(bArr2, 0, bArr2, 0);
            rev(bArr2);
            return num(bArr2, 0, 16);
        }
        throw new IllegalStateException("input out of range");
    }

    protected static void checkArgs(BlockCipher blockCipher, boolean z9, int i4, byte[] bArr, int i10, int i11) {
        checkCipher(blockCipher);
        if (i4 < 2 || i4 > 256) {
            throw new IllegalArgumentException();
        }
        checkData(z9, i4, bArr, i10, i11);
    }

    protected static void checkArgs(BlockCipher blockCipher, boolean z9, int i4, short[] sArr, int i10, int i11) {
        checkCipher(blockCipher);
        if (i4 < 2 || i4 > 65536) {
            throw new IllegalArgumentException();
        }
        checkData(z9, i4, sArr, i10, i11);
    }

    protected static void checkCipher(BlockCipher blockCipher) {
        if (16 != blockCipher.getBlockSize()) {
            throw new IllegalArgumentException();
        }
    }

    protected static void checkData(boolean z9, int i4, byte[] bArr, int i10, int i11) {
        checkLength(z9, i4, i11);
        for (int i12 = 0; i12 < i11; i12++) {
            if ((bArr[i10 + i12] & 255) >= i4) {
                throw new IllegalArgumentException("input data outside of radix");
            }
        }
    }

    protected static void checkData(boolean z9, int i4, short[] sArr, int i10, int i11) {
        checkLength(z9, i4, i11);
        for (int i12 = 0; i12 < i11; i12++) {
            if ((sArr[i10 + i12] & UShort.MAX_VALUE) >= i4) {
                throw new IllegalArgumentException("input data outside of radix");
            }
        }
    }

    private static void checkLength(boolean z9, int i4, int i10) {
        int floor;
        if (i10 >= 2) {
            double d4 = i4;
            if (Math.pow(d4, i10) >= 1000000.0d) {
                if (z9 || i10 <= (floor = ((int) Math.floor(Math.log(TWO_TO_96) / Math.log(d4))) * 2)) {
                    return;
                }
                throw new IllegalArgumentException("maximum input length is " + floor);
            }
        }
        throw new IllegalArgumentException("input too short");
    }

    static short[] decFF1(BlockCipher blockCipher, int i4, byte[] bArr, int i10, int i11, int i12, short[] sArr, short[] sArr2) {
        int length = bArr.length;
        int ceil = (((int) Math.ceil((Math.log(i4) * i12) / LOG2)) + 7) / 8;
        int i13 = (((ceil + 3) / 4) * 4) + 4;
        byte[] calculateP_FF1 = calculateP_FF1(i4, (byte) i11, i10, length);
        BigInteger valueOf = BigInteger.valueOf(i4);
        BigInteger[] calculateModUV = calculateModUV(valueOf, i11, i12);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int i14 = i11;
        int i15 = 9;
        while (i15 >= 0) {
            short[] sArr5 = sArr4;
            sArr4 = sArr3;
            i14 = i10 - i14;
            str(valueOf, num(valueOf, sArr5).subtract(calculateY_FF1(blockCipher, valueOf, bArr, ceil, i13, i15, calculateP_FF1, sArr4)).mod(calculateModUV[i15 & 1]), i14, sArr5, 0);
            i15--;
            sArr3 = sArr5;
        }
        return Arrays.concatenate(sArr3, sArr4);
    }

    private static short[] decFF3_1(BlockCipher blockCipher, int i4, byte[] bArr, int i10, int i11, int i12, short[] sArr, short[] sArr2) {
        BigInteger valueOf = BigInteger.valueOf(i4);
        int i13 = i12;
        BigInteger[] calculateModUV = calculateModUV(valueOf, i11, i13);
        rev(sArr);
        rev(sArr2);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int i14 = 7;
        while (i14 >= 0) {
            int i15 = i10 - i13;
            int i16 = i14 & 1;
            str(valueOf, num(valueOf, sArr4).subtract(calculateY_FF3(blockCipher, valueOf, bArr, 4 - (i16 * 4), i14, sArr3)).mod(calculateModUV[1 - i16]), i15, sArr4, 0);
            i14--;
            i13 = i15;
            short[] sArr5 = sArr4;
            sArr4 = sArr3;
            sArr3 = sArr5;
        }
        rev(sArr3);
        rev(sArr4);
        return Arrays.concatenate(sArr3, sArr4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] decryptFF1(BlockCipher blockCipher, int i4, byte[] bArr, byte[] bArr2, int i10, int i11) {
        checkArgs(blockCipher, true, i4, bArr2, i10, i11);
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        return toByte(decFF1(blockCipher, i4, bArr, i11, i12, i13, toShort(bArr2, i10, i12), toShort(bArr2, i10 + i12, i13)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short[] decryptFF1w(BlockCipher blockCipher, int i4, byte[] bArr, short[] sArr, int i10, int i11) {
        checkArgs(blockCipher, true, i4, sArr, i10, i11);
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        short[] sArr2 = new short[i12];
        short[] sArr3 = new short[i13];
        System.arraycopy(sArr, i10, sArr2, 0, i12);
        System.arraycopy(sArr, i10 + i12, sArr3, 0, i13);
        return decFF1(blockCipher, i4, bArr, i11, i12, i13, sArr2, sArr3);
    }

    static byte[] decryptFF3(BlockCipher blockCipher, int i4, byte[] bArr, byte[] bArr2, int i10, int i11) {
        checkArgs(blockCipher, false, i4, bArr2, i10, i11);
        if (bArr.length == 8) {
            return implDecryptFF3(blockCipher, i4, bArr, bArr2, i10, i11);
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] decryptFF3_1(BlockCipher blockCipher, int i4, byte[] bArr, byte[] bArr2, int i10, int i11) {
        checkArgs(blockCipher, false, i4, bArr2, i10, i11);
        if (bArr.length == 7) {
            return implDecryptFF3(blockCipher, i4, calculateTweak64_FF3_1(bArr), bArr2, i10, i11);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short[] decryptFF3_1w(BlockCipher blockCipher, int i4, byte[] bArr, short[] sArr, int i10, int i11) {
        checkArgs(blockCipher, false, i4, sArr, i10, i11);
        if (bArr.length == 7) {
            return implDecryptFF3w(blockCipher, i4, calculateTweak64_FF3_1(bArr), sArr, i10, i11);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    private static short[] encFF1(BlockCipher blockCipher, int i4, byte[] bArr, int i10, int i11, int i12, short[] sArr, short[] sArr2) {
        int length = bArr.length;
        int ceil = (((int) Math.ceil((Math.log(i4) * i12) / LOG2)) + 7) / 8;
        int i13 = (((ceil + 3) / 4) * 4) + 4;
        byte[] calculateP_FF1 = calculateP_FF1(i4, (byte) i11, i10, length);
        BigInteger valueOf = BigInteger.valueOf(i4);
        BigInteger[] calculateModUV = calculateModUV(valueOf, i11, i12);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int i14 = i12;
        int i15 = 0;
        while (i15 < 10) {
            int i16 = i15;
            short[] sArr5 = sArr3;
            sArr3 = sArr4;
            BigInteger calculateY_FF1 = calculateY_FF1(blockCipher, valueOf, bArr, ceil, i13, i15, calculateP_FF1, sArr3);
            int i17 = i10 - i14;
            str(valueOf, num(valueOf, sArr5).add(calculateY_FF1).mod(calculateModUV[i16 & 1]), i17, sArr5, 0);
            i15 = i16 + 1;
            i14 = i17;
            sArr4 = sArr5;
        }
        return Arrays.concatenate(sArr3, sArr4);
    }

    private static short[] encFF3_1(BlockCipher blockCipher, int i4, byte[] bArr, int i10, int i11, int i12, short[] sArr, short[] sArr2) {
        BigInteger valueOf = BigInteger.valueOf(i4);
        int i13 = i11;
        BigInteger[] calculateModUV = calculateModUV(valueOf, i13, i12);
        rev(sArr);
        rev(sArr2);
        short[] sArr3 = sArr;
        short[] sArr4 = sArr2;
        int i14 = 0;
        while (i14 < 8) {
            i13 = i10 - i13;
            int i15 = i14 & 1;
            str(valueOf, num(valueOf, sArr3).add(calculateY_FF3(blockCipher, valueOf, bArr, 4 - (i15 * 4), i14, sArr4)).mod(calculateModUV[1 - i15]), i13, sArr3, 0);
            i14++;
            short[] sArr5 = sArr4;
            sArr4 = sArr3;
            sArr3 = sArr5;
        }
        rev(sArr3);
        rev(sArr4);
        return Arrays.concatenate(sArr3, sArr4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] encryptFF1(BlockCipher blockCipher, int i4, byte[] bArr, byte[] bArr2, int i10, int i11) {
        checkArgs(blockCipher, true, i4, bArr2, i10, i11);
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        return toByte(encFF1(blockCipher, i4, bArr, i11, i12, i13, toShort(bArr2, i10, i12), toShort(bArr2, i10 + i12, i13)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short[] encryptFF1w(BlockCipher blockCipher, int i4, byte[] bArr, short[] sArr, int i10, int i11) {
        checkArgs(blockCipher, true, i4, sArr, i10, i11);
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        short[] sArr2 = new short[i12];
        short[] sArr3 = new short[i13];
        System.arraycopy(sArr, i10, sArr2, 0, i12);
        System.arraycopy(sArr, i10 + i12, sArr3, 0, i13);
        return encFF1(blockCipher, i4, bArr, i11, i12, i13, sArr2, sArr3);
    }

    static byte[] encryptFF3(BlockCipher blockCipher, int i4, byte[] bArr, byte[] bArr2, int i10, int i11) {
        checkArgs(blockCipher, false, i4, bArr2, i10, i11);
        if (bArr.length == 8) {
            return implEncryptFF3(blockCipher, i4, bArr, bArr2, i10, i11);
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] encryptFF3_1(BlockCipher blockCipher, int i4, byte[] bArr, byte[] bArr2, int i10, int i11) {
        checkArgs(blockCipher, false, i4, bArr2, i10, i11);
        if (bArr.length == 7) {
            return encryptFF3(blockCipher, i4, calculateTweak64_FF3_1(bArr), bArr2, i10, i11);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static short[] encryptFF3_1w(BlockCipher blockCipher, int i4, byte[] bArr, short[] sArr, int i10, int i11) {
        checkArgs(blockCipher, false, i4, sArr, i10, i11);
        if (bArr.length == 7) {
            return encryptFF3w(blockCipher, i4, calculateTweak64_FF3_1(bArr), sArr, i10, i11);
        }
        throw new IllegalArgumentException("tweak should be 56 bits");
    }

    static short[] encryptFF3w(BlockCipher blockCipher, int i4, byte[] bArr, short[] sArr, int i10, int i11) {
        checkArgs(blockCipher, false, i4, sArr, i10, i11);
        if (bArr.length == 8) {
            return implEncryptFF3w(blockCipher, i4, bArr, sArr, i10, i11);
        }
        throw new IllegalArgumentException();
    }

    protected static byte[] implDecryptFF3(BlockCipher blockCipher, int i4, byte[] bArr, byte[] bArr2, int i10, int i11) {
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        return toByte(decFF3_1(blockCipher, i4, bArr, i11, i12, i13, toShort(bArr2, i10, i13), toShort(bArr2, i10 + i13, i12)));
    }

    protected static short[] implDecryptFF3w(BlockCipher blockCipher, int i4, byte[] bArr, short[] sArr, int i10, int i11) {
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        short[] sArr2 = new short[i13];
        short[] sArr3 = new short[i12];
        System.arraycopy(sArr, i10, sArr2, 0, i13);
        System.arraycopy(sArr, i10 + i13, sArr3, 0, i12);
        return decFF3_1(blockCipher, i4, bArr, i11, i12, i13, sArr2, sArr3);
    }

    protected static byte[] implEncryptFF3(BlockCipher blockCipher, int i4, byte[] bArr, byte[] bArr2, int i10, int i11) {
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        return toByte(encFF3_1(blockCipher, i4, bArr, i11, i12, i13, toShort(bArr2, i10, i13), toShort(bArr2, i10 + i13, i12)));
    }

    protected static short[] implEncryptFF3w(BlockCipher blockCipher, int i4, byte[] bArr, short[] sArr, int i10, int i11) {
        int i12 = i11 / 2;
        int i13 = i11 - i12;
        short[] sArr2 = new short[i13];
        short[] sArr3 = new short[i12];
        System.arraycopy(sArr, i10, sArr2, 0, i13);
        System.arraycopy(sArr, i10 + i13, sArr3, 0, i12);
        return encFF3_1(blockCipher, i4, bArr, i11, i12, i13, sArr2, sArr3);
    }

    protected static BigInteger num(BigInteger bigInteger, short[] sArr) {
        BigInteger bigInteger2 = BigIntegers.ZERO;
        for (short s9 : sArr) {
            bigInteger2 = bigInteger2.multiply(bigInteger).add(BigInteger.valueOf(s9 & UShort.MAX_VALUE));
        }
        return bigInteger2;
    }

    protected static BigInteger num(byte[] bArr, int i4, int i10) {
        return new BigInteger(1, Arrays.copyOfRange(bArr, i4, i10 + i4));
    }

    protected static byte[] prf(BlockCipher blockCipher, byte[] bArr) {
        if (bArr.length % 16 == 0) {
            int length = bArr.length / 16;
            byte[] bArr2 = new byte[16];
            for (int i4 = 0; i4 < length; i4++) {
                xor(bArr, i4 * 16, bArr2, 0, 16);
                blockCipher.processBlock(bArr2, 0, bArr2, 0);
            }
            return bArr2;
        }
        throw new IllegalArgumentException();
    }

    protected static void rev(byte[] bArr) {
        int length = bArr.length / 2;
        int length2 = bArr.length - 1;
        for (int i4 = 0; i4 < length; i4++) {
            byte b10 = bArr[i4];
            int i10 = length2 - i4;
            bArr[i4] = bArr[i10];
            bArr[i10] = b10;
        }
    }

    protected static void rev(short[] sArr) {
        int length = sArr.length / 2;
        int length2 = sArr.length - 1;
        for (int i4 = 0; i4 < length; i4++) {
            short s9 = sArr[i4];
            int i10 = length2 - i4;
            sArr[i4] = sArr[i10];
            sArr[i10] = s9;
        }
    }

    protected static void str(BigInteger bigInteger, BigInteger bigInteger2, int i4, short[] sArr, int i10) {
        if (bigInteger2.signum() < 0) {
            throw new IllegalArgumentException();
        }
        for (int i11 = 1; i11 <= i4; i11++) {
            BigInteger[] divideAndRemainder = bigInteger2.divideAndRemainder(bigInteger);
            sArr[(i10 + i4) - i11] = (short) divideAndRemainder[1].intValue();
            bigInteger2 = divideAndRemainder[0];
        }
        if (bigInteger2.signum() != 0) {
            throw new IllegalArgumentException();
        }
    }

    private static byte[] toByte(short[] sArr) {
        int length = sArr.length;
        byte[] bArr = new byte[length];
        for (int i4 = 0; i4 != length; i4++) {
            bArr[i4] = (byte) sArr[i4];
        }
        return bArr;
    }

    private static short[] toShort(byte[] bArr, int i4, int i10) {
        short[] sArr = new short[i10];
        for (int i11 = 0; i11 != i10; i11++) {
            sArr[i11] = (short) (bArr[i4 + i11] & 255);
        }
        return sArr;
    }

    protected static void xor(byte[] bArr, int i4, byte[] bArr2, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = i10 + i12;
            bArr2[i13] = (byte) (bArr2[i13] ^ bArr[i4 + i12]);
        }
    }
}
