package org.bouncycastle.crypto.modes.gcm;

import com.google.common.primitives.g;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;

/* loaded from: classes4.dex */
public abstract class GCMUtil {
    private static final int E1 = -520093696;
    private static final long E1L = -2233785415175766016L;
    public static final int SIZE_BYTES = 16;
    public static final int SIZE_INTS = 4;
    public static final int SIZE_LONGS = 2;

    public static byte areEqual(byte[] bArr, byte[] bArr2) {
        int i4 = 0;
        for (int i10 = 0; i10 < 16; i10++) {
            i4 |= bArr[i10] ^ bArr2[i10];
        }
        return (byte) ((((i4 >>> 1) | (i4 & 1)) - 1) >> 31);
    }

    public static int areEqual(int[] iArr, int[] iArr2) {
        int i4 = iArr[2];
        int i10 = (iArr[3] ^ iArr2[3]) | 0 | (iArr[0] ^ iArr2[0]) | (iArr[1] ^ iArr2[1]) | (iArr2[2] ^ i4);
        return (((i10 & 1) | (i10 >>> 1)) - 1) >> 31;
    }

    public static long areEqual(long[] jArr, long[] jArr2) {
        long j4 = (jArr2[1] ^ jArr[1]) | (jArr[0] ^ jArr2[0]) | 0;
        return (((j4 & 1) | (j4 >>> 1)) - 1) >> 63;
    }

    public static void asBytes(int[] iArr, byte[] bArr) {
        Pack.intToBigEndian(iArr, 0, 4, bArr, 0);
    }

    public static void asBytes(long[] jArr, byte[] bArr) {
        Pack.longToBigEndian(jArr, 0, 2, bArr, 0);
    }

    public static byte[] asBytes(int[] iArr) {
        byte[] bArr = new byte[16];
        Pack.intToBigEndian(iArr, 0, 4, bArr, 0);
        return bArr;
    }

    public static byte[] asBytes(long[] jArr) {
        byte[] bArr = new byte[16];
        Pack.longToBigEndian(jArr, 0, 2, bArr, 0);
        return bArr;
    }

    public static void asInts(byte[] bArr, int[] iArr) {
        Pack.bigEndianToInt(bArr, 0, iArr, 0, 4);
    }

    public static int[] asInts(byte[] bArr) {
        int[] iArr = new int[4];
        Pack.bigEndianToInt(bArr, 0, iArr, 0, 4);
        return iArr;
    }

    public static void asLongs(byte[] bArr, long[] jArr) {
        Pack.bigEndianToLong(bArr, 0, jArr, 0, 2);
    }

    public static long[] asLongs(byte[] bArr) {
        long[] jArr = new long[2];
        Pack.bigEndianToLong(bArr, 0, jArr, 0, 2);
        return jArr;
    }

    public static void copy(byte[] bArr, byte[] bArr2) {
        for (int i4 = 0; i4 < 16; i4++) {
            bArr2[i4] = bArr[i4];
        }
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
    }

    public static void copy(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
    }

    public static void divideP(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = j4 >> 63;
        jArr2[0] = ((j4 ^ (E1L & j11)) << 1) | (j10 >>> 63);
        jArr2[1] = (j10 << 1) | (-j11);
    }

    private static long implMul64(long j4, long j10) {
        long j11 = j4 & 1229782938247303441L;
        long j12 = j4 & 2459565876494606882L;
        long j13 = j4 & 4919131752989213764L;
        long j14 = j4 & (-8608480567731124088L);
        long j15 = j10 & 1229782938247303441L;
        long j16 = j10 & 2459565876494606882L;
        long j17 = j10 & 4919131752989213764L;
        long j18 = j10 & (-8608480567731124088L);
        return (((((j11 * j15) ^ (j12 * j18)) ^ (j13 * j17)) ^ (j14 * j16)) & 1229782938247303441L) | (((((j11 * j16) ^ (j12 * j15)) ^ (j13 * j18)) ^ (j14 * j17)) & 2459565876494606882L) | (((((j11 * j17) ^ (j12 * j16)) ^ (j13 * j15)) ^ (j14 * j18)) & 4919131752989213764L) | (((((j11 * j18) ^ (j12 * j17)) ^ (j13 * j16)) ^ (j14 * j15)) & (-8608480567731124088L));
    }

