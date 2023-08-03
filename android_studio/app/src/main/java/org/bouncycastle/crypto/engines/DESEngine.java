package org.bouncycastle.crypto.engines;

import com.google.android.exoplayer2.analytics.j1;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.common.base.c;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;
import org.minidns.record.f;

/* loaded from: classes4.dex */
public class DESEngine implements BlockCipher {
    protected static final int BLOCK_SIZE = 8;
    private int[] workingKey = null;
    private static final short[] bytebit = {f.f92927k, 64, 32, 16, 8, 4, 2, 1};
    private static final int[] bigbyte = {8388608, 4194304, 2097152, 1048576, 524288, 262144, 131072, 65536, 32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1};
    private static final byte[] pc1 = {56, 48, 40, 32, c.B, 16, 8, 0, 57, 49, 41, 33, c.C, 17, 9, 1, 58, 50, 42, 34, c.D, c.f32114u, 10, 2, 59, 51, 43, 35, 62, 54, 46, 38, c.H, c.f32119z, c.f32109p, 6, 61, 53, 45, 37, c.G, c.f32118y, c.f32108o, 5, 60, 52, 44, 36, c.F, c.f32117x, c.f32107n, 4, c.E, 19, c.f32106m, 3};
    private static final byte[] totrot = {1, 2, 4, 6, 8, 10, c.f32107n, c.f32109p, c.f32110q, 17, 19, c.f32118y, c.A, c.C, c.E, c.F};
    private static final byte[] pc2 = {c.f32108o, 16, 10, c.A, 0, 4, 2, c.E, c.f32109p, 5, c.f32117x, 9, c.f32119z, c.f32114u, c.f32106m, 3, c.C, 7, c.f32110q, 6, c.D, 19, c.f32107n, 1, 40, 51, c.H, 36, 46, 54, c.G, 39, 50, 44, 32, 47, 43, 48, 38, 55, 33, 52, 45, 41, 49, 35, c.F, c.I};
    private static final int[] SP1 = {16843776, 0, 65536, 16843780, 16842756, 66564, 4, 65536, 1024, 16843776, 16843780, 1024, 16778244, 16842756, 16777216, 4, j1.R, 16778240, 16778240, 66560, 66560, 16842752, 16842752, 16778244, 65540, 16777220, 16777220, 65540, 0, j1.R, 66564, 16777216, 65536, 16843780, 4, 16842752, 16843776, 16777216, 16777216, 1024, 16842756, 65536, 66560, 16777220, 1024, 4, 16778244, 66564, 16843780, 65540, 16842752, 16778244, 16777220, j1.R, 66564, 16843776, j1.R, 16778240, 16778240, 0, 65540, 66560, 0, 16842756};
    private static final int[] SP2 = {-2146402272, -2147450880, 32768, 1081376, 1048576, 32, -2146435040, -2147450848, -2147483616, -2146402272, -2146402304, Integer.MIN_VALUE, -2147450880, 1048576, 32, -2146435040, 1081344, 1048608, -2147450848, 0, Integer.MIN_VALUE, 32768, 1081376, -2146435072, 1048608, -2147483616, 0, 1081344, 32800, -2146402304, -2146435072, 32800, 0, 1081376, -2146435040, 1048576, -2147450848, -2146435072, -2146402304, 32768, -2146435072, -2147450880, 32, -2146402272, 1081376, 32, 32768, Integer.MIN_VALUE, 32800, -2146402304, 1048576, -2147483616, 1048608, -2147450848, -2147483616, 1048608, 1081344, 0, -2147450880, 32800, Integer.MIN_VALUE, -2146435040, -2146402272, 1081344};
    private static final int[] SP3 = {520, 134349312, 0, 134348808, 134218240, 0, 131592, 134218240, 131080, 134217736, 134217736, 131072, 134349320, 131080, 134348800, 520, 134217728, 8, 134349312, 512, 131584, 134348800, 134348808, 131592, 134218248, 131584, 131072, 134218248, 8, 134349320, 512, 134217728, 134349312, 134217728, 131080, 520, 131072, 134349312, 134218240, 0, 512, 131080, 134349320, 134218240, 134217736, 512, 0, 134348808, 134218248, 131072, 134217728, 134349320, 8, 131592, 131584, 134217736, 134348800, 134218248, 520, 134348800, 131592, 8, 134348808, 131584};
    private static final int[] SP4 = {8396801, 8321, 8321, 128, 8396928, 8388737, 8388609, 8193, 0, 8396800, 8396800, 8396929, h0.G, 0, 8388736, 8388609, 1, 8192, 8388608, 8396801, 128, 8388608, 8193, 8320, 8388737, 1, 8320, 8388736, 8192, 8396928, 8396929, h0.G, 8388736, 8388609, 8396800, 8396929, h0.G, 0, 0, 8396800, 8320, 8388736, 8388737, 1, 8396801, 8321, 8321, 128, 8396929, h0.G, 1, 8192, 8388609, 8193, 8396928, 8388737, 8193, 8320, 8388608, 8396801, 128, 8388608, 8192, 8396928};
    private static final int[] SP5 = {256, 34078976, 34078720, 1107296512, 524288, 256, 1073741824, 34078720, 1074266368, 524288, 33554688, 1074266368, 1107296512, 1107820544, 524544, 1073741824, 33554432, 1074266112, 1074266112, 0, 1073742080, 1107820800, 1107820800, 33554688, 1107820544, 1073742080, 0, 1107296256, 34078976, 33554432, 1107296256, 524544, 524288, 1107296512, 256, 33554432, 1073741824, 34078720, 1107296512, 1074266368, 33554688, 1073741824, 1107820544, 34078976, 1074266368, 256, 33554432, 1107820544, 1107820800, 524544, 1107296256, 1107820800, 34078720, 0, 1074266112, 1107296256, 524544, 33554688, 1073742080, 524288, 0, 1074266112, 34078976, 1073742080};
    private static final int[] SP6 = {536870928, 541065216, 16384, 541081616, 541065216, 16, 541081616, 4194304, 536887296, 4210704, 4194304, 536870928, 4194320, 536887296, 536870912, 16400, 0, 4194320, 536887312, 16384, 4210688, 536887312, 16, 541065232, 541065232, 0, 4210704, 541081600, 16400, 4210688, 541081600, 536870912, 536887296, 16, 541065232, 4210688, 541081616, 4194304, 16400, 536870928, 4194304, 536887296, 536870912, 16400, 536870928, 541081616, 4210688, 541065216, 4210704, 541081600, 0, 541065232, 16, 16384, 541065216, 4210704, 16384, 4194320, 536887312, 0, 541081600, 536870912, 4194320, 536887312};
    private static final int[] SP7 = {2097152, 69206018, 67110914, 0, 2048, 67110914, 2099202, 69208064, 69208066, 2097152, 0, 67108866, 2, 67108864, 69206018, 2050, 67110912, 2099202, 2097154, 67110912, 67108866, 69206016, 69208064, 2097154, 69206016, 2048, 2050, 69208066, 2099200, 2, 67108864, 2099200, 67108864, 2099200, 2097152, 67110914, 67110914, 69206018, 69206018, 2, 2097154, 67108864, 67110912, 2097152, 69208064, 2050, 2099202, 69208064, 2050, 67108866, 69208066, 69206016, 2099200, 0, 2, 69208066, 0, 2099202, 69206016, 2048, 67108866, 67110912, 2048, 2097154};
    private static final int[] SP8 = {268439616, 4096, 262144, 268701760, 268435456, 268439616, 64, 268435456, 262208, 268697600, 268701760, 266240, 268701696, 266304, 4096, 64, 268697600, 268435520, 268439552, 4160, 266240, 262208, 268697664, 268701696, 4160, 0, 0, 268697664, 268435520, 268439552, 266304, 262144, 266304, 262144, 268701696, 4096, 64, 268697664, 4096, 266304, 268439552, 64, 268435520, 268697600, 268697664, 268435456, 262144, 268439616, 0, 268701760, 262208, 268435520, 268697600, 268439552, 268439616, 0, 268701760, 266240, 266240, 4160, 4160, 262208, 268435456, 268701696};

