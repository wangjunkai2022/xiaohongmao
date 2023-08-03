package org.bouncycastle.math.ec.rfc7748;

import com.google.common.base.c;
import org.bouncycastle.math.raw.Mod;

/* loaded from: classes5.dex */
public abstract class X25519Field {
    private static final int M24 = 16777215;
    private static final int M25 = 33554431;
    private static final int M26 = 67108863;
    private static final int[] P32 = {-19, -1, -1, -1, -1, -1, -1, Integer.MAX_VALUE};
    private static final int[] ROOT_NEG_ONE = {34513072, 59165138, 4688974, 3500415, 6194736, 33281959, 54535759, 32551604, 163342, 5703241};
    public static final int SIZE = 10;

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i4 = 0; i4 < 10; i4++) {
            iArr3[i4] = iArr[i4] + iArr2[i4];
        }
    }

    public static void addOne(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static void addOne(int[] iArr, int i4) {
        iArr[i4] = iArr[i4] + 1;
    }

    public static void apm(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        for (int i4 = 0; i4 < 10; i4++) {
            int i10 = iArr[i4];
            int i11 = iArr2[i4];
            iArr3[i4] = i10 + i11;
            iArr4[i4] = i10 - i11;
        }
    }

    public static int areEqual(int[] iArr, int[] iArr2) {
        int i4 = 0;
        for (int i10 = 0; i10 < 10; i10++) {
            i4 |= iArr[i10] ^ iArr2[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static boolean areEqualVar(int[] iArr, int[] iArr2) {
        return areEqual(iArr, iArr2) != 0;
    }

    public static void carry(int[] iArr) {
        int i4 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = iArr[4];
        int i14 = iArr[5];
        int i15 = iArr[6];
        int i16 = iArr[7];
        int i17 = iArr[8];
        int i18 = iArr[9];
        int i19 = i11 + (i10 >> 26);
        int i20 = i10 & M26;
        int i21 = i13 + (i12 >> 26);
        int i22 = i12 & M26;
        int i23 = i16 + (i15 >> 26);
        int i24 = i15 & M26;
        int i25 = i18 + (i17 >> 26);
        int i26 = i17 & M26;
        int i27 = i22 + (i19 >> 25);
        int i28 = i19 & M25;
        int i29 = i14 + (i21 >> 25);
        int i30 = i21 & M25;
        int i31 = i26 + (i23 >> 25);
        int i32 = i23 & M25;
        int i33 = i4 + ((i25 >> 25) * 38);
        int i34 = i25 & M25;
        int i35 = i20 + (i33 >> 26);
        int i36 = i33 & M26;
        int i37 = i24 + (i29 >> 26);
        int i38 = i29 & M26;
        int i39 = i28 + (i35 >> 26);
        int i40 = i35 & M26;
        int i41 = i30 + (i27 >> 26);
        int i42 = i27 & M26;
        int i43 = i32 + (i37 >> 26);
        int i44 = i37 & M26;
        int i45 = i31 & M26;
        iArr[0] = i36;
        iArr[1] = i40;
        iArr[2] = i39;
        iArr[3] = i42;
        iArr[4] = i41;
        iArr[5] = i38;
        iArr[6] = i44;
        iArr[7] = i43;
        iArr[8] = i45;
        iArr[9] = i34 + (i31 >> 26);
    }

    public static void cmov(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 0; i12 < 10; i12++) {
            int i13 = i11 + i12;
            int i14 = iArr2[i13];
            iArr2[i13] = i14 ^ ((iArr[i10 + i12] ^ i14) & i4);
        }
    }

    public static void cnegate(int i4, int[] iArr) {
        int i10 = 0 - i4;
        for (int i11 = 0; i11 < 10; i11++) {
            iArr[i11] = (iArr[i11] ^ i10) - i10;
        }
    }

    public static void copy(int[] iArr, int i4, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < 10; i11++) {
            iArr2[i10 + i11] = iArr[i4 + i11];
        }
    }

    public static int[] create() {
        return new int[10];
    }

    public static int[] createTable(int i4) {
        return new int[i4 * 10];
    }

    public static void cswap(int i4, int[] iArr, int[] iArr2) {
        int i10 = 0 - i4;
        for (int i11 = 0; i11 < 10; i11++) {
            int i12 = iArr[i11];
            int i13 = iArr2[i11];
            int i14 = (i12 ^ i13) & i10;
            iArr[i11] = i12 ^ i14;
            iArr2[i11] = i13 ^ i14;
        }
    }

    public static void decode(byte[] bArr, int i4, int[] iArr) {
        decode128(bArr, i4, iArr, 0);
        decode128(bArr, i4 + 16, iArr, 5);
        iArr[9] = iArr[9] & 16777215;
    }

    public static void decode(int[] iArr, int i4, int[] iArr2) {
        decode128(iArr, i4, iArr2, 0);
        decode128(iArr, i4 + 4, iArr2, 5);
        iArr2[9] = iArr2[9] & 16777215;
    }

    private static void decode128(byte[] bArr, int i4, int[] iArr, int i10) {
        int decode32 = decode32(bArr, i4 + 0);
        int decode322 = decode32(bArr, i4 + 4);
        int decode323 = decode32(bArr, i4 + 8);
        int decode324 = decode32(bArr, i4 + 12);
        iArr[i10 + 0] = decode32 & M26;
        iArr[i10 + 1] = ((decode32 >>> 26) | (decode322 << 6)) & M26;
        iArr[i10 + 2] = ((decode323 << 12) | (decode322 >>> 20)) & M25;
        iArr[i10 + 3] = ((decode324 << 19) | (decode323 >>> 13)) & M26;
        iArr[i10 + 4] = decode324 >>> 7;
    }

    private static void decode128(int[] iArr, int i4, int[] iArr2, int i10) {
        int i11 = iArr[i4 + 0];
        int i12 = iArr[i4 + 1];
        int i13 = iArr[i4 + 2];
        int i14 = iArr[i4 + 3];
        iArr2[i10 + 0] = i11 & M26;
        iArr2[i10 + 1] = ((i11 >>> 26) | (i12 << 6)) & M26;
        iArr2[i10 + 2] = ((i13 << 12) | (i12 >>> 20)) & M25;
        iArr2[i10 + 3] = ((i14 << 19) | (i13 >>> 13)) & M26;
        iArr2[i10 + 4] = i14 >>> 7;
    }

    private static int decode32(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        return (bArr[i11 + 1] << c.B) | (bArr[i4] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16);
    }

    public static void encode(int[] iArr, byte[] bArr, int i4) {
        encode128(iArr, 0, bArr, i4);
        encode128(iArr, 5, bArr, i4 + 16);
    }

    public static void encode(int[] iArr, int[] iArr2, int i4) {
        encode128(iArr, 0, iArr2, i4);
        encode128(iArr, 5, iArr2, i4 + 4);
    }

    private static void encode128(int[] iArr, int i4, byte[] bArr, int i10) {
        int i11 = iArr[i4 + 0];
        int i12 = iArr[i4 + 1];
        int i13 = iArr[i4 + 2];
        int i14 = iArr[i4 + 3];
        int i15 = iArr[i4 + 4];
        encode32((i12 << 26) | i11, bArr, i10 + 0);
        encode32((i12 >>> 6) | (i13 << 20), bArr, i10 + 4);
        encode32((i13 >>> 12) | (i14 << 13), bArr, i10 + 8);
        encode32((i15 << 7) | (i14 >>> 19), bArr, i10 + 12);
    }

    private static void encode128(int[] iArr, int i4, int[] iArr2, int i10) {
        int i11 = iArr[i4 + 0];
        int i12 = iArr[i4 + 1];
        int i13 = iArr[i4 + 2];
        int i14 = iArr[i4 + 3];
        int i15 = iArr[i4 + 4];
        iArr2[i10 + 0] = i11 | (i12 << 26);
        iArr2[i10 + 1] = (i12 >>> 6) | (i13 << 20);
        iArr2[i10 + 2] = (i13 >>> 12) | (i14 << 13);
        iArr2[i10 + 3] = (i15 << 7) | (i14 >>> 19);
    }

    private static void encode32(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) i4;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i4 >>> 8);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i4 >>> 16);
        bArr[i12 + 1] = (byte) (i4 >>> 24);
    }

    public static void inv(int[] iArr, int[] iArr2) {
        int[] create = create();
        int[] iArr3 = new int[8];
        copy(iArr, 0, create, 0);
        normalize(create);
        encode(create, iArr3, 0);
        Mod.modOddInverse(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static void invVar(int[] iArr, int[] iArr2) {
        int[] create = create();
        int[] iArr3 = new int[8];
        copy(iArr, 0, create, 0);
        normalize(create);
        encode(create, iArr3, 0);
        Mod.modOddInverseVar(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static int isOne(int[] iArr) {
        int i4 = iArr[0] ^ 1;
        for (int i10 = 1; i10 < 10; i10++) {
            i4 |= iArr[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static boolean isOneVar(int[] iArr) {
        return isOne(iArr) != 0;
    }

    public static int isZero(int[] iArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 10; i10++) {
            i4 |= iArr[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static boolean isZeroVar(int[] iArr) {
        return isZero(iArr) != 0;
    }

    public static void mul(int[] iArr, int i4, int[] iArr2) {
        int i10 = iArr[0];
        int i11 = iArr[1];
        int i12 = iArr[2];
        int i13 = iArr[3];
        int i14 = iArr[4];
        int i15 = iArr[5];
        int i16 = iArr[6];
        int i17 = iArr[7];
        int i18 = iArr[8];
        int i19 = iArr[9];
        long j4 = i4;
        long j10 = i12 * j4;
        int i20 = ((int) j10) & M25;
        long j11 = i14 * j4;
        int i21 = ((int) j11) & M25;
        long j12 = i17 * j4;
        int i22 = ((int) j12) & M25;
        long j13 = i19 * j4;
        int i23 = ((int) j13) & M25;
        long j14 = ((j13 >> 25) * 38) + (i10 * j4);
        iArr2[0] = ((int) j14) & M26;
        long j15 = (j11 >> 25) + (i15 * j4);
        iArr2[5] = ((int) j15) & M26;
        long j16 = (j14 >> 26) + (i11 * j4);
        iArr2[1] = ((int) j16) & M26;
        long j17 = (j10 >> 25) + (i13 * j4);
        iArr2[3] = ((int) j17) & M26;
        long j18 = (j15 >> 26) + (i16 * j4);
        iArr2[6] = ((int) j18) & M26;
        long j19 = (j12 >> 25) + (i18 * j4);
        iArr2[8] = ((int) j19) & M26;
        iArr2[2] = i20 + ((int) (j16 >> 26));
        iArr2[4] = i21 + ((int) (j17 >> 26));
        iArr2[7] = i22 + ((int) (j18 >> 26));
        iArr2[9] = i23 + ((int) (j19 >> 26));
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        int i4 = iArr[0];
        int i10 = iArr2[0];
        int i11 = iArr[1];
        int i12 = iArr2[1];
        int i13 = iArr[2];
        int i14 = iArr2[2];
        int i15 = iArr[3];
        int i16 = iArr2[3];
        int i17 = iArr[4];
        int i18 = iArr2[4];
        int i19 = iArr[5];
        int i20 = iArr2[5];
        int i21 = iArr[6];
        int i22 = iArr2[6];
        int i23 = iArr[7];
        int i24 = iArr2[7];
        int i25 = iArr[8];
        int i26 = iArr2[8];
        int i27 = iArr[9];
        int i28 = iArr2[9];
        long j4 = i4;
        long j10 = i10;
        long j11 = j4 * j10;
        long j12 = i12;
        long j13 = i11;
        long j14 = i14;
        long j15 = i13;
        long j16 = (j4 * j14) + (j13 * j12) + (j15 * j10);
        long j17 = i16;
        long j18 = j4 * j17;
        long j19 = i15;
        long j20 = (((j13 * j14) + (j15 * j12)) << 1) + j18 + (j19 * j10);
        long j21 = i18;
        long j22 = i17;
        long j23 = ((j15 * j14) << 1) + (j4 * j21) + (j13 * j17) + (j19 * j12) + (j10 * j22);
        long j24 = ((((j13 * j21) + (j15 * j17)) + (j19 * j14)) + (j22 * j12)) << 1;
        long j25 = (((j15 * j21) + (j22 * j14)) << 1) + (j19 * j17);
        long j26 = (j19 * j21) + (j22 * j17);
        long j27 = (j22 * j21) << 1;
        long j28 = i19;
        long j29 = i20;
        long j30 = i22;
        long j31 = i21;
        long j32 = i24;
        long j33 = i23;
        long j34 = (j28 * j32) + (j31 * j30) + (j33 * j29);
        long j35 = i26;
        long j36 = i25;
        long j37 = (((j31 * j32) + (j33 * j30)) << 1) + (j28 * j35) + (j36 * j29);
        long j38 = i28;
        long j39 = i27;
        long j40 = ((j33 * j32) << 1) + (j28 * j38) + (j31 * j35) + (j36 * j30) + (j29 * j39);
        long j41 = j11 - (((((j31 * j38) + (j33 * j35)) + (j36 * j32)) + (j39 * j30)) * 76);
        long j42 = ((j4 * j12) + (j13 * j10)) - (((((j33 * j38) + (j39 * j32)) << 1) + (j36 * j35)) * 38);
        long j43 = j16 - (((j36 * j38) + (j35 * j39)) * 38);
        long j44 = j20 - ((j39 * j38) * 76);
        long j45 = j24 - (j28 * j29);
        long j46 = j25 - ((j28 * j30) + (j31 * j29));
        long j47 = j26 - j34;
        long j48 = j27 - j37;
        int i29 = i4 + i19;
        int i30 = i11 + i21;
        int i31 = i13 + i23;
        int i32 = i14 + i24;
        int i33 = i15 + i25;
        int i34 = i17 + i27;
        long j49 = i29;
        long j50 = i10 + i20;
        long j51 = i12 + i22;
        long j52 = i30;
        long j53 = (j49 * j51) + (j52 * j50);
        long j54 = i32;
        long j55 = i31;
        long j56 = (j49 * j54) + (j52 * j51) + (j55 * j50);
        long j57 = i16 + i26;
        long j58 = i33;
        long j59 = i18 + i28;
        long j60 = i34;
        long j61 = (((j55 * j59) + (j60 * j54)) << 1) + (j58 * j57);
        long j62 = j48 + (((((j52 * j54) + (j55 * j51)) << 1) + ((j49 * j57) + (j58 * j50))) - j44);
        int i35 = ((int) j62) & M26;
        long j63 = (j62 >> 26) + (((((j55 * j54) << 1) + ((((j49 * j59) + (j52 * j57)) + (j58 * j51)) + (j50 * j60))) - j23) - j40);
        int i36 = ((int) j63) & M25;
        long j64 = j41 + ((((j63 >> 25) + (((((j52 * j59) + (j55 * j57)) + (j58 * j54)) + (j60 * j51)) << 1)) - j45) * 38);
        iArr3[0] = ((int) j64) & M26;
        long j65 = (j64 >> 26) + j42 + ((j61 - j46) * 38);
        iArr3[1] = ((int) j65) & M26;
        long j66 = (j65 >> 26) + j43 + ((((j58 * j59) + (j60 * j57)) - j47) * 38);
        iArr3[2] = ((int) j66) & M25;
        long j67 = (j66 >> 25) + j44 + ((((j60 * j59) << 1) - j48) * 38);
        iArr3[3] = ((int) j67) & M26;
        long j68 = (j67 >> 26) + j23 + (j40 * 38);
        iArr3[4] = ((int) j68) & M25;
        long j69 = (j68 >> 25) + j45 + ((j49 * j50) - j41);
        iArr3[5] = ((int) j69) & M26;
        long j70 = (j69 >> 26) + j46 + (j53 - j42);
        iArr3[6] = ((int) j70) & M26;
        long j71 = (j70 >> 26) + j47 + (j56 - j43);
        iArr3[7] = ((int) j71) & M25;
        long j72 = (j71 >> 25) + i35;
        iArr3[8] = ((int) j72) & M26;
        iArr3[9] = i36 + ((int) (j72 >> 26));
    }

    public static void negate(int[] iArr, int[] iArr2) {
        for (int i4 = 0; i4 < 10; i4++) {
            iArr2[i4] = -iArr[i4];
        }
    }

    public static void normalize(int[] iArr) {
        int i4 = (iArr[9] >>> 23) & 1;
        reduce(iArr, i4);
        reduce(iArr, -i4);
    }

    public static void one(int[] iArr) {
        iArr[0] = 1;
        for (int i4 = 1; i4 < 10; i4++) {
            iArr[i4] = 0;
        }
    }

    private static void powPm5d8(int[] iArr, int[] iArr2, int[] iArr3) {
        sqr(iArr, iArr2);
        mul(iArr, iArr2, iArr2);
        int[] create = create();
        sqr(iArr2, create);
        mul(iArr, create, create);
        sqr(create, 2, create);
        mul(iArr2, create, create);
        int[] create2 = create();
        sqr(create, 5, create2);
        mul(create, create2, create2);
        int[] create3 = create();
        sqr(create2, 5, create3);
        mul(create, create3, create3);
        sqr(create3, 10, create);
        mul(create2, create, create);
        sqr(create, 25, create2);
        mul(create, create2, create2);
        sqr(create2, 25, create3);
        mul(create, create3, create3);
        sqr(create3, 50, create);
        mul(create2, create, create);
        sqr(create, 125, create2);
        mul(create, create2, create2);
        sqr(create2, 2, create);
        mul(create, iArr, iArr3);
    }

    private static void reduce(int[] iArr, int i4) {
        int i10 = iArr[9];
        long j4 = (((i10 >> 24) + i4) * 19) + iArr[0];
        iArr[0] = ((int) j4) & M26;
        long j10 = (j4 >> 26) + iArr[1];
        iArr[1] = ((int) j10) & M26;
        long j11 = (j10 >> 26) + iArr[2];
        iArr[2] = ((int) j11) & M25;
        long j12 = (j11 >> 25) + iArr[3];
        iArr[3] = ((int) j12) & M26;
        long j13 = (j12 >> 26) + iArr[4];
        iArr[4] = ((int) j13) & M25;
        long j14 = (j13 >> 25) + iArr[5];
        iArr[5] = ((int) j14) & M26;
        long j15 = (j14 >> 26) + iArr[6];
        iArr[6] = ((int) j15) & M26;
        long j16 = (j15 >> 26) + iArr[7];
        iArr[7] = M25 & ((int) j16);
        long j17 = (j16 >> 25) + iArr[8];
        iArr[8] = M26 & ((int) j17);
        iArr[9] = (16777215 & i10) + ((int) (j17 >> 26));
    }

    public static void sqr(int[] iArr, int i4, int[] iArr2) {
        sqr(iArr, iArr2);
        while (true) {
            i4--;
            if (i4 <= 0) {
                return;
            }
            sqr(iArr2, iArr2);
        }
    }

    public static void sqr(int[] iArr, int[] iArr2) {
        int i4 = iArr[0];
        int i10 = iArr[1];
        int i11 = iArr[2];
        int i12 = iArr[3];
        int i13 = iArr[4];
        int i14 = iArr[5];
        int i15 = iArr[6];
        int i16 = iArr[7];
        int i17 = iArr[8];
        int i18 = iArr[9];
        long j4 = i4;
        long j10 = j4 * j4;
        long j11 = i10 * 2;
        long j12 = j4 * j11;
        long j13 = i11 * 2;
        long j14 = i10;
        long j15 = (j4 * j13) + (j14 * j14);
        long j16 = i12 * 2;
        long j17 = i13 * 2;
        long j18 = (i11 * j13) + (j4 * j17) + (j14 * j16);
        long j19 = (j11 * j17) + (j16 * j13);
        long j20 = i12;
        long j21 = (j13 * j17) + (j20 * j20);
        long j22 = j20 * j17;
        long j23 = i13 * j17;
        int i19 = i18 * 2;
        long j24 = i14;
        long j25 = j24 * j24;
        long j26 = i15 * 2;
        long j27 = j24 * j26;
        long j28 = i16 * 2;
        long j29 = i15;
        long j30 = (j24 * j28) + (j29 * j29);
        long j31 = i17 * 2;
        long j32 = i19;
        long j33 = (i16 * j28) + (j24 * j32) + (j29 * j31);
        long j34 = i17;
        long j35 = j10 - (((j26 * j32) + (j31 * j28)) * 38);
        long j36 = j12 - (((j28 * j32) + (j34 * j34)) * 38);
        long j37 = j15 - ((j34 * j32) * 38);
        long j38 = ((j11 * j13) + (j4 * j16)) - ((i18 * j32) * 38);
        long j39 = j19 - j25;
        long j40 = j21 - j27;
        long j41 = j22 - j30;
        long j42 = j23 - ((j26 * j28) + (j24 * j31));
        int i20 = i10 + i15;
        int i21 = i11 + i16;
        int i22 = i12 + i17;
        int i23 = i13 + i18;
        long j43 = i4 + i14;
        long j44 = j43 * j43;
        long j45 = i20 * 2;
        long j46 = j43 * j45;
        long j47 = i21 * 2;
        long j48 = i20;
        long j49 = (j43 * j47) + (j48 * j48);
        long j50 = i22 * 2;
        long j51 = i23 * 2;
        long j52 = (j45 * j51) + (j50 * j47);
        long j53 = i22;
        long j54 = (j47 * j51) + (j53 * j53);
        long j55 = j53 * j51;
        long j56 = i23 * j51;
        long j57 = j42 + (((j45 * j47) + (j43 * j50)) - j38);
        int i24 = ((int) j57) & M26;
        long j58 = (j57 >> 26) + (((((i21 * j47) + (j43 * j51)) + (j48 * j50)) - j18) - j33);
        int i25 = ((int) j58) & M25;
        long j59 = j35 + ((((j58 >> 25) + j52) - j39) * 38);
        iArr2[0] = ((int) j59) & M26;
        long j60 = (j59 >> 26) + j36 + ((j54 - j40) * 38);
        iArr2[1] = ((int) j60) & M26;
        long j61 = (j60 >> 26) + j37 + ((j55 - j41) * 38);
        iArr2[2] = ((int) j61) & M25;
        long j62 = (j61 >> 25) + j38 + ((j56 - j42) * 38);
        iArr2[3] = ((int) j62) & M26;
        long j63 = (j62 >> 26) + j18 + (38 * j33);
        iArr2[4] = ((int) j63) & M25;
        long j64 = (j63 >> 25) + j39 + (j44 - j35);
        iArr2[5] = ((int) j64) & M26;
        long j65 = (j64 >> 26) + j40 + (j46 - j36);
        iArr2[6] = ((int) j65) & M26;
        long j66 = (j65 >> 26) + j41 + (j49 - j37);
        iArr2[7] = ((int) j66) & M25;
        long j67 = (j66 >> 25) + i24;
        iArr2[8] = ((int) j67) & M26;
        iArr2[9] = i25 + ((int) (j67 >> 26));
    }

    public static boolean sqrtRatioVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] create = create();
        int[] create2 = create();
        mul(iArr, iArr2, create);
        sqr(iArr2, create2);
        mul(create, create2, create);
        sqr(create2, create2);
        mul(create2, create, create2);
        int[] create3 = create();
        int[] create4 = create();
        powPm5d8(create2, create3, create4);
        mul(create4, create, create4);
        int[] create5 = create();
        sqr(create4, create5);
        mul(create5, iArr2, create5);
        sub(create5, iArr, create3);
        normalize(create3);
        if (isZeroVar(create3)) {
            copy(create4, 0, iArr3, 0);
            return true;
        }
        add(create5, iArr, create3);
        normalize(create3);
        if (isZeroVar(create3)) {
            mul(create4, ROOT_NEG_ONE, iArr3);
            return true;
        }
        return false;
    }

    public static void sub(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i4 = 0; i4 < 10; i4++) {
            iArr3[i4] = iArr[i4] - iArr2[i4];
        }
    }

    public static void subOne(int[] iArr) {
        iArr[0] = iArr[0] - 1;
    }

    public static void zero(int[] iArr) {
        for (int i4 = 0; i4 < 10; i4++) {
            iArr[i4] = 0;
        }
    }
}
