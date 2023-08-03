package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.TweakableBlockCipherParameters;

/* loaded from: classes4.dex */
public class ThreefishEngine implements BlockCipher {
    public static final int BLOCKSIZE_1024 = 1024;
    public static final int BLOCKSIZE_256 = 256;
    public static final int BLOCKSIZE_512 = 512;
    private static final long C_240 = 2004413935125273122L;
    private static final int MAX_ROUNDS = 80;
    private static int[] MOD17 = null;
    private static int[] MOD3 = null;
    private static int[] MOD5 = null;
    private static int[] MOD9 = null;
    private static final int ROUNDS_1024 = 80;
    private static final int ROUNDS_256 = 72;
    private static final int ROUNDS_512 = 72;
    private static final int TWEAK_SIZE_BYTES = 16;
    private static final int TWEAK_SIZE_WORDS = 2;
    private int blocksizeBytes;
    private int blocksizeWords;
    private ThreefishCipher cipher;
    private long[] currentBlock;
    private boolean forEncryption;
    private long[] kw;

    /* renamed from: t  reason: collision with root package name */
    private long[] f91241t;

    /* loaded from: classes4.dex */
    private static final class Threefish1024Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 24;
        private static final int ROTATION_0_1 = 13;
        private static final int ROTATION_0_2 = 8;
        private static final int ROTATION_0_3 = 47;
        private static final int ROTATION_0_4 = 8;
        private static final int ROTATION_0_5 = 17;
        private static final int ROTATION_0_6 = 22;
        private static final int ROTATION_0_7 = 37;
        private static final int ROTATION_1_0 = 38;
        private static final int ROTATION_1_1 = 19;
        private static final int ROTATION_1_2 = 10;
        private static final int ROTATION_1_3 = 55;
        private static final int ROTATION_1_4 = 49;
        private static final int ROTATION_1_5 = 18;
        private static final int ROTATION_1_6 = 23;
        private static final int ROTATION_1_7 = 52;
        private static final int ROTATION_2_0 = 33;
        private static final int ROTATION_2_1 = 4;
        private static final int ROTATION_2_2 = 51;
        private static final int ROTATION_2_3 = 13;
        private static final int ROTATION_2_4 = 34;
        private static final int ROTATION_2_5 = 41;
        private static final int ROTATION_2_6 = 59;
        private static final int ROTATION_2_7 = 17;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 20;
        private static final int ROTATION_3_2 = 48;
        private static final int ROTATION_3_3 = 41;
        private static final int ROTATION_3_4 = 47;
        private static final int ROTATION_3_5 = 28;
        private static final int ROTATION_3_6 = 16;
        private static final int ROTATION_3_7 = 25;
        private static final int ROTATION_4_0 = 41;
        private static final int ROTATION_4_1 = 9;
        private static final int ROTATION_4_2 = 37;
        private static final int ROTATION_4_3 = 31;
        private static final int ROTATION_4_4 = 12;
        private static final int ROTATION_4_5 = 47;
        private static final int ROTATION_4_6 = 44;
        private static final int ROTATION_4_7 = 30;
        private static final int ROTATION_5_0 = 16;
        private static final int ROTATION_5_1 = 34;
        private static final int ROTATION_5_2 = 56;
        private static final int ROTATION_5_3 = 51;
        private static final int ROTATION_5_4 = 4;
        private static final int ROTATION_5_5 = 53;
        private static final int ROTATION_5_6 = 42;
        private static final int ROTATION_5_7 = 41;
        private static final int ROTATION_6_0 = 31;
        private static final int ROTATION_6_1 = 44;
        private static final int ROTATION_6_2 = 47;
        private static final int ROTATION_6_3 = 46;
        private static final int ROTATION_6_4 = 19;
        private static final int ROTATION_6_5 = 42;
        private static final int ROTATION_6_6 = 44;
        private static final int ROTATION_6_7 = 25;
        private static final int ROTATION_7_0 = 9;
        private static final int ROTATION_7_1 = 48;
        private static final int ROTATION_7_2 = 35;
        private static final int ROTATION_7_3 = 52;
        private static final int ROTATION_7_4 = 23;
        private static final int ROTATION_7_5 = 31;
        private static final int ROTATION_7_6 = 37;
        private static final int ROTATION_7_7 = 20;