    public static void multiply(byte[] bArr, byte[] bArr2) {
        long[] asLongs = asLongs(bArr);
        multiply(asLongs, asLongs(bArr2));
        asBytes(asLongs, bArr);
    }

    public static void multiply(int[] iArr, int[] iArr2) {
        int i4 = iArr2[0];
        int i10 = iArr2[1];
        int i11 = iArr2[2];
        int i12 = iArr2[3];
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < 4; i17++) {
            int i18 = iArr[i17];
            for (int i19 = 0; i19 < 32; i19++) {
                int i20 = i18 >> 31;
                i18 <<= 1;
                i13 ^= i4 & i20;
                i14 ^= i10 & i20;
                i15 ^= i11 & i20;
                i16 ^= i20 & i12;
                i12 = (i12 >>> 1) | (i11 << 31);
                i11 = (i11 >>> 1) | (i10 << 31);
                i10 = (i10 >>> 1) | (i4 << 31);
                i4 = (i4 >>> 1) ^ (((i12 << 31) >> 8) & E1);
            }
        }
        iArr[0] = i13;
        iArr[1] = i14;
        iArr[2] = i15;
        iArr[3] = i16;
    }

    public static void multiply(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = jArr2[0];
        long j12 = jArr2[1];
        long reverse = Longs.reverse(j4);
        long reverse2 = Longs.reverse(j10);
        long reverse3 = Longs.reverse(j11);
        long reverse4 = Longs.reverse(j12);
        long reverse5 = Longs.reverse(implMul64(reverse, reverse3));
        long implMul64 = implMul64(j4, j11) << 1;
        long reverse6 = Longs.reverse(implMul64(reverse2, reverse4));
        long implMul642 = implMul64(j10, j12) << 1;
        long implMul643 = ((implMul64(j4 ^ j10, j11 ^ j12) << 1) ^ ((reverse6 ^ implMul64) ^ implMul642)) ^ ((implMul642 << 62) ^ (implMul642 << 57));
        long j13 = implMul643 >>> 7;
        long j14 = (implMul643 << 57) ^ ((implMul643 << 63) ^ (implMul643 << 62));
        jArr[0] = reverse5 ^ (j13 ^ ((implMul643 ^ (implMul643 >>> 1)) ^ (implMul643 >>> 2)));
        jArr[1] = j14 ^ ((Longs.reverse(implMul64(reverse ^ reverse2, reverse3 ^ reverse4)) ^ ((implMul64 ^ reverse5) ^ reverse6)) ^ (((implMul642 ^ (implMul642 >>> 1)) ^ (implMul642 >>> 2)) ^ (implMul642 >>> 7)));
    }

    public static void multiplyP(int[] iArr) {
        int i4 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        iArr[0] = (((i12 << 31) >> 31) & E1) ^ (i4 >>> 1);
        iArr[1] = (i10 >>> 1) | (i4 << 31);
        iArr[2] = (i11 >>> 1) | (i10 << 31);
        iArr[3] = (i12 >>> 1) | (i11 << 31);
    }

    public static void multiplyP(int[] iArr, int[] iArr2) {
        int i4 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        iArr2[0] = (((i12 << 31) >> 31) & E1) ^ (i4 >>> 1);
        iArr2[1] = (i10 >>> 1) | (i4 << 31);
        iArr2[2] = (i11 >>> 1) | (i10 << 31);
        iArr2[3] = (i12 >>> 1) | (i11 << 31);
    }

    public static void multiplyP(long[] jArr) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        jArr[0] = (((j10 << 63) >> 63) & E1L) ^ (j4 >>> 1);
        jArr[1] = (j4 << 63) | (j10 >>> 1);
    }

    public static void multiplyP(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        jArr2[0] = (((j10 << 63) >> 63) & E1L) ^ (j4 >>> 1);
        jArr2[1] = (j4 << 63) | (j10 >>> 1);
    }

    public static void multiplyP3(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = j10 << 61;
        jArr2[0] = (j11 >>> 7) ^ ((((j4 >>> 3) ^ j11) ^ (j11 >>> 1)) ^ (j11 >>> 2));
        jArr2[1] = (j4 << 61) | (j10 >>> 3);
    }

    public static void multiplyP4(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = j10 << 60;
        jArr2[0] = (j11 >>> 7) ^ ((((j4 >>> 4) ^ j11) ^ (j11 >>> 1)) ^ (j11 >>> 2));
        jArr2[1] = (j4 << 60) | (j10 >>> 4);
    }

    public static void multiplyP7(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = j10 << 57;
        jArr2[0] = (j11 >>> 7) ^ ((((j4 >>> 7) ^ j11) ^ (j11 >>> 1)) ^ (j11 >>> 2));
        jArr2[1] = (j4 << 57) | (j10 >>> 7);
    }

    public static void multiplyP8(int[] iArr) {
        int i4 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = i12 << 24;
        iArr[0] = (i13 >>> 7) ^ ((((i4 >>> 8) ^ i13) ^ (i13 >>> 1)) ^ (i13 >>> 2));
        iArr[1] = (i10 >>> 8) | (i4 << 24);
        iArr[2] = (i11 >>> 8) | (i10 << 24);
        iArr[3] = (i12 >>> 8) | (i11 << 24);
    }

    public static void multiplyP8(int[] iArr, int[] iArr2) {
        int i4 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = i12 << 24;
        iArr2[0] = (i13 >>> 7) ^ ((((i4 >>> 8) ^ i13) ^ (i13 >>> 1)) ^ (i13 >>> 2));
        iArr2[1] = (i10 >>> 8) | (i4 << 24);
        iArr2[2] = (i11 >>> 8) | (i10 << 24);
        iArr2[3] = (i12 >>> 8) | (i11 << 24);
    }

    public static void multiplyP8(long[] jArr) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = j10 << 56;
        jArr[0] = (j11 >>> 7) ^ ((((j4 >>> 8) ^ j11) ^ (j11 >>> 1)) ^ (j11 >>> 2));
        jArr[1] = (j4 << 56) | (j10 >>> 8);
    }

    public static void multiplyP8(long[] jArr, long[] jArr2) {
        long j4 = jArr[0];
        long j10 = jArr[1];
        long j11 = j10 << 56;
        jArr2[0] = (j11 >>> 7) ^ ((((j4 >>> 8) ^ j11) ^ (j11 >>> 1)) ^ (j11 >>> 2));
        jArr2[1] = (j4 << 56) | (j10 >>> 8);
    }

    public static byte[] oneAsBytes() {
        byte[] bArr = new byte[16];
        bArr[0] = Byte.MIN_VALUE;
        return bArr;
    }

    public static int[] oneAsInts() {
        int[] iArr = new int[4];
        iArr[0] = Integer.MIN_VALUE;
        return iArr;
    }

    public static long[] oneAsLongs() {
        return new long[]{Long.MIN_VALUE};
    }

    public static long[] pAsLongs() {
        return new long[]{g.f34852b};
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[4];
        Interleave.expand64To128Rev(jArr[0], jArr3, 0);
        Interleave.expand64To128Rev(jArr[1], jArr3, 2);
        long j4 = jArr3[0];
        long j10 = jArr3[1];
        long j11 = jArr3[2];
        long j12 = jArr3[3];
        long j13 = j11 ^ ((j12 << 57) ^ ((j12 << 63) ^ (j12 << 62)));
        long j14 = j4 ^ ((((j13 >>> 1) ^ j13) ^ (j13 >>> 2)) ^ (j13 >>> 7));
        jArr2[0] = j14;
        jArr2[1] = (j10 ^ ((((j12 >>> 1) ^ j12) ^ (j12 >>> 2)) ^ (j12 >>> 7))) ^ ((j13 << 57) ^ ((j13 << 63) ^ (j13 << 62)));
    }

    public static void xor(byte[] bArr, int i4, byte[] bArr2, int i10, int i11) {
        while (true) {
            i11--;
            if (i11 < 0) {
                return;
            }
            int i12 = i4 + i11;
            bArr[i12] = (byte) (bArr[i12] ^ bArr2[i10 + i11]);
        }
    }

    public static void xor(byte[] bArr, int i4, byte[] bArr2, int i10, byte[] bArr3, int i11) {
        int i12 = 0;
        do {
            bArr3[i11 + i12] = (byte) (bArr[i4 + i12] ^ bArr2[i10 + i12]);
            int i13 = i12 + 1;
            bArr3[i11 + i13] = (byte) (bArr[i4 + i13] ^ bArr2[i10 + i13]);
            int i14 = i13 + 1;
            bArr3[i11 + i14] = (byte) (bArr[i4 + i14] ^ bArr2[i10 + i14]);
            int i15 = i14 + 1;
            bArr3[i11 + i15] = (byte) (bArr[i4 + i15] ^ bArr2[i10 + i15]);
            i12 = i15 + 1;
        } while (i12 < 16);
    }

    public static void xor(byte[] bArr, byte[] bArr2) {
        int i4 = 0;
        do {
            bArr[i4] = (byte) (bArr[i4] ^ bArr2[i4]);
            int i10 = i4 + 1;
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
            int i11 = i10 + 1;
            bArr[i11] = (byte) (bArr[i11] ^ bArr2[i11]);
            int i12 = i11 + 1;
            bArr[i12] = (byte) (bArr[i12] ^ bArr2[i12]);
            i4 = i12 + 1;
        } while (i4 < 16);
    }

    public static void xor(byte[] bArr, byte[] bArr2, int i4) {
        int i10 = 0;
        do {
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i4 + i10]);
            int i11 = i10 + 1;
            bArr[i11] = (byte) (bArr[i11] ^ bArr2[i4 + i11]);
            int i12 = i11 + 1;
            bArr[i12] = (byte) (bArr[i12] ^ bArr2[i4 + i12]);
            int i13 = i12 + 1;
            bArr[i13] = (byte) (bArr[i13] ^ bArr2[i4 + i13]);
            i10 = i13 + 1;
        } while (i10 < 16);
    }

    public static void xor(byte[] bArr, byte[] bArr2, int i4, int i10) {
        while (true) {
            i10--;
            if (i10 < 0) {
                return;
            }
            bArr[i10] = (byte) (bArr[i10] ^ bArr2[i4 + i10]);
        }
    }

    public static void xor(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i4 = 0;
        do {
            bArr3[i4] = (byte) (bArr[i4] ^ bArr2[i4]);
            int i10 = i4 + 1;
            bArr3[i10] = (byte) (bArr[i10] ^ bArr2[i10]);
            int i11 = i10 + 1;
            bArr3[i11] = (byte) (bArr[i11] ^ bArr2[i11]);
            int i12 = i11 + 1;
            bArr3[i12] = (byte) (bArr[i12] ^ bArr2[i12]);
            i4 = i12 + 1;
        } while (i4 < 16);
    }

    public static void xor(int[] iArr, int[] iArr2) {
        iArr[0] = iArr[0] ^ iArr2[0];
        iArr[1] = iArr[1] ^ iArr2[1];
        iArr[2] = iArr[2] ^ iArr2[2];
        iArr[3] = iArr2[3] ^ iArr[3];
    }

    public static void xor(int[] iArr, int[] iArr2, int[] iArr3) {
        iArr3[0] = iArr[0] ^ iArr2[0];
        iArr3[1] = iArr[1] ^ iArr2[1];
        iArr3[2] = iArr[2] ^ iArr2[2];
        iArr3[3] = iArr[3] ^ iArr2[3];
    }

    public static void xor(long[] jArr, long[] jArr2) {
        jArr[0] = jArr[0] ^ jArr2[0];
        jArr[1] = jArr[1] ^ jArr2[1];
    }

    public static void xor(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr2[1] ^ jArr[1];
    }
}
