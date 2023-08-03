package org.bouncycastle.math.ec.rfc7748;

import com.google.common.base.c;
import org.bouncycastle.math.raw.Mod;

/* loaded from: classes5.dex */
public abstract class X448Field {
    private static final int M28 = 268435455;
    private static final int[] P32 = {-1, -1, -1, -1, -1, -1, -1, -2, -1, -1, -1, -1, -1, -1};
    public static final int SIZE = 16;
    private static final long U32 = 4294967295L;

    public static void add(int[] iArr, int[] iArr2, int[] iArr3) {
        for (int i4 = 0; i4 < 16; i4++) {
            iArr3[i4] = iArr[i4] + iArr2[i4];
        }
    }

    public static void addOne(int[] iArr) {
        iArr[0] = iArr[0] + 1;
    }

    public static void addOne(int[] iArr, int i4) {
        iArr[i4] = iArr[i4] + 1;
    }

    public static int areEqual(int[] iArr, int[] iArr2) {
        int i4 = 0;
        for (int i10 = 0; i10 < 16; i10++) {
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
        int i19 = iArr[10];
        int i20 = iArr[11];
        int i21 = iArr[12];
        int i22 = iArr[13];
        int i23 = iArr[14];
        int i24 = iArr[15];
        int i25 = i10 + (i4 >>> 28);
        int i26 = i4 & M28;
        int i27 = i14 + (i13 >>> 28);
        int i28 = i13 & M28;
        int i29 = i18 + (i17 >>> 28);
        int i30 = i17 & M28;
        int i31 = i22 + (i21 >>> 28);
        int i32 = i21 & M28;
        int i33 = i11 + (i25 >>> 28);
        int i34 = i25 & M28;
        int i35 = i15 + (i27 >>> 28);
        int i36 = i27 & M28;
        int i37 = i19 + (i29 >>> 28);
        int i38 = i29 & M28;
        int i39 = i23 + (i31 >>> 28);
        int i40 = i31 & M28;
        int i41 = i12 + (i33 >>> 28);
        int i42 = i33 & M28;
        int i43 = i16 + (i35 >>> 28);
        int i44 = i35 & M28;
        int i45 = i20 + (i37 >>> 28);
        int i46 = i37 & M28;
        int i47 = i24 + (i39 >>> 28);
        int i48 = i39 & M28;
        int i49 = i47 >>> 28;
        int i50 = i47 & M28;
        int i51 = i26 + i49;
        int i52 = i28 + (i41 >>> 28);
        int i53 = i41 & M28;
        int i54 = i30 + i49 + (i43 >>> 28);
        int i55 = i43 & M28;
        int i56 = i32 + (i45 >>> 28);
        int i57 = i45 & M28;
        int i58 = i34 + (i51 >>> 28);
        int i59 = i51 & M28;
        int i60 = i36 + (i52 >>> 28);
        int i61 = i52 & M28;
        int i62 = i38 + (i54 >>> 28);
        int i63 = i54 & M28;
        int i64 = i56 & M28;
        iArr[0] = i59;
        iArr[1] = i58;
        iArr[2] = i42;
        iArr[3] = i53;
        iArr[4] = i61;
        iArr[5] = i60;
        iArr[6] = i44;
        iArr[7] = i55;
        iArr[8] = i63;
        iArr[9] = i62;
        iArr[10] = i46;
        iArr[11] = i57;
        iArr[12] = i64;
        iArr[13] = i40 + (i56 >>> 28);
        iArr[14] = i48;
        iArr[15] = i50;
    }

    public static void cmov(int i4, int[] iArr, int i10, int[] iArr2, int i11) {
        for (int i12 = 0; i12 < 16; i12++) {
            int i13 = i11 + i12;
            int i14 = iArr2[i13];
            iArr2[i13] = i14 ^ ((iArr[i10 + i12] ^ i14) & i4);
        }
    }

    public static void cnegate(int i4, int[] iArr) {
        int[] create = create();
        sub(create, iArr, create);
        cmov(-i4, create, 0, iArr, 0);
    }

    public static void copy(int[] iArr, int i4, int[] iArr2, int i10) {
        for (int i11 = 0; i11 < 16; i11++) {
            iArr2[i10 + i11] = iArr[i4 + i11];
        }
    }

    public static int[] create() {
        return new int[16];
    }

    public static int[] createTable(int i4) {
        return new int[i4 * 16];
    }

    public static void cswap(int i4, int[] iArr, int[] iArr2) {
        int i10 = 0 - i4;
        for (int i11 = 0; i11 < 16; i11++) {
            int i12 = iArr[i11];
            int i13 = iArr2[i11];
            int i14 = (i12 ^ i13) & i10;
            iArr[i11] = i12 ^ i14;
            iArr2[i11] = i13 ^ i14;
        }
    }

    public static void decode(byte[] bArr, int i4, int[] iArr) {
        decode56(bArr, i4, iArr, 0);
        decode56(bArr, i4 + 7, iArr, 2);
        decode56(bArr, i4 + 14, iArr, 4);
        decode56(bArr, i4 + 21, iArr, 6);
        decode56(bArr, i4 + 28, iArr, 8);
        decode56(bArr, i4 + 35, iArr, 10);
        decode56(bArr, i4 + 42, iArr, 12);
        decode56(bArr, i4 + 49, iArr, 14);
    }

    public static void decode(int[] iArr, int i4, int[] iArr2) {
        decode224(iArr, i4, iArr2, 0);
        decode224(iArr, i4 + 7, iArr2, 8);
    }

    private static void decode224(int[] iArr, int i4, int[] iArr2, int i10) {
        int i11 = iArr[i4 + 0];
        int i12 = iArr[i4 + 1];
        int i13 = iArr[i4 + 2];
        int i14 = iArr[i4 + 3];
        int i15 = iArr[i4 + 4];
        int i16 = iArr[i4 + 5];
        int i17 = iArr[i4 + 6];
        iArr2[i10 + 0] = i11 & M28;
        iArr2[i10 + 1] = ((i11 >>> 28) | (i12 << 4)) & M28;
        iArr2[i10 + 2] = ((i12 >>> 24) | (i13 << 8)) & M28;
        iArr2[i10 + 3] = ((i13 >>> 20) | (i14 << 12)) & M28;
        iArr2[i10 + 4] = ((i14 >>> 16) | (i15 << 16)) & M28;
        iArr2[i10 + 5] = ((i15 >>> 12) | (i16 << 20)) & M28;
        iArr2[i10 + 6] = ((i16 >>> 8) | (i17 << 24)) & M28;
        iArr2[i10 + 7] = i17 >>> 4;
    }

    private static int decode24(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        return ((bArr[i10 + 1] & 255) << 16) | (bArr[i4] & 255) | ((bArr[i10] & 255) << 8);
    }

    private static int decode32(byte[] bArr, int i4) {
        int i10 = i4 + 1;
        int i11 = i10 + 1;
        return (bArr[i11 + 1] << c.B) | (bArr[i4] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16);
    }

    private static void decode56(byte[] bArr, int i4, int[] iArr, int i10) {
        int decode32 = decode32(bArr, i4);
        int decode24 = decode24(bArr, i4 + 4);
        iArr[i10] = M28 & decode32;
        iArr[i10 + 1] = (decode24 << 4) | (decode32 >>> 28);
    }

    public static void encode(int[] iArr, byte[] bArr, int i4) {
        encode56(iArr, 0, bArr, i4);
        encode56(iArr, 2, bArr, i4 + 7);
        encode56(iArr, 4, bArr, i4 + 14);
        encode56(iArr, 6, bArr, i4 + 21);
        encode56(iArr, 8, bArr, i4 + 28);
        encode56(iArr, 10, bArr, i4 + 35);
        encode56(iArr, 12, bArr, i4 + 42);
        encode56(iArr, 14, bArr, i4 + 49);
    }

    public static void encode(int[] iArr, int[] iArr2, int i4) {
        encode224(iArr, 0, iArr2, i4);
        encode224(iArr, 8, iArr2, i4 + 7);
    }

    private static void encode224(int[] iArr, int i4, int[] iArr2, int i10) {
        int i11 = iArr[i4 + 0];
        int i12 = iArr[i4 + 1];
        int i13 = iArr[i4 + 2];
        int i14 = iArr[i4 + 3];
        int i15 = iArr[i4 + 4];
        int i16 = iArr[i4 + 5];
        int i17 = iArr[i4 + 6];
        int i18 = iArr[i4 + 7];
        iArr2[i10 + 0] = i11 | (i12 << 28);
        iArr2[i10 + 1] = (i12 >>> 4) | (i13 << 24);
        iArr2[i10 + 2] = (i13 >>> 8) | (i14 << 20);
        iArr2[i10 + 3] = (i14 >>> 12) | (i15 << 16);
        iArr2[i10 + 4] = (i15 >>> 16) | (i16 << 12);
        iArr2[i10 + 5] = (i16 >>> 20) | (i17 << 8);
        iArr2[i10 + 6] = (i18 << 4) | (i17 >>> 24);
    }

    private static void encode24(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) i4;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i4 >>> 8);
        bArr[i11 + 1] = (byte) (i4 >>> 16);
    }

    private static void encode32(int i4, byte[] bArr, int i10) {
        bArr[i10] = (byte) i4;
        int i11 = i10 + 1;
        bArr[i11] = (byte) (i4 >>> 8);
        int i12 = i11 + 1;
        bArr[i12] = (byte) (i4 >>> 16);
        bArr[i12 + 1] = (byte) (i4 >>> 24);
    }

    private static void encode56(int[] iArr, int i4, byte[] bArr, int i10) {
        int i11 = iArr[i4];
        int i12 = iArr[i4 + 1];
        encode32((i12 << 28) | i11, bArr, i10);
        encode24(i12 >>> 4, bArr, i10 + 4);
    }

    public static void inv(int[] iArr, int[] iArr2) {
        int[] create = create();
        int[] iArr3 = new int[14];
        copy(iArr, 0, create, 0);
        normalize(create);
        encode(create, iArr3, 0);
        Mod.modOddInverse(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static void invVar(int[] iArr, int[] iArr2) {
        int[] create = create();
        int[] iArr3 = new int[14];
        copy(iArr, 0, create, 0);
        normalize(create);
        encode(create, iArr3, 0);
        Mod.modOddInverseVar(P32, iArr3, iArr3);
        decode(iArr3, 0, iArr2);
    }

    public static int isOne(int[] iArr) {
        int i4 = iArr[0] ^ 1;
        for (int i10 = 1; i10 < 16; i10++) {
            i4 |= iArr[i10];
        }
        return (((i4 >>> 1) | (i4 & 1)) - 1) >> 31;
    }

    public static boolean isOneVar(int[] iArr) {
        return isOne(iArr) != 0;
    }

    public static int isZero(int[] iArr) {
        int i4 = 0;
        for (int i10 = 0; i10 < 16; i10++) {
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
        int i20 = iArr[10];
        int i21 = iArr[11];
        int i22 = iArr[12];
        int i23 = iArr[13];
        int i24 = iArr[14];
        int i25 = iArr[15];
        long j4 = i11;
        long j10 = i4;
        long j11 = j4 * j10;
        int i26 = ((int) j11) & M28;
        long j12 = i15 * j10;
        int i27 = ((int) j12) & M28;
        long j13 = i19 * j10;
        int i28 = ((int) j13) & M28;
        long j14 = i23 * j10;
        int i29 = ((int) j14) & M28;
        long j15 = (j11 >>> 28) + (i12 * j10);
        iArr2[2] = ((int) j15) & M28;
        long j16 = (j12 >>> 28) + (i16 * j10);
        iArr2[6] = ((int) j16) & M28;
        long j17 = (j13 >>> 28) + (i20 * j10);
        iArr2[10] = ((int) j17) & M28;
        long j18 = (j14 >>> 28) + (i24 * j10);
        iArr2[14] = ((int) j18) & M28;
        long j19 = (j15 >>> 28) + (i13 * j10);
        iArr2[3] = ((int) j19) & M28;
        long j20 = (j16 >>> 28) + (i17 * j10);
        iArr2[7] = ((int) j20) & M28;
        long j21 = (j17 >>> 28) + (i21 * j10);
        iArr2[11] = ((int) j21) & M28;
        long j22 = (j18 >>> 28) + (i25 * j10);
        iArr2[15] = ((int) j22) & M28;
        long j23 = j22 >>> 28;
        long j24 = (j19 >>> 28) + (i14 * j10);
        iArr2[4] = ((int) j24) & M28;
        long j25 = (j20 >>> 28) + j23 + (i18 * j10);
        iArr2[8] = ((int) j25) & M28;
        long j26 = (j21 >>> 28) + (i22 * j10);
        iArr2[12] = ((int) j26) & M28;
        long j27 = j23 + (i10 * j10);
        iArr2[0] = ((int) j27) & M28;
        iArr2[1] = i26 + ((int) (j27 >>> 28));
        iArr2[5] = i27 + ((int) (j24 >>> 28));
        iArr2[9] = i28 + ((int) (j25 >>> 28));
        iArr2[13] = i29 + ((int) (j26 >>> 28));
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
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
        int i19 = iArr[10];
        int i20 = iArr[11];
        int i21 = iArr[12];
        int i22 = iArr[13];
        int i23 = iArr[14];
        int i24 = iArr[15];
        int i25 = iArr2[0];
        int i26 = iArr2[1];
        int i27 = iArr2[2];
        int i28 = iArr2[3];
        int i29 = iArr2[4];
        int i30 = iArr2[5];
        int i31 = iArr2[6];
        int i32 = iArr2[7];
        int i33 = iArr2[8];
        int i34 = iArr2[9];
        int i35 = iArr2[10];
        int i36 = iArr2[11];
        int i37 = iArr2[12];
        int i38 = iArr2[13];
        int i39 = iArr2[14];
        int i40 = iArr2[15];
        int i41 = i4 + i17;
        int i42 = i11 + i19;
        int i43 = i12 + i20;
        int i44 = i13 + i21;
        int i45 = i14 + i22;
        int i46 = i15 + i23;
        int i47 = i25 + i33;
        int i48 = i26 + i34;
        int i49 = i27 + i35;
        int i50 = i28 + i36;
        int i51 = i29 + i37;
        int i52 = i30 + i38;
        int i53 = i31 + i39;
        int i54 = i32 + i40;
        long j4 = i4;
        long j10 = i25;
        long j11 = j4 * j10;
        long j12 = i16;
        long j13 = i26;
        long j14 = j12 * j13;
        long j15 = i15;
        long j16 = i27;
        long j17 = i14;
        long j18 = i28;
        long j19 = i13;
        long j20 = i29;
        long j21 = i12;
        long j22 = i30;
        long j23 = i11;
        long j24 = i31;
        long j25 = i10;
        long j26 = i32;
        long j27 = i17;
        long j28 = i33;
        long j29 = j27 * j28;
        long j30 = i24;
        long j31 = i34;
        long j32 = j30 * j31;
        long j33 = i23;
        long j34 = i35;
        long j35 = i22;
        long j36 = i36;
        long j37 = i21;
        long j38 = i37;
        long j39 = i20;
        long j40 = i38;
        long j41 = i19;
        long j42 = i39;
        long j43 = i18;
        long j44 = i40;
        long j45 = i41;
        long j46 = i47;
        long j47 = j45 * j46;
        long j48 = i16 + i24;
        long j49 = i48;
        long j50 = j48 * j49;
        long j51 = i46;
        long j52 = i49;
        long j53 = i45;
        long j54 = i50;
        long j55 = i44;
        long j56 = i51;
        long j57 = i43;
        long j58 = i52;
        long j59 = i42;
        long j60 = i53;
        long j61 = i10 + i18;
        long j62 = i54;
        long j63 = j50 + (j51 * j52) + (j53 * j54) + (j55 * j56) + (j57 * j58) + (j59 * j60) + (j61 * j62);
        long j64 = ((j11 + j29) + j63) - ((((((j14 + (j15 * j16)) + (j17 * j18)) + (j19 * j20)) + (j21 * j22)) + (j23 * j24)) + (j25 * j26));
        int i55 = ((int) j64) & M28;
        long j65 = j64 >>> 28;
        long j66 = ((((((((j32 + (j33 * j34)) + (j35 * j36)) + (j37 * j38)) + (j39 * j40)) + (j41 * j42)) + (j43 * j44)) + j47) - j11) + j63;
        int i56 = ((int) j66) & M28;
        long j67 = (j25 * j10) + (j4 * j13);
        long j68 = (j30 * j34) + (j33 * j36) + (j35 * j38) + (j37 * j40) + (j39 * j42) + (j41 * j44);
        long j69 = (j61 * j46) + (j45 * j49);
        long j70 = (j48 * j52) + (j51 * j54) + (j53 * j56) + (j55 * j58) + (j57 * j60) + (j59 * j62);
        long j71 = j65 + (((j67 + ((j43 * j28) + (j27 * j31))) + j70) - ((((((j12 * j16) + (j15 * j18)) + (j17 * j20)) + (j19 * j22)) + (j21 * j24)) + (j23 * j26)));
        int i57 = ((int) j71) & M28;
        long j72 = (j66 >>> 28) + ((j68 + j69) - j67) + j70;
        int i58 = ((int) j72) & M28;
        long j73 = (j23 * j10) + (j25 * j13) + (j4 * j16);
        long j74 = (j30 * j36) + (j33 * j38) + (j35 * j40) + (j37 * j42) + (j39 * j44);
        long j75 = (j59 * j46) + (j61 * j49) + (j45 * j52);
        long j76 = (j48 * j54) + (j51 * j56) + (j53 * j58) + (j55 * j60) + (j57 * j62);
        long j77 = (j71 >>> 28) + (((j73 + (((j41 * j28) + (j43 * j31)) + (j27 * j34))) + j76) - (((((j12 * j18) + (j15 * j20)) + (j17 * j22)) + (j19 * j24)) + (j21 * j26)));
        int i59 = ((int) j77) & M28;
        long j78 = (j72 >>> 28) + ((j74 + j75) - j73) + j76;
        int i60 = ((int) j78) & M28;
        long j79 = (j21 * j10) + (j23 * j13) + (j25 * j16) + (j4 * j18);
        long j80 = (j30 * j38) + (j33 * j40) + (j35 * j42) + (j37 * j44);
        long j81 = (j57 * j46) + (j59 * j49) + (j61 * j52) + (j45 * j54);
        long j82 = (j48 * j56) + (j51 * j58) + (j53 * j60) + (j55 * j62);
        long j83 = (j77 >>> 28) + (((j79 + ((((j39 * j28) + (j41 * j31)) + (j43 * j34)) + (j27 * j36))) + j82) - ((((j12 * j20) + (j15 * j22)) + (j17 * j24)) + (j19 * j26)));
        int i61 = ((int) j83) & M28;
        long j84 = (j78 >>> 28) + ((j80 + j81) - j79) + j82;
        int i62 = ((int) j84) & M28;
        long j85 = (j19 * j10) + (j21 * j13) + (j23 * j16) + (j25 * j18) + (j4 * j20);
        long j86 = (j30 * j40) + (j33 * j42) + (j35 * j44);
        long j87 = (j55 * j46) + (j57 * j49) + (j59 * j52) + (j61 * j54) + (j45 * j56);
        long j88 = (j48 * j58) + (j51 * j60) + (j53 * j62);
        long j89 = (j83 >>> 28) + (((j85 + (((((j37 * j28) + (j39 * j31)) + (j41 * j34)) + (j43 * j36)) + (j27 * j38))) + j88) - (((j12 * j22) + (j15 * j24)) + (j17 * j26)));
        int i63 = ((int) j89) & M28;
        long j90 = (j84 >>> 28) + ((j86 + j87) - j85) + j88;
        int i64 = ((int) j90) & M28;
        long j91 = (j17 * j10) + (j19 * j13) + (j21 * j16) + (j23 * j18) + (j25 * j20) + (j4 * j22);
        long j92 = (j30 * j42) + (j33 * j44);
        long j93 = (j53 * j46) + (j55 * j49) + (j57 * j52) + (j59 * j54) + (j61 * j56) + (j45 * j58);
        long j94 = (j48 * j60) + (j51 * j62);
        long j95 = (j89 >>> 28) + (((j91 + ((((((j35 * j28) + (j37 * j31)) + (j39 * j34)) + (j41 * j36)) + (j43 * j38)) + (j27 * j40))) + j94) - ((j12 * j24) + (j15 * j26)));
        int i65 = ((int) j95) & M28;
        long j96 = (j90 >>> 28) + ((j92 + j93) - j91) + j94;
        int i66 = ((int) j96) & M28;
        long j97 = (j15 * j10) + (j17 * j13) + (j19 * j16) + (j21 * j18) + (j23 * j20) + (j25 * j22) + (j4 * j24);
        long j98 = j30 * j44;
        long j99 = (j51 * j46) + (j53 * j49) + (j55 * j52) + (j57 * j54) + (j59 * j56) + (j61 * j58) + (j45 * j60);
        long j100 = j48 * j62;
        long j101 = (j95 >>> 28) + (((j97 + (((((((j33 * j28) + (j35 * j31)) + (j37 * j34)) + (j39 * j36)) + (j41 * j38)) + (j43 * j40)) + (j27 * j42))) + j100) - (j12 * j26));
        int i67 = ((int) j101) & M28;
        long j102 = (j96 >>> 28) + ((j98 + j99) - j97) + j100;
        int i68 = ((int) j102) & M28;
        long j103 = (j10 * j12) + (j13 * j15) + (j17 * j16) + (j19 * j18) + (j21 * j20) + (j23 * j22) + (j25 * j24) + (j4 * j26);
        long j104 = (j48 * j46) + (j51 * j49) + (j53 * j52) + (j55 * j54) + (j57 * j56) + (j59 * j58) + (j61 * j60) + (j45 * j62);
        long j105 = (j101 >>> 28) + j103 + (j30 * j28) + (j31 * j33) + (j35 * j34) + (j37 * j36) + (j39 * j38) + (j41 * j40) + (j43 * j42) + (j27 * j44);
        int i69 = ((int) j105) & M28;
        long j106 = (j102 >>> 28) + (j104 - j103);
        int i70 = ((int) j106) & M28;
        long j107 = j106 >>> 28;
        long j108 = (j105 >>> 28) + j107 + i56;
        int i71 = ((int) j108) & M28;
        long j109 = j107 + i55;
        iArr3[0] = ((int) j109) & M28;
        iArr3[1] = i57 + ((int) (j109 >>> 28));
        iArr3[2] = i59;
        iArr3[3] = i61;
        iArr3[4] = i63;
        iArr3[5] = i65;
        iArr3[6] = i67;
        iArr3[7] = i69;
        iArr3[8] = i71;
        iArr3[9] = i58 + ((int) (j108 >>> 28));
        iArr3[10] = i60;
        iArr3[11] = i62;
        iArr3[12] = i64;
        iArr3[13] = i66;
        iArr3[14] = i68;
        iArr3[15] = i70;
    }

    public static void negate(int[] iArr, int[] iArr2) {
        sub(create(), iArr, iArr2);
    }

    public static void normalize(int[] iArr) {
        reduce(iArr, 1);
        reduce(iArr, -1);
    }

    public static void one(int[] iArr) {
        iArr[0] = 1;
        for (int i4 = 1; i4 < 16; i4++) {
            iArr[i4] = 0;
        }
    }

    private static void powPm3d4(int[] iArr, int[] iArr2) {
        int[] create = create();
        sqr(iArr, create);
        mul(iArr, create, create);
        int[] create2 = create();
        sqr(create, create2);
        mul(iArr, create2, create2);
        int[] create3 = create();
        sqr(create2, 3, create3);
        mul(create2, create3, create3);
        int[] create4 = create();
        sqr(create3, 3, create4);
        mul(create2, create4, create4);
        int[] create5 = create();
        sqr(create4, 9, create5);
        mul(create4, create5, create5);
        int[] create6 = create();
        sqr(create5, create6);
        mul(iArr, create6, create6);
        int[] create7 = create();
        sqr(create6, 18, create7);
        mul(create5, create7, create7);
        int[] create8 = create();
        sqr(create7, 37, create8);
        mul(create7, create8, create8);
        int[] create9 = create();
        sqr(create8, 37, create9);
        mul(create7, create9, create9);
        int[] create10 = create();
        sqr(create9, 111, create10);
        mul(create9, create10, create10);
        int[] create11 = create();
        sqr(create10, create11);
        mul(iArr, create11, create11);
        int[] create12 = create();
        sqr(create11, 223, create12);
        mul(create12, create10, iArr2);
    }

    private static void reduce(int[] iArr, int i4) {
        int i10;
        int i11 = iArr[15];
        int i12 = i11 & M28;
        long j4 = (i11 >>> 28) + i4;
        int i13 = 0;
        long j10 = j4;
        while (true) {
            if (i13 >= 8) {
                break;
            }
            long j11 = j10 + (U32 & iArr[i13]);
            iArr[i13] = ((int) j11) & M28;
            j10 = j11 >> 28;
            i13++;
        }
        long j12 = j10 + j4;
        for (i10 = 8; i10 < 15; i10++) {
            long j13 = j12 + (iArr[i10] & U32);
            iArr[i10] = ((int) j13) & M28;
            j12 = j13 >> 28;
        }
        iArr[15] = i12 + ((int) j12);
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
        int i19 = iArr[10];
        int i20 = iArr[11];
        int i21 = iArr[12];
        int i22 = iArr[13];
        int i23 = iArr[14];
        int i24 = iArr[15];
        int i25 = i4 * 2;
        int i26 = i10 * 2;
        int i27 = i11 * 2;
        int i28 = i12 * 2;
        int i29 = i13 * 2;
        int i30 = i14 * 2;
        int i31 = i15 * 2;
        int i32 = i17 * 2;
        int i33 = i18 * 2;
        int i34 = i19 * 2;
        int i35 = i20 * 2;
        int i36 = i21 * 2;
        int i37 = i22 * 2;
        int i38 = i23 * 2;
        int i39 = i4 + i17;
        int i40 = i10 + i18;
        int i41 = i11 + i19;
        int i42 = i12 + i20;
        int i43 = i13 + i21;
        int i44 = i14 + i22;
        int i45 = i15 + i23;
        int i46 = i16 + i24;
        int i47 = i39 * 2;
        int i48 = i40 * 2;
        int i49 = i41 * 2;
        int i50 = i42 * 2;
        int i51 = i44 * 2;
        long j4 = i4;
        long j10 = j4 * j4;
        long j11 = i16;
        long j12 = i26;
        long j13 = j11 * j12;
        long j14 = i15;
        long j15 = i27;
        long j16 = i14;
        long j17 = i28;
        long j18 = i13;
        long j19 = i17;
        long j20 = i24;
        long j21 = i33;
        long j22 = j20 * j21;
        long j23 = i23;
        long j24 = i34;
        long j25 = i22;
        long j26 = i35;
        long j27 = i21;
        long j28 = i39;
        long j29 = i46;
        long j30 = i48 & U32;
        long j31 = j29 * j30;
        long j32 = i45;
        long j33 = i49 & U32;
        long j34 = i44;
        long j35 = i50 & U32;
        long j36 = i43;
        long j37 = j31 + (j32 * j33) + (j34 * j35) + (j36 * j36);
        long j38 = ((j10 + (j19 * j19)) + j37) - (((j13 + (j14 * j15)) + (j16 * j17)) + (j18 * j18));
        int i52 = ((int) j38) & M28;
        long j39 = (((((j22 + (j23 * j24)) + (j25 * j26)) + (j27 * j27)) + (j28 * j28)) - j10) + j37;
        int i53 = ((int) j39) & M28;
        long j40 = j39 >>> 28;
        long j41 = i10;
        long j42 = i25;
        long j43 = j41 * j42;
        long j44 = i29;
        long j45 = i18;
        long j46 = i32;
        long j47 = j45 * j46;
        long j48 = i36;
        long j49 = i40;
        long j50 = i47 & U32;
        long j51 = (i43 * 2) & U32;
        long j52 = (j29 * j33) + (j32 * j35) + (j34 * j51);
        long j53 = (j38 >>> 28) + (((j43 + j47) + j52) - (((j11 * j15) + (j14 * j17)) + (j16 * j44)));
        int i54 = ((int) j53) & M28;
        long j54 = j40 + (((((j20 * j24) + (j23 * j26)) + (j25 * j48)) + (j49 * j50)) - j43) + j52;
        int i55 = ((int) j54) & M28;
        long j55 = j54 >>> 28;
        long j56 = i11;
        long j57 = (j56 * j42) + (j41 * j41);
        long j58 = (j11 * j17) + (j14 * j44) + (j16 * j16);
        long j59 = i19;
        long j60 = (j59 * j46) + (j45 * j45);
        long j61 = i41;
        long j62 = (j61 * j50) + (j49 * j49);
        long j63 = (j29 * j35) + (j32 * j51) + (j34 * j34);
        long j64 = (j53 >>> 28) + (((j57 + j60) + j63) - j58);
        int i56 = ((int) j64) & M28;
        long j65 = j55 + (((((j20 * j26) + (j23 * j48)) + (j25 * j25)) + j62) - j57) + j63;
        int i57 = ((int) j65) & M28;
        long j66 = i12;
        long j67 = (j66 * j42) + (j56 * j12);
        long j68 = i30;
        long j69 = i20;
        long j70 = (j69 * j46) + (j59 * j21);
        long j71 = i37;
        long j72 = i42;
        long j73 = j51 * j29;
        long j74 = i51 & U32;
        long j75 = j73 + (j32 * j74);
        long j76 = (j64 >>> 28) + (((j67 + j70) + j75) - ((j11 * j44) + (j14 * j68)));
        int i58 = ((int) j76) & M28;
        long j77 = (j65 >>> 28) + ((((j20 * j48) + (j23 * j71)) + ((j72 * j50) + (j61 * j30))) - j67) + j75;
        int i59 = ((int) j77) & M28;
        long j78 = (j18 * j42) + (j66 * j12) + (j56 * j56);
        long j79 = (j27 * j46) + (j69 * j21) + (j59 * j59);
        long j80 = (j36 * j50) + (j72 * j30) + (j61 * j61);
        long j81 = (j29 * j74) + (j32 * j32);
        long j82 = (j76 >>> 28) + (((j78 + j79) + j81) - ((j11 * j68) + (j14 * j14)));
        int i60 = ((int) j82) & M28;
        long j83 = (j77 >>> 28) + ((((j20 * j71) + (j23 * j23)) + j80) - j78) + j81;
        int i61 = ((int) j83) & M28;
        long j84 = (j16 * j42) + (j18 * j12) + (j66 * j15);
        long j85 = (j25 * j46) + (j27 * j21) + (j69 * j24);
        long j86 = ((i45 * 2) & U32) * j29;
        long j87 = (j82 >>> 28) + (((j84 + j85) + j86) - (i31 * j11));
        int i62 = ((int) j87) & M28;
        long j88 = (j83 >>> 28) + (((i38 * j20) + (((j34 * j50) + (j36 * j30)) + (j72 * j33))) - j84) + j86;
        int i63 = ((int) j88) & M28;
        long j89 = (j14 * j42) + (j16 * j12) + (j18 * j15) + (j66 * j66);
        long j90 = j29 * j29;
        long j91 = (j87 >>> 28) + (((j89 + ((((j23 * j46) + (j25 * j21)) + (j27 * j24)) + (j69 * j69))) + j90) - (j11 * j11));
        int i64 = ((int) j91) & M28;
        long j92 = (j88 >>> 28) + (((j20 * j20) + ((((j32 * j50) + (j34 * j30)) + (j36 * j33)) + (j72 * j72))) - j89) + j90;
        int i65 = ((int) j92) & M28;
        long j93 = (j11 * j42) + (j14 * j12) + (j16 * j15) + (j18 * j17);
        long j94 = (j91 >>> 28) + (j46 * j20) + (j23 * j21) + (j25 * j24) + (j27 * j26) + j93;
        int i66 = ((int) j94) & M28;
        long j95 = (j92 >>> 28) + (((((j50 * j29) + (j32 * j30)) + (j34 * j33)) + (j36 * j35)) - j93);
        int i67 = ((int) j95) & M28;
        long j96 = j95 >>> 28;
        long j97 = (j94 >>> 28) + j96 + i53;
        int i68 = ((int) j97) & M28;
        long j98 = j96 + i52;
        iArr2[0] = ((int) j98) & M28;
        iArr2[1] = i54 + ((int) (j98 >>> 28));
        iArr2[2] = i56;
        iArr2[3] = i58;
        iArr2[4] = i60;
        iArr2[5] = i62;
        iArr2[6] = i64;
        iArr2[7] = i66;
        iArr2[8] = i68;
        iArr2[9] = i55 + ((int) (j97 >>> 28));
        iArr2[10] = i57;
        iArr2[11] = i59;
        iArr2[12] = i61;
        iArr2[13] = i63;
        iArr2[14] = i65;
        iArr2[15] = i67;
    }

    public static boolean sqrtRatioVar(int[] iArr, int[] iArr2, int[] iArr3) {
        int[] create = create();
        int[] create2 = create();
        sqr(iArr, create);
        mul(create, iArr2, create);
        sqr(create, create2);
        mul(create, iArr, create);
        mul(create2, iArr, create2);
        mul(create2, iArr2, create2);
        int[] create3 = create();
        powPm3d4(create2, create3);
        mul(create3, create, create3);
        int[] create4 = create();
        sqr(create3, create4);
        mul(create4, iArr2, create4);
        sub(iArr, create4, create4);
        normalize(create4);
        if (isZeroVar(create4)) {
            copy(create3, 0, iArr3, 0);
            return true;
        }
        return false;
    }

    public static void sub(int[] iArr, int[] iArr2, int[] iArr3) {
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
        int i19 = iArr[10];
        int i20 = iArr[11];
        int i21 = iArr[12];
        int i22 = iArr[13];
        int i23 = iArr[14];
        int i24 = iArr[15];
        int i25 = iArr2[0];
        int i26 = iArr2[1];
        int i27 = iArr2[2];
        int i28 = iArr2[3];
        int i29 = iArr2[4];
        int i30 = iArr2[5];
        int i31 = iArr2[6];
        int i32 = iArr2[7];
        int i33 = iArr2[8];
        int i34 = iArr2[9];
        int i35 = iArr2[10];
        int i36 = iArr2[11];
        int i37 = iArr2[12];
        int i38 = iArr2[13];
        int i39 = iArr2[14];
        int i40 = (i10 + 536870910) - i26;
        int i41 = (i14 + 536870910) - i30;
        int i42 = (i18 + 536870910) - i34;
        int i43 = (i22 + 536870910) - i38;
        int i44 = ((i11 + 536870910) - i27) + (i40 >>> 28);
        int i45 = i40 & M28;
        int i46 = ((i15 + 536870910) - i31) + (i41 >>> 28);
        int i47 = i41 & M28;
        int i48 = ((i19 + 536870910) - i35) + (i42 >>> 28);
        int i49 = i42 & M28;
        int i50 = ((i23 + 536870910) - i39) + (i43 >>> 28);
        int i51 = i43 & M28;
        int i52 = ((i12 + 536870910) - i28) + (i44 >>> 28);
        int i53 = i44 & M28;
        int i54 = ((i16 + 536870910) - i32) + (i46 >>> 28);
        int i55 = i46 & M28;
        int i56 = ((i20 + 536870910) - i36) + (i48 >>> 28);
        int i57 = i48 & M28;
        int i58 = ((i24 + 536870910) - iArr2[15]) + (i50 >>> 28);
        int i59 = i50 & M28;
        int i60 = i58 >>> 28;
        int i61 = i58 & M28;
        int i62 = ((i4 + 536870910) - i25) + i60;
        int i63 = ((i13 + 536870910) - i29) + (i52 >>> 28);
        int i64 = i52 & M28;
        int i65 = ((i17 + 536870908) - i33) + i60 + (i54 >>> 28);
        int i66 = i54 & M28;
        int i67 = ((i21 + 536870910) - i37) + (i56 >>> 28);
        int i68 = i56 & M28;
        int i69 = i45 + (i62 >>> 28);
        int i70 = i62 & M28;
        int i71 = i47 + (i63 >>> 28);
        int i72 = i63 & M28;
        int i73 = i49 + (i65 >>> 28);
        int i74 = i65 & M28;
        int i75 = i67 & M28;
        iArr3[0] = i70;
        iArr3[1] = i69;
        iArr3[2] = i53;
        iArr3[3] = i64;
        iArr3[4] = i72;
        iArr3[5] = i71;
        iArr3[6] = i55;
        iArr3[7] = i66;
        iArr3[8] = i74;
        iArr3[9] = i73;
        iArr3[10] = i57;
        iArr3[11] = i68;
        iArr3[12] = i75;
        iArr3[13] = i51 + (i67 >>> 28);
        iArr3[14] = i59;
        iArr3[15] = i61;
    }

    public static void subOne(int[] iArr) {
        int[] create = create();
        create[0] = 1;
        sub(iArr, create, iArr);
    }

    public static void zero(int[] iArr) {
        for (int i4 = 0; i4 < 16; i4++) {
            iArr[i4] = 0;
        }
    }
}