        public Threefish1024Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f91242t;
            int[] iArr = ThreefishEngine.MOD17;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 33) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j4 = jArr[0];
            int i4 = 1;
            long j10 = jArr[1];
            long j11 = jArr[2];
            long j12 = jArr[3];
            long j13 = jArr[4];
            long j14 = jArr[5];
            long j15 = jArr[6];
            long j16 = jArr[7];
            long j17 = jArr[8];
            long j18 = jArr[9];
            long j19 = jArr[10];
            long j20 = jArr[11];
            long j21 = jArr[12];
            long j22 = jArr[13];
            long j23 = jArr[14];
            long j24 = jArr[15];
            int i10 = 19;
            while (i10 >= i4) {
                int i11 = iArr[i10];
                int i12 = iArr2[i10];
                int i13 = i11 + 1;
                long j25 = j4 - jArr3[i13];
                int i14 = i11 + 2;
                long j26 = j10 - jArr3[i14];
                int i15 = i11 + 3;
                long j27 = j11 - jArr3[i15];
                int i16 = i11 + 4;
                long j28 = j12 - jArr3[i16];
                int i17 = i11 + 5;
                long j29 = j13 - jArr3[i17];
                int i18 = i11 + 6;
                int[] iArr3 = iArr;
                int[] iArr4 = iArr2;
                long j30 = j14 - jArr3[i18];
                int i19 = i11 + 7;
                long j31 = j15 - jArr3[i19];
                int i20 = i11 + 8;
                long j32 = j16 - jArr3[i20];
                int i21 = i11 + 9;
                long j33 = j17 - jArr3[i21];
                int i22 = i11 + 10;
                long j34 = j18 - jArr3[i22];
                int i23 = i11 + 11;
                long j35 = j19 - jArr3[i23];
                int i24 = i11 + 12;
                long j36 = j20 - jArr3[i24];
                int i25 = i11 + 13;
                long j37 = j21 - jArr3[i25];
                int i26 = i11 + 14;
                int i27 = i12 + 1;
                long j38 = j22 - (jArr3[i26] + jArr4[i27]);
                int i28 = i11 + 15;
                long j39 = j23 - (jArr3[i28] + jArr4[i12 + 2]);
                long[] jArr5 = jArr3;
                long j40 = i10;
                long xorRotr = ThreefishEngine.xorRotr(j24 - ((jArr3[i11 + 16] + j40) + 1), 9, j25);
                long j41 = j25 - xorRotr;
                long xorRotr2 = ThreefishEngine.xorRotr(j36, 48, j27);
                long j42 = j27 - xorRotr2;
                long xorRotr3 = ThreefishEngine.xorRotr(j38, 35, j31);
                long j43 = j31 - xorRotr3;
                long[] jArr6 = jArr4;
                long xorRotr4 = ThreefishEngine.xorRotr(j34, 52, j29);
                long j44 = j29 - xorRotr4;
                long xorRotr5 = ThreefishEngine.xorRotr(j26, 23, j39);
                long j45 = j39 - xorRotr5;
                long xorRotr6 = ThreefishEngine.xorRotr(j30, 31, j33);
                long j46 = j33 - xorRotr6;
                long xorRotr7 = ThreefishEngine.xorRotr(j28, 37, j35);
                long j47 = j35 - xorRotr7;
                long xorRotr8 = ThreefishEngine.xorRotr(j32, 20, j37);
                long j48 = j37 - xorRotr8;
                long xorRotr9 = ThreefishEngine.xorRotr(xorRotr8, 31, j41);
                long j49 = j41 - xorRotr9;
                long xorRotr10 = ThreefishEngine.xorRotr(xorRotr6, 44, j42);
                long j50 = j42 - xorRotr10;
                long xorRotr11 = ThreefishEngine.xorRotr(xorRotr7, 47, j44);
                long j51 = j44 - xorRotr11;
                long xorRotr12 = ThreefishEngine.xorRotr(xorRotr5, 46, j43);
                long j52 = j43 - xorRotr12;
                long xorRotr13 = ThreefishEngine.xorRotr(xorRotr, 19, j48);
                long j53 = j48 - xorRotr13;
                long xorRotr14 = ThreefishEngine.xorRotr(xorRotr3, 42, j45);
                long j54 = j45 - xorRotr14;
                long xorRotr15 = ThreefishEngine.xorRotr(xorRotr2, 44, j46);
                long j55 = j46 - xorRotr15;
                long xorRotr16 = ThreefishEngine.xorRotr(xorRotr4, 25, j47);
                long j56 = j47 - xorRotr16;
                long xorRotr17 = ThreefishEngine.xorRotr(xorRotr16, 16, j49);
                long j57 = j49 - xorRotr17;
                long xorRotr18 = ThreefishEngine.xorRotr(xorRotr14, 34, j50);
                long j58 = j50 - xorRotr18;
                long xorRotr19 = ThreefishEngine.xorRotr(xorRotr15, 56, j52);
                long j59 = j52 - xorRotr19;
                long xorRotr20 = ThreefishEngine.xorRotr(xorRotr13, 51, j51);
                long j60 = j51 - xorRotr20;
                long xorRotr21 = ThreefishEngine.xorRotr(xorRotr9, 4, j56);
                long j61 = j56 - xorRotr21;
                long xorRotr22 = ThreefishEngine.xorRotr(xorRotr11, 53, j53);
                long j62 = j53 - xorRotr22;
                long xorRotr23 = ThreefishEngine.xorRotr(xorRotr10, 42, j54);
                long j63 = j54 - xorRotr23;
                long xorRotr24 = ThreefishEngine.xorRotr(xorRotr12, 41, j55);
                long j64 = j55 - xorRotr24;
                long xorRotr25 = ThreefishEngine.xorRotr(xorRotr24, 41, j57);
                long xorRotr26 = ThreefishEngine.xorRotr(xorRotr22, 9, j58);
                long xorRotr27 = ThreefishEngine.xorRotr(xorRotr23, 37, j60);
                long j65 = j60 - xorRotr27;
                long xorRotr28 = ThreefishEngine.xorRotr(xorRotr21, 31, j59);
                long j66 = j59 - xorRotr28;
                long xorRotr29 = ThreefishEngine.xorRotr(xorRotr17, 12, j64);
                long j67 = j64 - xorRotr29;
                long xorRotr30 = ThreefishEngine.xorRotr(xorRotr19, 47, j61);
                long j68 = j61 - xorRotr30;
                long xorRotr31 = ThreefishEngine.xorRotr(xorRotr18, 44, j62);
                long j69 = j62 - xorRotr31;
                long xorRotr32 = ThreefishEngine.xorRotr(xorRotr20, 30, j63);
                long j70 = j63 - xorRotr32;
                long j71 = (j57 - xorRotr25) - jArr5[i11];
                long j72 = xorRotr25 - jArr5[i13];
                long j73 = (j58 - xorRotr26) - jArr5[i14];
                long j74 = xorRotr26 - jArr5[i15];
                long j75 = j65 - jArr5[i16];
                long j76 = xorRotr27 - jArr5[i17];
                long j77 = j66 - jArr5[i18];
                long j78 = xorRotr28 - jArr5[i19];
                long j79 = j67 - jArr5[i20];
                long j80 = xorRotr29 - jArr5[i21];
                long j81 = j68 - jArr5[i22];
                long j82 = xorRotr30 - jArr5[i23];
                long j83 = j69 - jArr5[i24];
                long j84 = xorRotr31 - (jArr5[i25] + jArr6[i12]);
                long j85 = j70 - (jArr5[i26] + jArr6[i27]);
                long xorRotr33 = ThreefishEngine.xorRotr(xorRotr32 - (jArr5[i28] + j40), 5, j71);
                long j86 = j71 - xorRotr33;
                long xorRotr34 = ThreefishEngine.xorRotr(j82, 20, j73);
                long j87 = j73 - xorRotr34;
                long xorRotr35 = ThreefishEngine.xorRotr(j84, 48, j77);
                long j88 = j77 - xorRotr35;
                long xorRotr36 = ThreefishEngine.xorRotr(j80, 41, j75);
                long j89 = j75 - xorRotr36;
                long xorRotr37 = ThreefishEngine.xorRotr(j72, 47, j85);
                long j90 = j85 - xorRotr37;
                long xorRotr38 = ThreefishEngine.xorRotr(j76, 28, j79);
                long j91 = j79 - xorRotr38;
                long xorRotr39 = ThreefishEngine.xorRotr(j74, 16, j81);
                long j92 = j81 - xorRotr39;
                long xorRotr40 = ThreefishEngine.xorRotr(j78, 25, j83);
                long j93 = j83 - xorRotr40;
                long xorRotr41 = ThreefishEngine.xorRotr(xorRotr40, 33, j86);
                long j94 = j86 - xorRotr41;
                long xorRotr42 = ThreefishEngine.xorRotr(xorRotr38, 4, j87);
                long j95 = j87 - xorRotr42;
                long xorRotr43 = ThreefishEngine.xorRotr(xorRotr39, 51, j89);
                long j96 = j89 - xorRotr43;
                long xorRotr44 = ThreefishEngine.xorRotr(xorRotr37, 13, j88);
                long j97 = j88 - xorRotr44;
                long xorRotr45 = ThreefishEngine.xorRotr(xorRotr33, 34, j93);
                long j98 = j93 - xorRotr45;
                long xorRotr46 = ThreefishEngine.xorRotr(xorRotr35, 41, j90);
                long j99 = j90 - xorRotr46;
                long xorRotr47 = ThreefishEngine.xorRotr(xorRotr34, 59, j91);
                long j100 = j91 - xorRotr47;
                long xorRotr48 = ThreefishEngine.xorRotr(xorRotr36, 17, j92);
                long j101 = j92 - xorRotr48;
                long xorRotr49 = ThreefishEngine.xorRotr(xorRotr48, 38, j94);
                long j102 = j94 - xorRotr49;
                long xorRotr50 = ThreefishEngine.xorRotr(xorRotr46, 19, j95);
                long j103 = j95 - xorRotr50;
                long xorRotr51 = ThreefishEngine.xorRotr(xorRotr47, 10, j97);
                long j104 = j97 - xorRotr51;
                long xorRotr52 = ThreefishEngine.xorRotr(xorRotr45, 55, j96);
                long j105 = j96 - xorRotr52;
                long xorRotr53 = ThreefishEngine.xorRotr(xorRotr41, 49, j101);
                long j106 = j101 - xorRotr53;
                long xorRotr54 = ThreefishEngine.xorRotr(xorRotr43, 18, j98);
                long j107 = j98 - xorRotr54;
                long xorRotr55 = ThreefishEngine.xorRotr(xorRotr42, 23, j99);
                long j108 = j99 - xorRotr55;
                long xorRotr56 = ThreefishEngine.xorRotr(xorRotr44, 52, j100);
                long j109 = j100 - xorRotr56;
                long xorRotr57 = ThreefishEngine.xorRotr(xorRotr56, 24, j102);
                long j110 = j102 - xorRotr57;
                long xorRotr58 = ThreefishEngine.xorRotr(xorRotr54, 13, j103);
                j11 = j103 - xorRotr58;
                long xorRotr59 = ThreefishEngine.xorRotr(xorRotr55, 8, j105);
                long j111 = j105 - xorRotr59;
                long xorRotr60 = ThreefishEngine.xorRotr(xorRotr53, 47, j104);
                long j112 = j104 - xorRotr60;
                long xorRotr61 = ThreefishEngine.xorRotr(xorRotr49, 8, j109);
                long j113 = j109 - xorRotr61;
                long xorRotr62 = ThreefishEngine.xorRotr(xorRotr51, 17, j106);
                long j114 = j106 - xorRotr62;
                j22 = ThreefishEngine.xorRotr(xorRotr50, 22, j107);
                j24 = ThreefishEngine.xorRotr(xorRotr52, 37, j108);
                j23 = j108 - j24;
                j20 = xorRotr62;
                j21 = j107 - j22;
                iArr = iArr3;
                jArr4 = jArr6;
                jArr3 = jArr5;
                j17 = j113;
                j18 = xorRotr61;
                i4 = 1;
                j13 = j111;
                j10 = xorRotr57;
                i10 -= 2;
                j12 = xorRotr58;
                iArr2 = iArr4;
                j16 = xorRotr60;
                j19 = j114;
                j14 = xorRotr59;
                j15 = j112;
                j4 = j110;
            }
            long[] jArr7 = jArr3;
            long[] jArr8 = jArr4;
            long j115 = j4 - jArr7[0];
            long j116 = j10 - jArr7[1];
            long j117 = j11 - jArr7[2];
            long j118 = j12 - jArr7[3];
            long j119 = j13 - jArr7[4];
            long j120 = j14 - jArr7[5];
            long j121 = j15 - jArr7[6];
            long j122 = j16 - jArr7[7];
            long j123 = j17 - jArr7[8];
            long j124 = j18 - jArr7[9];
            long j125 = j19 - jArr7[10];
            long j126 = j21 - jArr7[12];
            long j127 = j22 - (jArr7[13] + jArr8[0]);
            long j128 = j23 - (jArr7[14] + jArr8[1]);
            jArr2[0] = j115;
            jArr2[1] = j116;
            jArr2[2] = j117;
            jArr2[3] = j118;
            jArr2[4] = j119;
            jArr2[5] = j120;
            jArr2[6] = j121;
            jArr2[7] = j122;
            jArr2[8] = j123;
            jArr2[9] = j124;
            jArr2[10] = j125;
            jArr2[11] = j20 - jArr7[11];
            jArr2[12] = j126;
            jArr2[13] = j127;
            jArr2[14] = j128;
            jArr2[15] = j24 - jArr7[15];
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f91242t;
            int[] iArr = ThreefishEngine.MOD17;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 33) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j4 = jArr[0];
            int i4 = 1;
            long j10 = jArr[1];
            long j11 = jArr[2];
            long j12 = jArr[3];
            long j13 = jArr[4];
            long j14 = jArr[5];
            long j15 = jArr[6];
            long j16 = jArr[7];
            long j17 = jArr[8];
            long j18 = jArr[9];
            long j19 = jArr[10];
            long j20 = jArr[11];
            long j21 = jArr[12];
            long j22 = jArr[13];
            long j23 = jArr[14];
            long j24 = jArr[15];
            long j25 = j4 + jArr3[0];
            long j26 = j10 + jArr3[1];
            long j27 = j11 + jArr3[2];
            long j28 = j12 + jArr3[3];
            long j29 = j13 + jArr3[4];
            long j30 = j14 + jArr3[5];
            long j31 = j15 + jArr3[6];
            long j32 = j16 + jArr3[7];
            long j33 = j17 + jArr3[8];
            long j34 = j18 + jArr3[9];
            long j35 = j19 + jArr3[10];
            long j36 = j20 + jArr3[11];
            long j37 = j21 + jArr3[12];
            long j38 = j22 + jArr3[13] + jArr4[0];
            long j39 = j23 + jArr3[14] + jArr4[1];
            long j40 = j28;
            long j41 = j30;
            long j42 = j32;
            long j43 = j34;
            long j44 = j36;
            long j45 = j38;
            long j46 = j24 + jArr3[15];
            while (i4 < 20) {
                int i10 = iArr[i4];
                int i11 = iArr2[i4];
                long j47 = j25 + j26;
                long rotlXor = ThreefishEngine.rotlXor(j26, 24, j47);
                long j48 = j27 + j40;
                long rotlXor2 = ThreefishEngine.rotlXor(j40, 13, j48);
                long[] jArr5 = jArr3;
                int[] iArr3 = iArr;
                int[] iArr4 = iArr2;
                long j49 = j41;
                long j50 = j29 + j49;
                long rotlXor3 = ThreefishEngine.rotlXor(j49, 8, j50);
                int i12 = i4;
                long j51 = j42;
                long j52 = j31 + j51;
                long rotlXor4 = ThreefishEngine.rotlXor(j51, 47, j52);
                long[] jArr6 = jArr4;
                long j53 = j43;
                long j54 = j33 + j53;
                long rotlXor5 = ThreefishEngine.rotlXor(j53, 8, j54);
                long j55 = j44;
                long j56 = j35 + j55;
                long rotlXor6 = ThreefishEngine.rotlXor(j55, 17, j56);
                long j57 = j45;
                long j58 = j37 + j57;
                long rotlXor7 = ThreefishEngine.rotlXor(j57, 22, j58);
                long j59 = j46;
                long j60 = j39 + j59;
                long rotlXor8 = ThreefishEngine.rotlXor(j59, 37, j60);
                long j61 = j47 + rotlXor5;
                long rotlXor9 = ThreefishEngine.rotlXor(rotlXor5, 38, j61);
                long j62 = j48 + rotlXor7;
                long rotlXor10 = ThreefishEngine.rotlXor(rotlXor7, 19, j62);
                long j63 = j52 + rotlXor6;
                long rotlXor11 = ThreefishEngine.rotlXor(rotlXor6, 10, j63);
                long j64 = j50 + rotlXor8;
                long rotlXor12 = ThreefishEngine.rotlXor(rotlXor8, 55, j64);
                long j65 = j56 + rotlXor4;
                long rotlXor13 = ThreefishEngine.rotlXor(rotlXor4, 49, j65);
                long j66 = j58 + rotlXor2;
                long rotlXor14 = ThreefishEngine.rotlXor(rotlXor2, 18, j66);
                long j67 = j60 + rotlXor3;
                long rotlXor15 = ThreefishEngine.rotlXor(rotlXor3, 23, j67);
                long j68 = j54 + rotlXor;
                long rotlXor16 = ThreefishEngine.rotlXor(rotlXor, 52, j68);
                long j69 = j61 + rotlXor13;
                long rotlXor17 = ThreefishEngine.rotlXor(rotlXor13, 33, j69);
                long j70 = j62 + rotlXor15;
                long rotlXor18 = ThreefishEngine.rotlXor(rotlXor15, 4, j70);
                long j71 = j64 + rotlXor14;
                long rotlXor19 = ThreefishEngine.rotlXor(rotlXor14, 51, j71);
                long j72 = j63 + rotlXor16;
                long rotlXor20 = ThreefishEngine.rotlXor(rotlXor16, 13, j72);
                long j73 = j66 + rotlXor12;
                long rotlXor21 = ThreefishEngine.rotlXor(rotlXor12, 34, j73);
                long j74 = j67 + rotlXor10;
                long rotlXor22 = ThreefishEngine.rotlXor(rotlXor10, 41, j74);
                long j75 = j68 + rotlXor11;
                long rotlXor23 = ThreefishEngine.rotlXor(rotlXor11, 59, j75);
                long j76 = j65 + rotlXor9;
                long rotlXor24 = ThreefishEngine.rotlXor(rotlXor9, 17, j76);
                long j77 = j69 + rotlXor21;
                long rotlXor25 = ThreefishEngine.rotlXor(rotlXor21, 5, j77);
                long j78 = j70 + rotlXor23;
                long rotlXor26 = ThreefishEngine.rotlXor(rotlXor23, 20, j78);
                long j79 = j72 + rotlXor22;
                long rotlXor27 = ThreefishEngine.rotlXor(rotlXor22, 48, j79);
                long j80 = j71 + rotlXor24;
                long rotlXor28 = ThreefishEngine.rotlXor(rotlXor24, 41, j80);
                long j81 = j74 + rotlXor20;
                long rotlXor29 = ThreefishEngine.rotlXor(rotlXor20, 47, j81);
                long j82 = j75 + rotlXor18;
                long rotlXor30 = ThreefishEngine.rotlXor(rotlXor18, 28, j82);
                long j83 = j76 + rotlXor19;
                long rotlXor31 = ThreefishEngine.rotlXor(rotlXor19, 16, j83);
                long j84 = j73 + rotlXor17;
                long rotlXor32 = ThreefishEngine.rotlXor(rotlXor17, 25, j84);
                long j85 = j77 + jArr5[i10];
                int i13 = i10 + 1;
                long j86 = rotlXor29 + jArr5[i13];
                int i14 = i10 + 2;
                long j87 = j78 + jArr5[i14];
                int i15 = i10 + 3;
                long j88 = rotlXor31 + jArr5[i15];
                int i16 = i10 + 4;
                long j89 = j80 + jArr5[i16];
                int i17 = i10 + 5;
                long j90 = rotlXor30 + jArr5[i17];
                int i18 = i10 + 6;
                long j91 = j79 + jArr5[i18];
                int i19 = i10 + 7;
                long j92 = rotlXor32 + jArr5[i19];
                int i20 = i10 + 8;
                long j93 = j82 + jArr5[i20];
                int i21 = i10 + 9;
                long j94 = rotlXor28 + jArr5[i21];
                int i22 = i10 + 10;
                long j95 = j83 + jArr5[i22];
                int i23 = i10 + 11;
                long j96 = rotlXor26 + jArr5[i23];
                int i24 = i10 + 12;
                long j97 = j84 + jArr5[i24];
                int i25 = i10 + 13;
                long j98 = rotlXor27 + jArr5[i25] + jArr6[i11];
                int i26 = i10 + 14;
                int i27 = i11 + 1;
                long j99 = j81 + jArr5[i26] + jArr6[i27];
                int i28 = i10 + 15;
                long j100 = jArr5[i28];
                long j101 = i12;
                long j102 = rotlXor25 + j100 + j101;
                long j103 = j85 + j86;
                long rotlXor33 = ThreefishEngine.rotlXor(j86, 41, j103);
                long j104 = j87 + j88;
                long rotlXor34 = ThreefishEngine.rotlXor(j88, 9, j104);
                long j105 = j89 + j90;
                long rotlXor35 = ThreefishEngine.rotlXor(j90, 37, j105);
                long j106 = j91 + j92;
                long rotlXor36 = ThreefishEngine.rotlXor(j92, 31, j106);
                long j107 = j93 + j94;
                long rotlXor37 = ThreefishEngine.rotlXor(j94, 12, j107);
                long j108 = j95 + j96;
                long rotlXor38 = ThreefishEngine.rotlXor(j96, 47, j108);
                long j109 = j97 + j98;
                long rotlXor39 = ThreefishEngine.rotlXor(j98, 44, j109);
                long j110 = j99 + j102;
                long rotlXor40 = ThreefishEngine.rotlXor(j102, 30, j110);
                long j111 = j103 + rotlXor37;
                long rotlXor41 = ThreefishEngine.rotlXor(rotlXor37, 16, j111);
                long j112 = j104 + rotlXor39;
                long rotlXor42 = ThreefishEngine.rotlXor(rotlXor39, 34, j112);
                long j113 = j106 + rotlXor38;
                long rotlXor43 = ThreefishEngine.rotlXor(rotlXor38, 56, j113);
                long j114 = j105 + rotlXor40;
                long rotlXor44 = ThreefishEngine.rotlXor(rotlXor40, 51, j114);
                long j115 = j108 + rotlXor36;
                long rotlXor45 = ThreefishEngine.rotlXor(rotlXor36, 4, j115);
                long j116 = j109 + rotlXor34;
                long rotlXor46 = ThreefishEngine.rotlXor(rotlXor34, 53, j116);
                long j117 = j110 + rotlXor35;
                long rotlXor47 = ThreefishEngine.rotlXor(rotlXor35, 42, j117);
                long j118 = j107 + rotlXor33;
                long rotlXor48 = ThreefishEngine.rotlXor(rotlXor33, 41, j118);
                long j119 = j111 + rotlXor45;
                long rotlXor49 = ThreefishEngine.rotlXor(rotlXor45, 31, j119);
                long j120 = j112 + rotlXor47;
                long rotlXor50 = ThreefishEngine.rotlXor(rotlXor47, 44, j120);
                long j121 = j114 + rotlXor46;
                long rotlXor51 = ThreefishEngine.rotlXor(rotlXor46, 47, j121);
                long j122 = j113 + rotlXor48;
                long rotlXor52 = ThreefishEngine.rotlXor(rotlXor48, 46, j122);
                long j123 = j116 + rotlXor44;
                long rotlXor53 = ThreefishEngine.rotlXor(rotlXor44, 19, j123);
                long j124 = j117 + rotlXor42;
                long rotlXor54 = ThreefishEngine.rotlXor(rotlXor42, 42, j124);
                long j125 = j118 + rotlXor43;
                long rotlXor55 = ThreefishEngine.rotlXor(rotlXor43, 44, j125);
                long j126 = j115 + rotlXor41;
                long rotlXor56 = ThreefishEngine.rotlXor(rotlXor41, 25, j126);
                long j127 = j119 + rotlXor53;
                long rotlXor57 = ThreefishEngine.rotlXor(rotlXor53, 9, j127);
                long j128 = j120 + rotlXor55;
                long rotlXor58 = ThreefishEngine.rotlXor(rotlXor55, 48, j128);
                long j129 = j122 + rotlXor54;
                long rotlXor59 = ThreefishEngine.rotlXor(rotlXor54, 35, j129);
                long j130 = j121 + rotlXor56;
                long rotlXor60 = ThreefishEngine.rotlXor(rotlXor56, 52, j130);
                long j131 = j124 + rotlXor52;
                long rotlXor61 = ThreefishEngine.rotlXor(rotlXor52, 23, j131);
                long j132 = j125 + rotlXor50;
                long rotlXor62 = ThreefishEngine.rotlXor(rotlXor50, 31, j132);
                long j133 = j126 + rotlXor51;
                long rotlXor63 = ThreefishEngine.rotlXor(rotlXor51, 37, j133);
                long j134 = j123 + rotlXor49;
                long rotlXor64 = ThreefishEngine.rotlXor(rotlXor49, 20, j134);
                long j135 = j127 + jArr5[i13];
                long j136 = rotlXor61 + jArr5[i14];
                long j137 = j128 + jArr5[i15];
                long j138 = rotlXor63 + jArr5[i16];
                long j139 = j130 + jArr5[i17];
                long j140 = rotlXor62 + jArr5[i18];
                long j141 = j129 + jArr5[i19];
                long j142 = rotlXor64 + jArr5[i20];
                long j143 = j132 + jArr5[i21];
                j43 = rotlXor60 + jArr5[i22];
                j35 = j133 + jArr5[i23];
                j44 = rotlXor58 + jArr5[i24];
                long j144 = j134 + jArr5[i25];
                j45 = rotlXor59 + jArr5[i26] + jArr6[i27];
                j46 = rotlXor57 + jArr5[i10 + 16] + j101 + 1;
                j42 = j142;
                j40 = j138;
                j41 = j140;
                j39 = j131 + jArr5[i28] + jArr6[i11 + 2];
                iArr2 = iArr4;
                j33 = j143;
                j31 = j141;
                j37 = j144;
                j26 = j136;
                iArr = iArr3;
                jArr4 = jArr6;
                jArr3 = jArr5;
                i4 = i12 + 2;
                j29 = j139;
                j25 = j135;
                j27 = j137;
            }
            jArr2[0] = j25;
            jArr2[1] = j26;
            jArr2[2] = j27;
            jArr2[3] = j40;
            jArr2[4] = j29;
            jArr2[5] = j41;
            jArr2[6] = j31;
            jArr2[7] = j42;
            jArr2[8] = j33;
            jArr2[9] = j43;
            jArr2[10] = j35;
            jArr2[11] = j44;
            jArr2[12] = j37;
            jArr2[13] = j45;
            jArr2[14] = j39;
            jArr2[15] = j46;
        }
    }

    /* loaded from: classes4.dex */
    private static final class Threefish256Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 14;
        private static final int ROTATION_0_1 = 16;
        private static final int ROTATION_1_0 = 52;
        private static final int ROTATION_1_1 = 57;
        private static final int ROTATION_2_0 = 23;
        private static final int ROTATION_2_1 = 40;
        private static final int ROTATION_3_0 = 5;
        private static final int ROTATION_3_1 = 37;
        private static final int ROTATION_4_0 = 25;
        private static final int ROTATION_4_1 = 33;
        private static final int ROTATION_5_0 = 46;
        private static final int ROTATION_5_1 = 12;
        private static final int ROTATION_6_0 = 58;
        private static final int ROTATION_6_1 = 22;
        private static final int ROTATION_7_0 = 32;
        private static final int ROTATION_7_1 = 32;

        public Threefish256Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f91242t;
            int[] iArr = ThreefishEngine.MOD5;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j4 = jArr[0];
            long j10 = jArr[1];
            long j11 = jArr[2];
            long j12 = jArr[3];
            int i4 = 17;
            for (int i10 = 1; i4 >= i10; i10 = 1) {
                int i11 = iArr[i4];
                int i12 = iArr2[i4];
                int i13 = i11 + 1;
                long j13 = j4 - jArr3[i13];
                int i14 = i11 + 2;
                int i15 = i12 + 1;
                long j14 = j10 - (jArr3[i14] + jArr4[i15]);
                int i16 = i11 + 3;
                long j15 = j11 - (jArr3[i16] + jArr4[i12 + 2]);
                long j16 = i4;
                long xorRotr = ThreefishEngine.xorRotr(j12 - ((jArr3[i11 + 4] + j16) + 1), 32, j13);
                long j17 = j13 - xorRotr;
                int[] iArr3 = iArr;
                long xorRotr2 = ThreefishEngine.xorRotr(j14, 32, j15);
                long j18 = j15 - xorRotr2;
                long xorRotr3 = ThreefishEngine.xorRotr(xorRotr2, 58, j17);
                long j19 = j17 - xorRotr3;
                long xorRotr4 = ThreefishEngine.xorRotr(xorRotr, 22, j18);
                long j20 = j18 - xorRotr4;
                long xorRotr5 = ThreefishEngine.xorRotr(xorRotr4, 46, j19);
                long j21 = j19 - xorRotr5;
                long xorRotr6 = ThreefishEngine.xorRotr(xorRotr3, 12, j20);
                long j22 = j20 - xorRotr6;
                long xorRotr7 = ThreefishEngine.xorRotr(xorRotr6, 25, j21);
                long xorRotr8 = ThreefishEngine.xorRotr(xorRotr5, 33, j22);
                long j23 = (j21 - xorRotr7) - jArr3[i11];
                long j24 = xorRotr7 - (jArr3[i13] + jArr4[i12]);
                long j25 = (j22 - xorRotr8) - (jArr3[i14] + jArr4[i15]);
                long xorRotr9 = ThreefishEngine.xorRotr(xorRotr8 - (jArr3[i16] + j16), 5, j23);
                long j26 = j23 - xorRotr9;
                long xorRotr10 = ThreefishEngine.xorRotr(j24, 37, j25);
                long j27 = j25 - xorRotr10;
                long xorRotr11 = ThreefishEngine.xorRotr(xorRotr10, 23, j26);
                long j28 = j26 - xorRotr11;
                long xorRotr12 = ThreefishEngine.xorRotr(xorRotr9, 40, j27);
                long j29 = j27 - xorRotr12;
                long xorRotr13 = ThreefishEngine.xorRotr(xorRotr12, 52, j28);
                long j30 = j28 - xorRotr13;
                long xorRotr14 = ThreefishEngine.xorRotr(xorRotr11, 57, j29);
                long j31 = j29 - xorRotr14;
                long xorRotr15 = ThreefishEngine.xorRotr(xorRotr14, 14, j30);
                j4 = j30 - xorRotr15;
                j12 = ThreefishEngine.xorRotr(xorRotr13, 16, j31);
                j11 = j31 - j12;
                i4 -= 2;
                j10 = xorRotr15;
                iArr = iArr3;
                iArr2 = iArr2;
            }
            long j32 = j10 - (jArr3[1] + jArr4[0]);
            long j33 = j11 - (jArr3[2] + jArr4[1]);
            jArr2[0] = j4 - jArr3[0];
            jArr2[1] = j32;
            jArr2[2] = j33;
            jArr2[3] = j12 - jArr3[3];
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f91242t;
            int[] iArr = ThreefishEngine.MOD5;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 9) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j4 = jArr[0];
            long j10 = jArr[1];
            long j11 = jArr[2];
            long j12 = jArr[3];
            long j13 = j4 + jArr3[0];
            long j14 = j10 + jArr3[1] + jArr4[0];
            long j15 = j11 + jArr3[2] + jArr4[1];
            long j16 = j12 + jArr3[3];
            int i4 = 1;
            while (i4 < 18) {
                int i10 = iArr[i4];
                int i11 = iArr2[i4];
                long j17 = j13 + j14;
                long rotlXor = ThreefishEngine.rotlXor(j14, 14, j17);
                long j18 = j15 + j16;
                long rotlXor2 = ThreefishEngine.rotlXor(j16, 16, j18);
                long j19 = j17 + rotlXor2;
                long rotlXor3 = ThreefishEngine.rotlXor(rotlXor2, 52, j19);
                long j20 = j18 + rotlXor;
                long rotlXor4 = ThreefishEngine.rotlXor(rotlXor, 57, j20);
                long j21 = j19 + rotlXor4;
                long rotlXor5 = ThreefishEngine.rotlXor(rotlXor4, 23, j21);
                long j22 = j20 + rotlXor3;
                long rotlXor6 = ThreefishEngine.rotlXor(rotlXor3, 40, j22);
                long j23 = j21 + rotlXor6;
                long rotlXor7 = ThreefishEngine.rotlXor(rotlXor6, 5, j23);
                long j24 = j22 + rotlXor5;
                long rotlXor8 = ThreefishEngine.rotlXor(rotlXor5, 37, j24);
                long j25 = j23 + jArr3[i10];
                int i12 = i10 + 1;
                long j26 = rotlXor8 + jArr3[i12] + jArr4[i11];
                int i13 = i10 + 2;
                int i14 = i11 + 1;
                long j27 = j24 + jArr3[i13] + jArr4[i14];
                int i15 = i10 + 3;
                int[] iArr3 = iArr;
                long j28 = i4;
                long j29 = rotlXor7 + jArr3[i15] + j28;
                long j30 = j25 + j26;
                long rotlXor9 = ThreefishEngine.rotlXor(j26, 25, j30);
                long j31 = j27 + j29;
                long rotlXor10 = ThreefishEngine.rotlXor(j29, 33, j31);
                long j32 = j30 + rotlXor10;
                long rotlXor11 = ThreefishEngine.rotlXor(rotlXor10, 46, j32);
                long j33 = j31 + rotlXor9;
                long rotlXor12 = ThreefishEngine.rotlXor(rotlXor9, 12, j33);
                long j34 = j32 + rotlXor12;
                long rotlXor13 = ThreefishEngine.rotlXor(rotlXor12, 58, j34);
                long j35 = j33 + rotlXor11;
                long rotlXor14 = ThreefishEngine.rotlXor(rotlXor11, 22, j35);
                long j36 = j34 + rotlXor14;
                long rotlXor15 = ThreefishEngine.rotlXor(rotlXor14, 32, j36);
                long j37 = j35 + rotlXor13;
                long rotlXor16 = ThreefishEngine.rotlXor(rotlXor13, 32, j37);
                j13 = j36 + jArr3[i12];
                j14 = rotlXor16 + jArr3[i13] + jArr4[i14];
                j15 = j37 + jArr3[i15] + jArr4[i11 + 2];
                j16 = rotlXor15 + jArr3[i10 + 4] + j28 + 1;
                i4 += 2;
                iArr = iArr3;
                iArr2 = iArr2;
            }
            jArr2[0] = j13;
            jArr2[1] = j14;
            jArr2[2] = j15;
            jArr2[3] = j16;
        }
    }

    /* loaded from: classes4.dex */
    private static final class Threefish512Cipher extends ThreefishCipher {
        private static final int ROTATION_0_0 = 46;
        private static final int ROTATION_0_1 = 36;
        private static final int ROTATION_0_2 = 19;
        private static final int ROTATION_0_3 = 37;
        private static final int ROTATION_1_0 = 33;
        private static final int ROTATION_1_1 = 27;
        private static final int ROTATION_1_2 = 14;
        private static final int ROTATION_1_3 = 42;
        private static final int ROTATION_2_0 = 17;
        private static final int ROTATION_2_1 = 49;
        private static final int ROTATION_2_2 = 36;
        private static final int ROTATION_2_3 = 39;
        private static final int ROTATION_3_0 = 44;
        private static final int ROTATION_3_1 = 9;
        private static final int ROTATION_3_2 = 54;
        private static final int ROTATION_3_3 = 56;
        private static final int ROTATION_4_0 = 39;
        private static final int ROTATION_4_1 = 30;
        private static final int ROTATION_4_2 = 34;
        private static final int ROTATION_4_3 = 24;
        private static final int ROTATION_5_0 = 13;
        private static final int ROTATION_5_1 = 50;
        private static final int ROTATION_5_2 = 10;
        private static final int ROTATION_5_3 = 17;
        private static final int ROTATION_6_0 = 25;
        private static final int ROTATION_6_1 = 29;
        private static final int ROTATION_6_2 = 39;
        private static final int ROTATION_6_3 = 43;
        private static final int ROTATION_7_0 = 8;
        private static final int ROTATION_7_1 = 35;
        private static final int ROTATION_7_2 = 56;
        private static final int ROTATION_7_3 = 22;

        protected Threefish512Cipher(long[] jArr, long[] jArr2) {
            super(jArr, jArr2);
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void decryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f91242t;
            int[] iArr = ThreefishEngine.MOD9;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j4 = jArr[0];
            int i4 = 1;
            long j10 = jArr[1];
            long j11 = jArr[2];
            long j12 = jArr[3];
            long j13 = jArr[4];
            long j14 = jArr[5];
            long j15 = jArr[6];
            long j16 = jArr[7];
            int i10 = 17;
            while (i10 >= i4) {
                int i11 = iArr[i10];
                int i12 = iArr2[i10];
                int i13 = i11 + 1;
                long j17 = j4 - jArr3[i13];
                int i14 = i11 + 2;
                long j18 = j10 - jArr3[i14];
                int i15 = i11 + 3;
                long j19 = j11 - jArr3[i15];
                int i16 = i11 + 4;
                long j20 = j12 - jArr3[i16];
                int i17 = i11 + 5;
                long j21 = j13 - jArr3[i17];
                int i18 = i11 + 6;
                int i19 = i12 + 1;
                long j22 = j14 - (jArr3[i18] + jArr4[i19]);
                int i20 = i11 + 7;
                int[] iArr3 = iArr;
                int[] iArr4 = iArr2;
                long j23 = j15 - (jArr3[i20] + jArr4[i12 + 2]);
                long[] jArr5 = jArr3;
                long j24 = i10;
                int i21 = i10;
                long xorRotr = ThreefishEngine.xorRotr(j18, 8, j23);
                long j25 = j23 - xorRotr;
                long xorRotr2 = ThreefishEngine.xorRotr(j16 - ((jArr3[i11 + 8] + j24) + 1), 35, j17);
                long j26 = j17 - xorRotr2;
                long xorRotr3 = ThreefishEngine.xorRotr(j22, 56, j19);
                long j27 = j19 - xorRotr3;
                long xorRotr4 = ThreefishEngine.xorRotr(j20, 22, j21);
                long j28 = j21 - xorRotr4;
                long xorRotr5 = ThreefishEngine.xorRotr(xorRotr, 25, j28);
                long j29 = j28 - xorRotr5;
                long xorRotr6 = ThreefishEngine.xorRotr(xorRotr4, 29, j25);
                long j30 = j25 - xorRotr6;
                long xorRotr7 = ThreefishEngine.xorRotr(xorRotr3, 39, j26);
                long j31 = j26 - xorRotr7;
                long xorRotr8 = ThreefishEngine.xorRotr(xorRotr2, 43, j27);
                long j32 = j27 - xorRotr8;
                long xorRotr9 = ThreefishEngine.xorRotr(xorRotr5, 13, j32);
                long j33 = j32 - xorRotr9;
                long xorRotr10 = ThreefishEngine.xorRotr(xorRotr8, 50, j29);
                long j34 = j29 - xorRotr10;
                long xorRotr11 = ThreefishEngine.xorRotr(xorRotr7, 10, j30);
                long j35 = j30 - xorRotr11;
                long xorRotr12 = ThreefishEngine.xorRotr(xorRotr6, 17, j31);
                long j36 = j31 - xorRotr12;
                long xorRotr13 = ThreefishEngine.xorRotr(xorRotr9, 39, j36);
                long xorRotr14 = ThreefishEngine.xorRotr(xorRotr12, 30, j33);
                long xorRotr15 = ThreefishEngine.xorRotr(xorRotr11, 34, j34);
                long j37 = j34 - xorRotr15;
                long xorRotr16 = ThreefishEngine.xorRotr(xorRotr10, 24, j35);
                long j38 = (j36 - xorRotr13) - jArr5[i11];
                long j39 = xorRotr13 - jArr5[i13];
                long j40 = (j33 - xorRotr14) - jArr5[i14];
                long j41 = xorRotr14 - jArr5[i15];
                long j42 = j37 - jArr5[i16];
                long j43 = xorRotr15 - (jArr5[i17] + jArr4[i12]);
                long j44 = (j35 - xorRotr16) - (jArr5[i18] + jArr4[i19]);
                long xorRotr17 = ThreefishEngine.xorRotr(j39, 44, j44);
                long j45 = j44 - xorRotr17;
                long xorRotr18 = ThreefishEngine.xorRotr(xorRotr16 - (jArr5[i20] + j24), 9, j38);
                long j46 = j38 - xorRotr18;
                long xorRotr19 = ThreefishEngine.xorRotr(j43, 54, j40);
                long j47 = j40 - xorRotr19;
                long xorRotr20 = ThreefishEngine.xorRotr(j41, 56, j42);
                long j48 = j42 - xorRotr20;
                long xorRotr21 = ThreefishEngine.xorRotr(xorRotr17, 17, j48);
                long j49 = j48 - xorRotr21;
                long xorRotr22 = ThreefishEngine.xorRotr(xorRotr20, 49, j45);
                long j50 = j45 - xorRotr22;
                long xorRotr23 = ThreefishEngine.xorRotr(xorRotr19, 36, j46);
                long j51 = j46 - xorRotr23;
                long xorRotr24 = ThreefishEngine.xorRotr(xorRotr18, 39, j47);
                long j52 = j47 - xorRotr24;
                long xorRotr25 = ThreefishEngine.xorRotr(xorRotr21, 33, j52);
                long j53 = j52 - xorRotr25;
                long xorRotr26 = ThreefishEngine.xorRotr(xorRotr24, 27, j49);
                long j54 = j49 - xorRotr26;
                long xorRotr27 = ThreefishEngine.xorRotr(xorRotr23, 14, j50);
                long j55 = j50 - xorRotr27;
                long[] jArr6 = jArr4;
                long xorRotr28 = ThreefishEngine.xorRotr(xorRotr22, 42, j51);
                long j56 = j51 - xorRotr28;
                long xorRotr29 = ThreefishEngine.xorRotr(xorRotr25, 46, j56);
                long j57 = j56 - xorRotr29;
                j12 = ThreefishEngine.xorRotr(xorRotr28, 36, j53);
                long xorRotr30 = ThreefishEngine.xorRotr(xorRotr27, 19, j54);
                j13 = j54 - xorRotr30;
                j16 = ThreefishEngine.xorRotr(xorRotr26, 37, j55);
                j15 = j55 - j16;
                j11 = j53 - j12;
                j10 = xorRotr29;
                j14 = xorRotr30;
                i10 = i21 - 2;
                iArr2 = iArr4;
                jArr3 = jArr5;
                i4 = 1;
                j4 = j57;
                jArr4 = jArr6;
                iArr = iArr3;
            }
            long[] jArr7 = jArr3;
            long[] jArr8 = jArr4;
            long j58 = j4 - jArr7[0];
            long j59 = j10 - jArr7[1];
            long j60 = j11 - jArr7[2];
            long j61 = j12 - jArr7[3];
            long j62 = j13 - jArr7[4];
            long j63 = j15 - (jArr7[6] + jArr8[1]);
            jArr2[0] = j58;
            jArr2[1] = j59;
            jArr2[2] = j60;
            jArr2[3] = j61;
            jArr2[4] = j62;
            jArr2[5] = j14 - (jArr7[5] + jArr8[0]);
            jArr2[6] = j63;
            jArr2[7] = j16 - jArr7[7];
        }

        @Override // org.bouncycastle.crypto.engines.ThreefishEngine.ThreefishCipher
        public void encryptBlock(long[] jArr, long[] jArr2) {
            long[] jArr3 = this.kw;
            long[] jArr4 = this.f91242t;
            int[] iArr = ThreefishEngine.MOD9;
            int[] iArr2 = ThreefishEngine.MOD3;
            if (jArr3.length != 17) {
                throw new IllegalArgumentException();
            }
            if (jArr4.length != 5) {
                throw new IllegalArgumentException();
            }
            long j4 = jArr[0];
            long j10 = jArr[1];
            long j11 = jArr[2];
            long j12 = jArr[3];
            long j13 = jArr[4];
            long j14 = jArr[5];
            long j15 = jArr[6];
            long j16 = jArr[7];
            long j17 = j4 + jArr3[0];
            long j18 = j10 + jArr3[1];
            long j19 = j11 + jArr3[2];
            long j20 = j12 + jArr3[3];
            long j21 = j13 + jArr3[4];
            long j22 = j14 + jArr3[5] + jArr4[0];
            long j23 = j15 + jArr3[6] + jArr4[1];
            long j24 = j20;
            long j25 = j22;
            long j26 = j16 + jArr3[7];
            int i4 = 1;
            while (i4 < 18) {
                int i10 = iArr[i4];
                int i11 = iArr2[i4];
                long j27 = j17 + j18;
                long rotlXor = ThreefishEngine.rotlXor(j18, 46, j27);
                long j28 = j19 + j24;
                long rotlXor2 = ThreefishEngine.rotlXor(j24, 36, j28);
                long[] jArr5 = jArr3;
                int[] iArr3 = iArr;
                long j29 = j25;
                long j30 = j21 + j29;
                long rotlXor3 = ThreefishEngine.rotlXor(j29, 19, j30);
                int i12 = i4;
                long j31 = j26;
                long j32 = j23 + j31;
                long rotlXor4 = ThreefishEngine.rotlXor(j31, 37, j32);
                long j33 = j28 + rotlXor;
                long rotlXor5 = ThreefishEngine.rotlXor(rotlXor, 33, j33);
                long j34 = j30 + rotlXor4;
                long rotlXor6 = ThreefishEngine.rotlXor(rotlXor4, 27, j34);
                long j35 = j32 + rotlXor3;
                long rotlXor7 = ThreefishEngine.rotlXor(rotlXor3, 14, j35);
                long j36 = j27 + rotlXor2;
                long rotlXor8 = ThreefishEngine.rotlXor(rotlXor2, 42, j36);
                long j37 = j34 + rotlXor5;
                long rotlXor9 = ThreefishEngine.rotlXor(rotlXor5, 17, j37);
                long j38 = j35 + rotlXor8;
                long rotlXor10 = ThreefishEngine.rotlXor(rotlXor8, 49, j38);
                long j39 = j36 + rotlXor7;
                long rotlXor11 = ThreefishEngine.rotlXor(rotlXor7, 36, j39);
                long j40 = j33 + rotlXor6;
                long rotlXor12 = ThreefishEngine.rotlXor(rotlXor6, 39, j40);
                long j41 = j38 + rotlXor9;
                long rotlXor13 = ThreefishEngine.rotlXor(rotlXor9, 44, j41);
                long j42 = j39 + rotlXor12;
                long rotlXor14 = ThreefishEngine.rotlXor(rotlXor12, 9, j42);
                long j43 = j40 + rotlXor11;
                long rotlXor15 = ThreefishEngine.rotlXor(rotlXor11, 54, j43);
                long j44 = j37 + rotlXor10;
                long rotlXor16 = ThreefishEngine.rotlXor(rotlXor10, 56, j44);
                long j45 = j42 + jArr5[i10];
                int i13 = i10 + 1;
                long j46 = rotlXor13 + jArr5[i13];
                int i14 = i10 + 2;
                long j47 = j43 + jArr5[i14];
                int i15 = i10 + 3;
                long j48 = rotlXor16 + jArr5[i15];
                int i16 = i10 + 4;
                long j49 = j44 + jArr5[i16];
                int i17 = i10 + 5;
                long j50 = rotlXor15 + jArr5[i17] + jArr4[i11];
                int i18 = i10 + 6;
                int i19 = i11 + 1;
                long j51 = j41 + jArr5[i18] + jArr4[i19];
                int i20 = i10 + 7;
                long j52 = i12;
                long j53 = rotlXor14 + jArr5[i20] + j52;
                long j54 = j45 + j46;
                long rotlXor17 = ThreefishEngine.rotlXor(j46, 39, j54);
                long j55 = j47 + j48;
                long rotlXor18 = ThreefishEngine.rotlXor(j48, 30, j55);
                long j56 = j49 + j50;
                long rotlXor19 = ThreefishEngine.rotlXor(j50, 34, j56);
                long j57 = j51 + j53;
                long rotlXor20 = ThreefishEngine.rotlXor(j53, 24, j57);
                long j58 = j55 + rotlXor17;
                long rotlXor21 = ThreefishEngine.rotlXor(rotlXor17, 13, j58);
                long j59 = j56 + rotlXor20;
                long rotlXor22 = ThreefishEngine.rotlXor(rotlXor20, 50, j59);
                long j60 = j57 + rotlXor19;
                long rotlXor23 = ThreefishEngine.rotlXor(rotlXor19, 10, j60);
                long j61 = j54 + rotlXor18;
                long rotlXor24 = ThreefishEngine.rotlXor(rotlXor18, 17, j61);
                long j62 = j59 + rotlXor21;
                long rotlXor25 = ThreefishEngine.rotlXor(rotlXor21, 25, j62);
                long j63 = j60 + rotlXor24;
                long rotlXor26 = ThreefishEngine.rotlXor(rotlXor24, 29, j63);
                long j64 = j61 + rotlXor23;
                long rotlXor27 = ThreefishEngine.rotlXor(rotlXor23, 39, j64);
                long j65 = j58 + rotlXor22;
                long rotlXor28 = ThreefishEngine.rotlXor(rotlXor22, 43, j65);
                long j66 = j63 + rotlXor25;
                long rotlXor29 = ThreefishEngine.rotlXor(rotlXor25, 8, j66);
                long j67 = j64 + rotlXor28;
                long rotlXor30 = ThreefishEngine.rotlXor(rotlXor28, 35, j67);
                long j68 = j65 + rotlXor27;
                long rotlXor31 = ThreefishEngine.rotlXor(rotlXor27, 56, j68);
                long j69 = j62 + rotlXor26;
                long rotlXor32 = ThreefishEngine.rotlXor(rotlXor26, 22, j69);
                long j70 = j67 + jArr5[i13];
                j18 = rotlXor29 + jArr5[i14];
                long j71 = j68 + jArr5[i15];
                long j72 = rotlXor32 + jArr5[i16];
                long j73 = j69 + jArr5[i17];
                long j74 = rotlXor31 + jArr5[i18] + jArr4[i19];
                j23 = j66 + jArr5[i20] + jArr4[i11 + 2];
                j26 = rotlXor30 + jArr5[i10 + 8] + j52 + 1;
                j21 = j73;
                j25 = j74;
                iArr = iArr3;
                iArr2 = iArr2;
                jArr3 = jArr5;
                i4 = i12 + 2;
                j24 = j72;
                j19 = j71;
                j17 = j70;
            }
            jArr2[0] = j17;
            jArr2[1] = j18;
            jArr2[2] = j19;
            jArr2[3] = j24;
            jArr2[4] = j21;
            jArr2[5] = j25;
            jArr2[6] = j23;
            jArr2[7] = j26;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static abstract class ThreefishCipher {
        protected final long[] kw;

        /* renamed from: t  reason: collision with root package name */
        protected final long[] f91242t;

        protected ThreefishCipher(long[] jArr, long[] jArr2) {
            this.kw = jArr;
            this.f91242t = jArr2;
        }

        abstract void decryptBlock(long[] jArr, long[] jArr2);

        abstract void encryptBlock(long[] jArr, long[] jArr2);
    }

    static {
        int[] iArr = new int[80];
        MOD9 = iArr;
        MOD17 = new int[iArr.length];
        MOD5 = new int[iArr.length];
        MOD3 = new int[iArr.length];
        int i4 = 0;
        while (true) {
            int[] iArr2 = MOD9;
            if (i4 >= iArr2.length) {
                return;
            }
            MOD17[i4] = i4 % 17;
            iArr2[i4] = i4 % 9;
            MOD5[i4] = i4 % 5;
            MOD3[i4] = i4 % 3;
            i4++;
        }
    }

    public ThreefishEngine(int i4) {
        ThreefishCipher threefish256Cipher;
        long[] jArr = new long[5];
        this.f91241t = jArr;
        int i10 = i4 / 8;
        this.blocksizeBytes = i10;
        int i11 = i10 / 8;
        this.blocksizeWords = i11;
        this.currentBlock = new long[i11];
        long[] jArr2 = new long[(i11 * 2) + 1];
        this.kw = jArr2;
        if (i4 == 256) {
            threefish256Cipher = new Threefish256Cipher(jArr2, jArr);
        } else if (i4 == 512) {
            threefish256Cipher = new Threefish512Cipher(jArr2, jArr);
        } else if (i4 != 1024) {
            throw new IllegalArgumentException("Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits");
        } else {
            threefish256Cipher = new Threefish1024Cipher(jArr2, jArr);
        }
        this.cipher = threefish256Cipher;
    }

    public static long bytesToWord(byte[] bArr, int i4) {
        if (i4 + 8 <= bArr.length) {
            int i10 = i4 + 1;
            int i11 = i10 + 1;
            int i12 = i11 + 1;
            int i13 = i12 + 1;
            int i14 = i13 + 1;
            int i15 = i14 + 1;
            return ((bArr[i15 + 1] & 255) << 56) | (bArr[i4] & 255) | ((bArr[i10] & 255) << 8) | ((bArr[i11] & 255) << 16) | ((bArr[i12] & 255) << 24) | ((bArr[i13] & 255) << 32) | ((bArr[i14] & 255) << 40) | ((bArr[i15] & 255) << 48);
        }
        throw new IllegalArgumentException();
    }

    static long rotlXor(long j4, int i4, long j10) {
        return ((j4 >>> (-i4)) | (j4 << i4)) ^ j10;
    }

    private void setKey(long[] jArr) {
        if (jArr.length != this.blocksizeWords) {
            throw new IllegalArgumentException("Threefish key must be same size as block (" + this.blocksizeWords + " words)");
        }
        long j4 = C_240;
        int i4 = 0;
        while (true) {
            int i10 = this.blocksizeWords;
            if (i4 >= i10) {
                long[] jArr2 = this.kw;
                jArr2[i10] = j4;
                System.arraycopy(jArr2, 0, jArr2, i10 + 1, i10);
                return;
            }
            long[] jArr3 = this.kw;
            jArr3[i4] = jArr[i4];
            j4 ^= jArr3[i4];
            i4++;
        }
    }

    private void setTweak(long[] jArr) {
        if (jArr.length != 2) {
            throw new IllegalArgumentException("Tweak must be 2 words.");
        }
        long[] jArr2 = this.f91241t;
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr2[0] ^ jArr2[1];
        jArr2[3] = jArr2[0];
        jArr2[4] = jArr2[1];
    }

    public static void wordToBytes(long j4, byte[] bArr, int i4) {
        if (i4 + 8 > bArr.length) {
            throw new IllegalArgumentException();
        }
        int i10 = i4 + 1;
        bArr[i4] = (byte) j4;
        int i11 = i10 + 1;
        bArr[i10] = (byte) (j4 >> 8);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (j4 >> 16);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (j4 >> 24);
        int i14 = i13 + 1;
        bArr[i13] = (byte) (j4 >> 32);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (j4 >> 40);
        bArr[i15] = (byte) (j4 >> 48);
        bArr[i15 + 1] = (byte) (j4 >> 56);
    }

    static long xorRotr(long j4, int i4, long j10) {
        long j11 = j4 ^ j10;
        return (j11 << (-i4)) | (j11 >>> i4);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Threefish-" + (this.blocksizeBytes * 8);
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return this.blocksizeBytes;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) throws IllegalArgumentException {
        byte[] key;
        byte[] bArr;
        long[] jArr;
        long[] jArr2 = null;
        if (cipherParameters instanceof TweakableBlockCipherParameters) {
            TweakableBlockCipherParameters tweakableBlockCipherParameters = (TweakableBlockCipherParameters) cipherParameters;
            key = tweakableBlockCipherParameters.getKey().getKey();
            bArr = tweakableBlockCipherParameters.getTweak();
        } else if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("Invalid parameter passed to Threefish init - " + cipherParameters.getClass().getName());
        } else {
            key = ((KeyParameter) cipherParameters).getKey();
            bArr = null;
        }
        if (key == null) {
            jArr = null;
        } else if (key.length != this.blocksizeBytes) {
            throw new IllegalArgumentException("Threefish key must be same size as block (" + this.blocksizeBytes + " bytes)");
        } else {
            int i4 = this.blocksizeWords;
            jArr = new long[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                jArr[i10] = bytesToWord(key, i10 * 8);
            }
        }
        if (bArr != null) {
            if (bArr.length != 16) {
                throw new IllegalArgumentException("Threefish tweak must be 16 bytes");
            }
            jArr2 = new long[]{bytesToWord(bArr, 0), bytesToWord(bArr, 8)};
        }
        init(z9, jArr, jArr2);
    }

    public void init(boolean z9, long[] jArr, long[] jArr2) {
        this.forEncryption = z9;
        if (jArr != null) {
            setKey(jArr);
        }
        if (jArr2 != null) {
            setTweak(jArr2);
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) throws DataLengthException, IllegalStateException {
        int i11 = this.blocksizeBytes;
        if (i4 + i11 > bArr.length) {
            throw new DataLengthException("Input buffer too short");
        }
        if (i11 + i10 > bArr2.length) {
            throw new OutputLengthException("Output buffer too short");
        }
        int i12 = 0;
        for (int i13 = 0; i13 < this.blocksizeBytes; i13 += 8) {
            this.currentBlock[i13 >> 3] = bytesToWord(bArr, i4 + i13);
        }
        long[] jArr = this.currentBlock;
        processBlock(jArr, jArr);
        while (true) {
            int i14 = this.blocksizeBytes;
            if (i12 >= i14) {
                return i14;
            }
            wordToBytes(this.currentBlock[i12 >> 3], bArr2, i10 + i12);
            i12 += 8;
        }
    }

    public int processBlock(long[] jArr, long[] jArr2) throws DataLengthException, IllegalStateException {
        long[] jArr3 = this.kw;
        int i4 = this.blocksizeWords;
        if (jArr3[i4] != 0) {
            if (jArr.length == i4) {
                if (jArr2.length == i4) {
                    if (this.forEncryption) {
                        this.cipher.encryptBlock(jArr, jArr2);
                    } else {
                        this.cipher.decryptBlock(jArr, jArr2);
                    }
                    return this.blocksizeWords;
                }
                throw new OutputLengthException("Output buffer too short");
            }
            throw new DataLengthException("Input buffer too short");
        }
        throw new IllegalStateException("Threefish engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