    /* JADX INFO: Access modifiers changed from: protected */
    public void desFunc(int[] iArr, byte[] bArr, int i4, byte[] bArr2, int i10) {
        int bigEndianToInt = Pack.bigEndianToInt(bArr, i4);
        int bigEndianToInt2 = Pack.bigEndianToInt(bArr, i4 + 4);
        int i11 = ((bigEndianToInt >>> 4) ^ bigEndianToInt2) & 252645135;
        int i12 = bigEndianToInt2 ^ i11;
        int i13 = bigEndianToInt ^ (i11 << 4);
        int i14 = ((i13 >>> 16) ^ i12) & 65535;
        int i15 = i12 ^ i14;
        int i16 = i13 ^ (i14 << 16);
        int i17 = ((i15 >>> 2) ^ i16) & 858993459;
        int i18 = i16 ^ i17;
        int i19 = i15 ^ (i17 << 2);
        int i20 = ((i19 >>> 8) ^ i18) & 16711935;
        int i21 = i18 ^ i20;
        int i22 = i19 ^ (i20 << 8);
        int i23 = (i22 >>> 31) | (i22 << 1);
        int i24 = (i21 ^ i23) & (-1431655766);
        int i25 = i21 ^ i24;
        int i26 = i23 ^ i24;
        int i27 = (i25 >>> 31) | (i25 << 1);
        for (int i28 = 0; i28 < 8; i28++) {
            int i29 = i28 * 4;
            int i30 = ((i26 << 28) | (i26 >>> 4)) ^ iArr[i29 + 0];
            int[] iArr2 = SP7;
            int i31 = iArr2[i30 & 63];
            int[] iArr3 = SP5;
            int i32 = i31 | iArr3[(i30 >>> 8) & 63];
            int[] iArr4 = SP3;
            int i33 = i32 | iArr4[(i30 >>> 16) & 63];
            int[] iArr5 = SP1;
            int i34 = iArr5[(i30 >>> 24) & 63] | i33;
            int i35 = iArr[i29 + 1] ^ i26;
            int[] iArr6 = SP8;
            int i36 = i34 | iArr6[i35 & 63];
            int[] iArr7 = SP6;
            int i37 = i36 | iArr7[(i35 >>> 8) & 63];
            int[] iArr8 = SP4;
            int i38 = i37 | iArr8[(i35 >>> 16) & 63];
            int[] iArr9 = SP2;
            i27 ^= i38 | iArr9[(i35 >>> 24) & 63];
            int i39 = ((i27 << 28) | (i27 >>> 4)) ^ iArr[i29 + 2];
            int i40 = iArr5[(i39 >>> 24) & 63];
            int i41 = iArr[i29 + 3] ^ i27;
            i26 ^= ((((i40 | ((iArr2[i39 & 63] | iArr3[(i39 >>> 8) & 63]) | iArr4[(i39 >>> 16) & 63])) | iArr6[i41 & 63]) | iArr7[(i41 >>> 8) & 63]) | iArr8[(i41 >>> 16) & 63]) | iArr9[(i41 >>> 24) & 63];
        }
        int i42 = (i26 >>> 1) | (i26 << 31);
        int i43 = (i27 ^ i42) & (-1431655766);
        int i44 = i27 ^ i43;
        int i45 = i42 ^ i43;
        int i46 = (i44 >>> 1) | (i44 << 31);
        int i47 = ((i46 >>> 8) ^ i45) & 16711935;
        int i48 = i45 ^ i47;
        int i49 = i46 ^ (i47 << 8);
        int i50 = ((i49 >>> 2) ^ i48) & 858993459;
        int i51 = i48 ^ i50;
        int i52 = i49 ^ (i50 << 2);
        int i53 = ((i51 >>> 16) ^ i52) & 65535;
        int i54 = i52 ^ i53;
        int i55 = i51 ^ (i53 << 16);
        int i56 = ((i55 >>> 4) ^ i54) & 252645135;
        Pack.intToBigEndian(i55 ^ (i56 << 4), bArr2, i10);
        Pack.intToBigEndian(i54 ^ i56, bArr2, i10 + 4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] generateWorkingKey(boolean z9, byte[] bArr) {
        int i4;
        int[] iArr = new int[32];
        boolean[] zArr = new boolean[56];
        boolean[] zArr2 = new boolean[56];
        int i10 = 0;
        while (true) {
            boolean z10 = true;
            if (i10 >= 56) {
                break;
            }
            byte b10 = pc1[i10];
            if ((bytebit[b10 & 7] & bArr[b10 >>> 3]) == 0) {
                z10 = false;
            }
            zArr[i10] = z10;
            i10++;
        }
        for (int i11 = 0; i11 < 16; i11++) {
            int i12 = z9 ? i11 << 1 : (15 - i11) << 1;
            int i13 = i12 + 1;
            iArr[i13] = 0;
            iArr[i12] = 0;
            int i14 = 0;
            while (true) {
                if (i14 >= 28) {
                    break;
                }
                int i15 = totrot[i11] + i14;
                if (i15 < 28) {
                    zArr2[i14] = zArr[i15];
                } else {
                    zArr2[i14] = zArr[i15 - 28];
                }
                i14++;
            }
            for (i4 = 28; i4 < 56; i4++) {
                int i16 = totrot[i11] + i4;
                if (i16 < 56) {
                    zArr2[i4] = zArr[i16];
                } else {
                    zArr2[i4] = zArr[i16 - 28];
                }
            }
            for (int i17 = 0; i17 < 24; i17++) {
                byte[] bArr2 = pc2;
                if (zArr2[bArr2[i17]]) {
                    iArr[i12] = iArr[i12] | bigbyte[i17];
                }
                if (zArr2[bArr2[i17 + 24]]) {
                    iArr[i13] = iArr[i13] | bigbyte[i17];
                }
            }
        }
        for (int i18 = 0; i18 != 32; i18 += 2) {
            int i19 = iArr[i18];
            int i20 = i18 + 1;
            int i21 = iArr[i20];
            iArr[i18] = ((16515072 & i21) >>> 10) | ((i19 & 16515072) << 6) | ((i19 & 4032) << 10) | ((i21 & 4032) >>> 6);
            iArr[i20] = ((i19 & 63) << 16) | ((i19 & 258048) << 12) | ((258048 & i21) >>> 4) | (i21 & 63);
        }
        return iArr;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "DES";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z9, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("invalid parameter passed to DES init - " + cipherParameters.getClass().getName());
        }
        KeyParameter keyParameter = (KeyParameter) cipherParameters;
        if (keyParameter.getKey().length > 8) {
            throw new IllegalArgumentException("DES key too long - should be 8 bytes");
        }
        this.workingKey = generateWorkingKey(z9, keyParameter.getKey());
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i4, byte[] bArr2, int i10) {
        int[] iArr = this.workingKey;
        if (iArr != null) {
            if (i4 + 8 <= bArr.length) {
                if (i10 + 8 <= bArr2.length) {
                    desFunc(iArr, bArr, i4, bArr2, i10);
                    return 8;
                }
                throw new OutputLengthException("output buffer too short");
            }
            throw new DataLengthException("input buffer too short");
        }
        throw new IllegalStateException("DES engine not initialised");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
