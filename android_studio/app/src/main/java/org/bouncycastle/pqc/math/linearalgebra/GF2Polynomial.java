package org.bouncycastle.pqc.math.linearalgebra;

import androidx.core.app.FrameMetricsAggregator;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import com.google.android.exoplayer2.analytics.j1;
import com.google.android.exoplayer2.audio.j0;
import com.google.common.base.c;
import com.google.common.primitives.j;
import java.math.BigInteger;
import java.util.Random;
import kotlinx.coroutines.internal.a0;
import org.bouncycastle.util.Arrays;
import org.minidns.record.f;

/* loaded from: classes5.dex */
public class GF2Polynomial {
    private int blocks;
    private int len;
    private int[] value;
    private static Random rand = new Random();
    private static final boolean[] parity = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    private static final short[] squaringTable = {0, 1, 4, 5, 16, 17, 20, 21, 64, 65, 68, 69, 80, 81, 84, 85, f.f92928l, 257, 260, 261, 272, 273, 276, 277, 320, 321, 324, 325, 336, 337, 340, 341, j0.f21250w, 1025, 1028, 1029, 1040, 1041, 1044, 1045, 1088, 1089, 1092, 1093, 1104, 1105, 1108, 1109, 1280, 1281, 1284, 1285, 1296, 1297, 1300, 1301, 1344, 1345, 1348, 1349, 1360, 1361, 1364, 1365, 4096, 4097, 4100, 4101, 4112, 4113, 4116, 4117, 4160, 4161, 4164, 4165, 4176, 4177, 4180, 4181, 4352, 4353, 4356, 4357, 4368, 4369, 4372, 4373, 4416, 4417, 4420, 4421, 4432, 4433, 4436, 4437, 5120, 5121, 5124, 5125, 5136, 5137, 5140, 5141, 5184, 5185, 5188, 5189, 5200, 5201, 5204, 5205, 5376, 5377, 5380, 5381, 5392, 5393, 5396, 5397, 5440, 5441, 5444, 5445, 5456, 5457, 5460, 5461, j.f34867b, 16385, 16388, 16389, 16400, 16401, 16404, 16405, 16448, 16449, 16452, 16453, 16464, 16465, 16468, 16469, 16640, 16641, 16644, 16645, 16656, 16657, 16660, 16661, 16704, 16705, 16708, 16709, 16720, 16721, 16724, 16725, 17408, 17409, 17412, 17413, 17424, 17425, 17428, 17429, 17472, 17473, 17476, 17477, 17488, 17489, 17492, 17493, 17664, 17665, 17668, 17669, 17680, 17681, 17684, 17685, 17728, 17729, 17732, 17733, 17744, 17745, 17748, 17749, 20480, 20481, 20484, 20485, 20496, 20497, 20500, 20501, 20544, 20545, 20548, 20549, 20560, 20561, 20564, 20565, 20736, 20737, 20740, 20741, 20752, 20753, 20756, 20757, 20800, 20801, 20804, 20805, 20816, 20817, 20820, 20821, 21504, 21505, 21508, 21509, 21520, 21521, 21524, 21525, 21568, 21569, 21572, 21573, 21584, 21585, 21588, 21589, 21760, 21761, 21764, 21765, 21776, 21777, 21780, 21781, 21824, 21825, 21828, 21829, 21840, 21841, 21844, 21845};
    private static final int[] bitMask = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, Integer.MIN_VALUE, 0};
    private static final int[] reverseRightMask = {0, 1, 3, 7, 15, 31, 63, 127, 255, FrameMetricsAggregator.EVERY_DURATION, j1.M, 2047, 4095, 8191, 16383, 32767, 65535, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, 33554431, 67108863, 134217727, 268435455, 536870911, a0.f86219j, Integer.MAX_VALUE, -1};

    public GF2Polynomial(int i4) {
        i4 = i4 < 1 ? 1 : i4;
        int i10 = ((i4 - 1) >> 5) + 1;
        this.blocks = i10;
        this.value = new int[i10];
        this.len = i4;
    }

    public GF2Polynomial(int i4, String str) {
        i4 = i4 < 1 ? 1 : i4;
        int i10 = ((i4 - 1) >> 5) + 1;
        this.blocks = i10;
        this.value = new int[i10];
        this.len = i4;
        if (str.equalsIgnoreCase("ZERO")) {
            assignZero();
        } else if (str.equalsIgnoreCase("ONE")) {
            assignOne();
        } else if (str.equalsIgnoreCase("RANDOM")) {
            randomize();
        } else if (str.equalsIgnoreCase("X")) {
            assignX();
        } else if (str.equalsIgnoreCase(shaded.org.apache.commons.codec.language.bm.f.f93599f)) {
            assignAll();
        } else {
            throw new IllegalArgumentException("Error: GF2Polynomial was called using " + str + " as value!");
        }
    }

    public GF2Polynomial(int i4, BigInteger bigInteger) {
        i4 = i4 < 1 ? 1 : i4;
        int i10 = ((i4 - 1) >> 5) + 1;
        this.blocks = i10;
        this.value = new int[i10];
        this.len = i4;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            int length = byteArray.length - 1;
            byte[] bArr = new byte[length];
            System.arraycopy(byteArray, 1, bArr, 0, length);
            byteArray = bArr;
        }
        int length2 = byteArray.length & 3;
        int length3 = ((byteArray.length - 1) >> 2) + 1;
        for (int i11 = 0; i11 < length2; i11++) {
            int[] iArr = this.value;
            int i12 = length3 - 1;
            iArr[i12] = iArr[i12] | ((byteArray[i11] & 255) << (((length2 - 1) - i11) << 3));
        }
        for (int i13 = 0; i13 <= ((byteArray.length - 4) >> 2); i13++) {
            int length4 = (byteArray.length - 1) - (i13 << 2);
            int[] iArr2 = this.value;
            iArr2[i13] = byteArray[length4] & 255;
            iArr2[i13] = iArr2[i13] | ((byteArray[length4 - 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
            iArr2[i13] = iArr2[i13] | ((byteArray[length4 - 2] << 16) & 16711680);
            iArr2[i13] = ((byteArray[length4 - 3] << c.B) & ViewCompat.MEASURED_STATE_MASK) | iArr2[i13];
        }
        int i14 = this.len;
        if ((i14 & 31) != 0) {
            int[] iArr3 = this.value;
            int i15 = this.blocks - 1;
            iArr3[i15] = reverseRightMask[i14 & 31] & iArr3[i15];
        }
        reduceN();
    }

    public GF2Polynomial(int i4, Random random) {
        i4 = i4 < 1 ? 1 : i4;
        int i10 = ((i4 - 1) >> 5) + 1;
        this.blocks = i10;
        this.value = new int[i10];
        this.len = i4;
        randomize(random);
    }

    public GF2Polynomial(int i4, byte[] bArr) {
        int i10;
        i4 = i4 < 1 ? 1 : i4;
        int i11 = ((i4 - 1) >> 5) + 1;
        this.blocks = i11;
        this.value = new int[i11];
        this.len = i4;
        int min = Math.min(((bArr.length - 1) >> 2) + 1, i11);
        int i12 = 0;
        while (true) {
            i10 = min - 1;
            if (i12 >= i10) {
                break;
            }
            int length = (bArr.length - (i12 << 2)) - 1;
            int[] iArr = this.value;
            iArr[i12] = bArr[length] & 255;
            iArr[i12] = (65280 & (bArr[length - 1] << 8)) | iArr[i12];
            iArr[i12] = (16711680 & (bArr[length - 2] << 16)) | iArr[i12];
            iArr[i12] = ((bArr[length - 3] << c.B) & ViewCompat.MEASURED_STATE_MASK) | iArr[i12];
            i12++;
        }
        int length2 = (bArr.length - (i10 << 2)) - 1;
        int[] iArr2 = this.value;
        iArr2[i10] = bArr[length2] & 255;
        if (length2 > 0) {
            iArr2[i10] = (65280 & (bArr[length2 - 1] << 8)) | iArr2[i10];
        }
        if (length2 > 1) {
            iArr2[i10] = iArr2[i10] | (16711680 & (bArr[length2 - 2] << 16));
        }
        if (length2 > 2) {
            iArr2[i10] = ((bArr[length2 - 3] << c.B) & ViewCompat.MEASURED_STATE_MASK) | iArr2[i10];
        }
        zeroUnusedBits();
        reduceN();
    }

    public GF2Polynomial(int i4, int[] iArr) {
        i4 = i4 < 1 ? 1 : i4;
        int i10 = ((i4 - 1) >> 5) + 1;
        this.blocks = i10;
        this.value = new int[i10];
        this.len = i4;
        System.arraycopy(iArr, 0, this.value, 0, Math.min(i10, iArr.length));
        zeroUnusedBits();
    }

    public GF2Polynomial(GF2Polynomial gF2Polynomial) {
        this.len = gF2Polynomial.len;
        this.blocks = gF2Polynomial.blocks;
        this.value = IntUtils.clone(gF2Polynomial.value);
    }

    private void doShiftBlocksLeft(int i4) {
        int i10 = this.blocks;
        int[] iArr = this.value;
        if (i10 > iArr.length) {
            int[] iArr2 = new int[i10];
            System.arraycopy(iArr, 0, iArr2, i4, i10 - i4);
            this.value = iArr2;
            return;
        }
        for (int i11 = i10 - 1; i11 >= i4; i11--) {
            int[] iArr3 = this.value;
            iArr3[i11] = iArr3[i11 - i4];
        }
        for (int i12 = 0; i12 < i4; i12++) {
            this.value[i12] = 0;
        }
    }

    private GF2Polynomial karaMult(GF2Polynomial gF2Polynomial) {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.len << 1);
        int i4 = this.len;
        if (i4 <= 32) {
            gF2Polynomial2.value = mult32(this.value[0], gF2Polynomial.value[0]);
            return gF2Polynomial2;
        } else if (i4 <= 64) {
            gF2Polynomial2.value = mult64(this.value, gF2Polynomial.value);
            return gF2Polynomial2;
        } else if (i4 <= 128) {
            gF2Polynomial2.value = mult128(this.value, gF2Polynomial.value);
            return gF2Polynomial2;
        } else if (i4 <= 256) {
            gF2Polynomial2.value = mult256(this.value, gF2Polynomial.value);
            return gF2Polynomial2;
        } else if (i4 <= 512) {
            gF2Polynomial2.value = mult512(this.value, gF2Polynomial.value);
            return gF2Polynomial2;
        } else {
            int i10 = bitMask[IntegerFunctions.floorLog(i4 - 1)];
            int i11 = ((i10 - 1) >> 5) + 1;
            GF2Polynomial lower = lower(i11);
            GF2Polynomial upper = upper(i11);
            GF2Polynomial lower2 = gF2Polynomial.lower(i11);
            GF2Polynomial upper2 = gF2Polynomial.upper(i11);
            GF2Polynomial karaMult = upper.karaMult(upper2);
            GF2Polynomial karaMult2 = lower.karaMult(lower2);
            lower.addToThis(upper);
            lower2.addToThis(upper2);
            GF2Polynomial karaMult3 = lower.karaMult(lower2);
            gF2Polynomial2.shiftLeftAddThis(karaMult, i10 << 1);
            gF2Polynomial2.shiftLeftAddThis(karaMult, i10);
            gF2Polynomial2.shiftLeftAddThis(karaMult3, i10);
            gF2Polynomial2.shiftLeftAddThis(karaMult2, i10);
            gF2Polynomial2.addToThis(karaMult2);
            return gF2Polynomial2;
        }
    }

    private GF2Polynomial lower(int i4) {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(i4 << 5);
        System.arraycopy(this.value, 0, gF2Polynomial.value, 0, Math.min(i4, this.blocks));
        return gF2Polynomial;
    }

    private static int[] mult128(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[8];
        int[] iArr4 = new int[2];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(2, iArr.length));
        int[] iArr5 = new int[2];
        if (iArr.length > 2) {
            System.arraycopy(iArr, 2, iArr5, 0, Math.min(2, iArr.length - 2));
        }
        int[] iArr6 = new int[2];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(2, iArr2.length));
        int[] iArr7 = new int[2];
        if (iArr2.length > 2) {
            System.arraycopy(iArr2, 2, iArr7, 0, Math.min(2, iArr2.length - 2));
        }
        if (iArr5[1] != 0 || iArr7[1] != 0) {
            int[] mult64 = mult64(iArr5, iArr7);
            iArr3[7] = iArr3[7] ^ mult64[3];
            iArr3[6] = iArr3[6] ^ mult64[2];
            iArr3[5] = iArr3[5] ^ (mult64[1] ^ mult64[3]);
            iArr3[4] = iArr3[4] ^ (mult64[0] ^ mult64[2]);
            iArr3[3] = iArr3[3] ^ mult64[1];
            iArr3[2] = mult64[0] ^ iArr3[2];
        } else if (iArr5[0] != 0 || iArr7[0] != 0) {
            int[] mult32 = mult32(iArr5[0], iArr7[0]);
            iArr3[5] = iArr3[5] ^ mult32[1];
            iArr3[4] = iArr3[4] ^ mult32[0];
            iArr3[3] = iArr3[3] ^ mult32[1];
            iArr3[2] = mult32[0] ^ iArr3[2];
        }
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        if (iArr5[1] == 0 && iArr7[1] == 0) {
            int[] mult322 = mult32(iArr5[0], iArr7[0]);
            iArr3[3] = iArr3[3] ^ mult322[1];
            iArr3[2] = mult322[0] ^ iArr3[2];
        } else {
            int[] mult642 = mult64(iArr5, iArr7);
            iArr3[5] = iArr3[5] ^ mult642[3];
            iArr3[4] = iArr3[4] ^ mult642[2];
            iArr3[3] = iArr3[3] ^ mult642[1];
            iArr3[2] = mult642[0] ^ iArr3[2];
        }
        if (iArr4[1] == 0 && iArr6[1] == 0) {
            int[] mult323 = mult32(iArr4[0], iArr6[0]);
            iArr3[3] = iArr3[3] ^ mult323[1];
            iArr3[2] = iArr3[2] ^ mult323[0];
            iArr3[1] = iArr3[1] ^ mult323[1];
            iArr3[0] = mult323[0] ^ iArr3[0];
        } else {
            int[] mult643 = mult64(iArr4, iArr6);
            iArr3[5] = iArr3[5] ^ mult643[3];
            iArr3[4] = iArr3[4] ^ mult643[2];
            iArr3[3] = iArr3[3] ^ (mult643[1] ^ mult643[3]);
            iArr3[2] = iArr3[2] ^ (mult643[0] ^ mult643[2]);
            iArr3[1] = iArr3[1] ^ mult643[1];
            iArr3[0] = mult643[0] ^ iArr3[0];
        }
        return iArr3;
    }

    private static int[] mult256(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[16];
        int[] iArr4 = new int[4];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(4, iArr.length));
        int[] iArr5 = new int[4];
        if (iArr.length > 4) {
            System.arraycopy(iArr, 4, iArr5, 0, Math.min(4, iArr.length - 4));
        }
        int[] iArr6 = new int[4];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(4, iArr2.length));
        int[] iArr7 = new int[4];
        if (iArr2.length > 4) {
            System.arraycopy(iArr2, 4, iArr7, 0, Math.min(4, iArr2.length - 4));
        }
        if (iArr5[3] != 0 || iArr5[2] != 0 || iArr7[3] != 0 || iArr7[2] != 0) {
            int[] mult128 = mult128(iArr5, iArr7);
            iArr3[15] = iArr3[15] ^ mult128[7];
            iArr3[14] = iArr3[14] ^ mult128[6];
            iArr3[13] = iArr3[13] ^ mult128[5];
            iArr3[12] = iArr3[12] ^ mult128[4];
            iArr3[11] = iArr3[11] ^ (mult128[3] ^ mult128[7]);
            iArr3[10] = iArr3[10] ^ (mult128[2] ^ mult128[6]);
            iArr3[9] = iArr3[9] ^ (mult128[1] ^ mult128[5]);
            iArr3[8] = iArr3[8] ^ (mult128[0] ^ mult128[4]);
            iArr3[7] = iArr3[7] ^ mult128[3];
            iArr3[6] = iArr3[6] ^ mult128[2];
            iArr3[5] = iArr3[5] ^ mult128[1];
            iArr3[4] = mult128[0] ^ iArr3[4];
        } else if (iArr5[1] != 0 || iArr7[1] != 0) {
            int[] mult64 = mult64(iArr5, iArr7);
            iArr3[11] = iArr3[11] ^ mult64[3];
            iArr3[10] = iArr3[10] ^ mult64[2];
            iArr3[9] = iArr3[9] ^ mult64[1];
            iArr3[8] = iArr3[8] ^ mult64[0];
            iArr3[7] = iArr3[7] ^ mult64[3];
            iArr3[6] = iArr3[6] ^ mult64[2];
            iArr3[5] = iArr3[5] ^ mult64[1];
            iArr3[4] = mult64[0] ^ iArr3[4];
        } else if (iArr5[0] != 0 || iArr7[0] != 0) {
            int[] mult32 = mult32(iArr5[0], iArr7[0]);
            iArr3[9] = iArr3[9] ^ mult32[1];
            iArr3[8] = iArr3[8] ^ mult32[0];
            iArr3[5] = iArr3[5] ^ mult32[1];
            iArr3[4] = mult32[0] ^ iArr3[4];
        }
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr5[2] = iArr5[2] ^ iArr4[2];
        iArr5[3] = iArr5[3] ^ iArr4[3];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        iArr7[2] = iArr7[2] ^ iArr6[2];
        iArr7[3] = iArr7[3] ^ iArr6[3];
        int[] mult1282 = mult128(iArr5, iArr7);
        iArr3[11] = iArr3[11] ^ mult1282[7];
        iArr3[10] = iArr3[10] ^ mult1282[6];
        iArr3[9] = iArr3[9] ^ mult1282[5];
        iArr3[8] = iArr3[8] ^ mult1282[4];
        iArr3[7] = iArr3[7] ^ mult1282[3];
        iArr3[6] = iArr3[6] ^ mult1282[2];
        iArr3[5] = iArr3[5] ^ mult1282[1];
        iArr3[4] = mult1282[0] ^ iArr3[4];
        int[] mult1283 = mult128(iArr4, iArr6);
        iArr3[11] = iArr3[11] ^ mult1283[7];
        iArr3[10] = iArr3[10] ^ mult1283[6];
        iArr3[9] = iArr3[9] ^ mult1283[5];
        iArr3[8] = iArr3[8] ^ mult1283[4];
        iArr3[7] = iArr3[7] ^ (mult1283[3] ^ mult1283[7]);
        iArr3[6] = iArr3[6] ^ (mult1283[2] ^ mult1283[6]);
        iArr3[5] = iArr3[5] ^ (mult1283[1] ^ mult1283[5]);
        iArr3[4] = iArr3[4] ^ (mult1283[0] ^ mult1283[4]);
        iArr3[3] = iArr3[3] ^ mult1283[3];
        iArr3[2] = iArr3[2] ^ mult1283[2];
        iArr3[1] = iArr3[1] ^ mult1283[1];
        iArr3[0] = mult1283[0] ^ iArr3[0];
        return iArr3;
    }

    private static int[] mult32(int i4, int i10) {
        int[] iArr = new int[2];
        if (i4 != 0 && i10 != 0) {
            long j4 = i10 & 4294967295L;
            long j10 = 0;
            for (int i11 = 1; i11 <= 32; i11++) {
                if ((bitMask[i11 - 1] & i4) != 0) {
                    j10 ^= j4;
                }
                j4 <<= 1;
            }
            iArr[1] = (int) (j10 >>> 32);
            iArr[0] = (int) (j10 & 4294967295L);
        }
        return iArr;
    }

    private static int[] mult512(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[32];
        int[] iArr4 = new int[8];
        System.arraycopy(iArr, 0, iArr4, 0, Math.min(8, iArr.length));
        int[] iArr5 = new int[8];
        if (iArr.length > 8) {
            System.arraycopy(iArr, 8, iArr5, 0, Math.min(8, iArr.length - 8));
        }
        int[] iArr6 = new int[8];
        System.arraycopy(iArr2, 0, iArr6, 0, Math.min(8, iArr2.length));
        int[] iArr7 = new int[8];
        if (iArr2.length > 8) {
            System.arraycopy(iArr2, 8, iArr7, 0, Math.min(8, iArr2.length - 8));
        }
        int[] mult256 = mult256(iArr5, iArr7);
        iArr3[31] = iArr3[31] ^ mult256[15];
        iArr3[30] = iArr3[30] ^ mult256[14];
        iArr3[29] = iArr3[29] ^ mult256[13];
        iArr3[28] = iArr3[28] ^ mult256[12];
        iArr3[27] = iArr3[27] ^ mult256[11];
        iArr3[26] = iArr3[26] ^ mult256[10];
        iArr3[25] = iArr3[25] ^ mult256[9];
        iArr3[24] = iArr3[24] ^ mult256[8];
        iArr3[23] = iArr3[23] ^ (mult256[7] ^ mult256[15]);
        iArr3[22] = iArr3[22] ^ (mult256[6] ^ mult256[14]);
        iArr3[21] = iArr3[21] ^ (mult256[5] ^ mult256[13]);
        iArr3[20] = iArr3[20] ^ (mult256[4] ^ mult256[12]);
        iArr3[19] = iArr3[19] ^ (mult256[3] ^ mult256[11]);
        iArr3[18] = iArr3[18] ^ (mult256[2] ^ mult256[10]);
        iArr3[17] = iArr3[17] ^ (mult256[1] ^ mult256[9]);
        iArr3[16] = iArr3[16] ^ (mult256[0] ^ mult256[8]);
        iArr3[15] = iArr3[15] ^ mult256[7];
        iArr3[14] = iArr3[14] ^ mult256[6];
        iArr3[13] = iArr3[13] ^ mult256[5];
        iArr3[12] = iArr3[12] ^ mult256[4];
        iArr3[11] = iArr3[11] ^ mult256[3];
        iArr3[10] = iArr3[10] ^ mult256[2];
        iArr3[9] = iArr3[9] ^ mult256[1];
        iArr3[8] = iArr3[8] ^ mult256[0];
        iArr5[0] = iArr5[0] ^ iArr4[0];
        iArr5[1] = iArr5[1] ^ iArr4[1];
        iArr5[2] = iArr5[2] ^ iArr4[2];
        iArr5[3] = iArr5[3] ^ iArr4[3];
        iArr5[4] = iArr5[4] ^ iArr4[4];
        iArr5[5] = iArr5[5] ^ iArr4[5];
        iArr5[6] = iArr5[6] ^ iArr4[6];
        iArr5[7] = iArr5[7] ^ iArr4[7];
        iArr7[0] = iArr7[0] ^ iArr6[0];
        iArr7[1] = iArr7[1] ^ iArr6[1];
        iArr7[2] = iArr7[2] ^ iArr6[2];
        iArr7[3] = iArr7[3] ^ iArr6[3];
        iArr7[4] = iArr7[4] ^ iArr6[4];
        iArr7[5] = iArr7[5] ^ iArr6[5];
        iArr7[6] = iArr7[6] ^ iArr6[6];
        iArr7[7] = iArr7[7] ^ iArr6[7];
        int[] mult2562 = mult256(iArr5, iArr7);
        iArr3[23] = iArr3[23] ^ mult2562[15];
        iArr3[22] = iArr3[22] ^ mult2562[14];
        iArr3[21] = iArr3[21] ^ mult2562[13];
        iArr3[20] = iArr3[20] ^ mult2562[12];
        iArr3[19] = iArr3[19] ^ mult2562[11];
        iArr3[18] = iArr3[18] ^ mult2562[10];
        iArr3[17] = iArr3[17] ^ mult2562[9];
        iArr3[16] = iArr3[16] ^ mult2562[8];
        iArr3[15] = iArr3[15] ^ mult2562[7];
        iArr3[14] = iArr3[14] ^ mult2562[6];
        iArr3[13] = iArr3[13] ^ mult2562[5];
        iArr3[12] = iArr3[12] ^ mult2562[4];
        iArr3[11] = iArr3[11] ^ mult2562[3];
        iArr3[10] = iArr3[10] ^ mult2562[2];
        iArr3[9] = iArr3[9] ^ mult2562[1];
        iArr3[8] = mult2562[0] ^ iArr3[8];
        int[] mult2563 = mult256(iArr4, iArr6);
        iArr3[23] = iArr3[23] ^ mult2563[15];
        iArr3[22] = iArr3[22] ^ mult2563[14];
        iArr3[21] = iArr3[21] ^ mult2563[13];
        iArr3[20] = iArr3[20] ^ mult2563[12];
        iArr3[19] = iArr3[19] ^ mult2563[11];
        iArr3[18] = iArr3[18] ^ mult2563[10];
        iArr3[17] = iArr3[17] ^ mult2563[9];
        iArr3[16] = iArr3[16] ^ mult2563[8];
        iArr3[15] = iArr3[15] ^ (mult2563[7] ^ mult2563[15]);
        iArr3[14] = iArr3[14] ^ (mult2563[6] ^ mult2563[14]);
        iArr3[13] = iArr3[13] ^ (mult2563[5] ^ mult2563[13]);
        iArr3[12] = iArr3[12] ^ (mult2563[4] ^ mult2563[12]);
        iArr3[11] = iArr3[11] ^ (mult2563[3] ^ mult2563[11]);
        iArr3[10] = iArr3[10] ^ (mult2563[2] ^ mult2563[10]);
        iArr3[9] = iArr3[9] ^ (mult2563[1] ^ mult2563[9]);
        iArr3[8] = iArr3[8] ^ (mult2563[0] ^ mult2563[8]);
        iArr3[7] = iArr3[7] ^ mult2563[7];
        iArr3[6] = iArr3[6] ^ mult2563[6];
        iArr3[5] = iArr3[5] ^ mult2563[5];
        iArr3[4] = iArr3[4] ^ mult2563[4];
        iArr3[3] = iArr3[3] ^ mult2563[3];
        iArr3[2] = iArr3[2] ^ mult2563[2];
        iArr3[1] = iArr3[1] ^ mult2563[1];
        iArr3[0] = mult2563[0] ^ iArr3[0];
        return iArr3;
    }

    private static int[] mult64(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[4];
        int i4 = iArr[0];
        int i10 = iArr.length > 1 ? iArr[1] : 0;
        int i11 = iArr2[0];
        int i12 = iArr2.length > 1 ? iArr2[1] : 0;
        if (i10 != 0 || i12 != 0) {
            int[] mult32 = mult32(i10, i12);
            iArr3[3] = iArr3[3] ^ mult32[1];
            iArr3[2] = iArr3[2] ^ (mult32[0] ^ mult32[1]);
            iArr3[1] = mult32[0] ^ iArr3[1];
        }
        int[] mult322 = mult32(i10 ^ i4, i12 ^ i11);
        iArr3[2] = iArr3[2] ^ mult322[1];
        iArr3[1] = mult322[0] ^ iArr3[1];
        int[] mult323 = mult32(i4, i11);
        iArr3[2] = iArr3[2] ^ mult323[1];
        iArr3[1] = iArr3[1] ^ (mult323[0] ^ mult323[1]);
        iArr3[0] = mult323[0] ^ iArr3[0];
        return iArr3;
    }

    private GF2Polynomial upper(int i4) {
        int min = Math.min(i4, this.blocks - i4);
        GF2Polynomial gF2Polynomial = new GF2Polynomial(min << 5);
        if (this.blocks >= i4) {
            System.arraycopy(this.value, i4, gF2Polynomial.value, 0, min);
        }
        return gF2Polynomial;
    }

    private void zeroUnusedBits() {
        int i4 = this.len;
        if ((i4 & 31) != 0) {
            int[] iArr = this.value;
            int i10 = this.blocks - 1;
            iArr[i10] = reverseRightMask[i4 & 31] & iArr[i10];
        }
    }

    public GF2Polynomial add(GF2Polynomial gF2Polynomial) {
        return xor(gF2Polynomial);
    }

    public void addToThis(GF2Polynomial gF2Polynomial) {
        expandN(gF2Polynomial.len);
        xorThisBy(gF2Polynomial);
    }

    public void assignAll() {
        for (int i4 = 0; i4 < this.blocks; i4++) {
            this.value[i4] = -1;
        }
        zeroUnusedBits();
    }

    public void assignOne() {
        for (int i4 = 1; i4 < this.blocks; i4++) {
            this.value[i4] = 0;
        }
        this.value[0] = 1;
    }

    public void assignX() {
        for (int i4 = 1; i4 < this.blocks; i4++) {
            this.value[i4] = 0;
        }
        this.value[0] = 2;
    }

    public void assignZero() {
        for (int i4 = 0; i4 < this.blocks; i4++) {
            this.value[i4] = 0;
        }
    }

    public Object clone() {
        return new GF2Polynomial(this);
    }

    public GF2Polynomial[] divide(GF2Polynomial gF2Polynomial) throws RuntimeException {
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[2];
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.len);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial4 = new GF2Polynomial(gF2Polynomial);
        if (gF2Polynomial4.isZero()) {
            throw new RuntimeException();
        }
        gF2Polynomial3.reduceN();
        gF2Polynomial4.reduceN();
        int i4 = gF2Polynomial3.len;
        int i10 = gF2Polynomial4.len;
        if (i4 < i10) {
            gF2PolynomialArr[0] = new GF2Polynomial(0);
            gF2PolynomialArr[1] = gF2Polynomial3;
            return gF2PolynomialArr;
        }
        int i11 = i4 - i10;
        gF2Polynomial2.expandN(i11 + 1);
        while (i11 >= 0) {
            gF2Polynomial3.subtractFromThis(gF2Polynomial4.shiftLeft(i11));
            gF2Polynomial3.reduceN();
            gF2Polynomial2.xorBit(i11);
            i11 = gF2Polynomial3.len - gF2Polynomial4.len;
        }
        gF2PolynomialArr[0] = gF2Polynomial2;
        gF2PolynomialArr[1] = gF2Polynomial3;
        return gF2PolynomialArr;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2Polynomial)) {
            return false;
        }
        GF2Polynomial gF2Polynomial = (GF2Polynomial) obj;
        if (this.len != gF2Polynomial.len) {
            return false;
        }
        for (int i4 = 0; i4 < this.blocks; i4++) {
            if (this.value[i4] != gF2Polynomial.value[i4]) {
                return false;
            }
        }
        return true;
    }

    public void expandN(int i4) {
        if (this.len >= i4) {
            return;
        }
        this.len = i4;
        int i10 = ((i4 - 1) >>> 5) + 1;
        int i11 = this.blocks;
        if (i11 >= i10) {
            return;
        }
        int[] iArr = this.value;
        if (iArr.length >= i10) {
            while (i11 < i10) {
                this.value[i11] = 0;
                i11++;
            }
            this.blocks = i10;
            return;
        }
        int[] iArr2 = new int[i10];
        System.arraycopy(iArr, 0, iArr2, 0, i11);
        this.blocks = i10;
        this.value = iArr2;
    }

    public GF2Polynomial gcd(GF2Polynomial gF2Polynomial) throws RuntimeException {
        if (isZero() && gF2Polynomial.isZero()) {
            throw new ArithmeticException("Both operands of gcd equal zero.");
        }
        if (isZero()) {
            return new GF2Polynomial(gF2Polynomial);
        }
        if (gF2Polynomial.isZero()) {
            return new GF2Polynomial(this);
        }
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(gF2Polynomial);
        GF2Polynomial gF2Polynomial4 = gF2Polynomial2;
        GF2Polynomial gF2Polynomial5 = gF2Polynomial3;
        while (!gF2Polynomial5.isZero()) {
            GF2Polynomial gF2Polynomial6 = gF2Polynomial5;
            gF2Polynomial5 = gF2Polynomial4.remainder(gF2Polynomial5);
            gF2Polynomial4 = gF2Polynomial6;
        }
        return gF2Polynomial4;
    }

    public int getBit(int i4) {
        if (i4 >= 0) {
            if (i4 > this.len - 1) {
                return 0;
            }
            return (bitMask[i4 & 31] & this.value[i4 >>> 5]) != 0 ? 1 : 0;
        }
        throw new RuntimeException();
    }

    public int getLength() {
        return this.len;
    }

    public int hashCode() {
        return this.len + Arrays.hashCode(this.value);
    }

    public GF2Polynomial increase() {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this);
        gF2Polynomial.increaseThis();
        return gF2Polynomial;
    }

    public void increaseThis() {
        xorBit(0);
    }

    public boolean isIrreducible() {
        if (isZero()) {
            return false;
        }
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this);
        gF2Polynomial.reduceN();
        int i4 = gF2Polynomial.len;
        int i10 = i4 - 1;
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(i4, "X");
        for (int i11 = 1; i11 <= (i10 >> 1); i11++) {
            gF2Polynomial2.squareThisPreCalc();
            gF2Polynomial2 = gF2Polynomial2.remainder(gF2Polynomial);
            GF2Polynomial add = gF2Polynomial2.add(new GF2Polynomial(32, "X"));
            if (add.isZero() || !gF2Polynomial.gcd(add).isOne()) {
                return false;
            }
        }
        return true;
    }

    public boolean isOne() {
        for (int i4 = 1; i4 < this.blocks; i4++) {
            if (this.value[i4] != 0) {
                return false;
            }
        }
        return this.value[0] == 1;
    }

    public boolean isZero() {
        if (this.len == 0) {
            return true;
        }
        for (int i4 = 0; i4 < this.blocks; i4++) {
            if (this.value[i4] != 0) {
                return false;
            }
        }
        return true;
    }

    public GF2Polynomial multiply(GF2Polynomial gF2Polynomial) {
        int max = Math.max(this.len, gF2Polynomial.len);
        expandN(max);
        gF2Polynomial.expandN(max);
        return karaMult(gF2Polynomial);
    }

    public GF2Polynomial multiplyClassic(GF2Polynomial gF2Polynomial) {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(Math.max(this.len, gF2Polynomial.len) << 1);
        GF2Polynomial[] gF2PolynomialArr = new GF2Polynomial[32];
        gF2PolynomialArr[0] = new GF2Polynomial(this);
        for (int i4 = 1; i4 <= 31; i4++) {
            gF2PolynomialArr[i4] = gF2PolynomialArr[i4 - 1].shiftLeft();
        }
        for (int i10 = 0; i10 < gF2Polynomial.blocks; i10++) {
            for (int i11 = 0; i11 <= 31; i11++) {
                if ((gF2Polynomial.value[i10] & bitMask[i11]) != 0) {
                    gF2Polynomial2.xorThisBy(gF2PolynomialArr[i11]);
                }
            }
            for (int i12 = 0; i12 <= 31; i12++) {
                gF2PolynomialArr[i12].shiftBlocksLeft();
            }
        }
        return gF2Polynomial2;
    }

    public GF2Polynomial quotient(GF2Polynomial gF2Polynomial) throws RuntimeException {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this.len);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial4 = new GF2Polynomial(gF2Polynomial);
        if (gF2Polynomial4.isZero()) {
            throw new RuntimeException();
        }
        gF2Polynomial3.reduceN();
        gF2Polynomial4.reduceN();
        int i4 = gF2Polynomial3.len;
        int i10 = gF2Polynomial4.len;
        if (i4 < i10) {
            return new GF2Polynomial(0);
        }
        int i11 = i4 - i10;
        gF2Polynomial2.expandN(i11 + 1);
        while (i11 >= 0) {
            gF2Polynomial3.subtractFromThis(gF2Polynomial4.shiftLeft(i11));
            gF2Polynomial3.reduceN();
            gF2Polynomial2.xorBit(i11);
            i11 = gF2Polynomial3.len - gF2Polynomial4.len;
        }
        return gF2Polynomial2;
    }

    public void randomize() {
        for (int i4 = 0; i4 < this.blocks; i4++) {
            this.value[i4] = rand.nextInt();
        }
        zeroUnusedBits();
    }

    public void randomize(Random random) {
        for (int i4 = 0; i4 < this.blocks; i4++) {
            this.value[i4] = random.nextInt();
        }
        zeroUnusedBits();
    }

    public void reduceN() {
        int[] iArr;
        int i4 = this.blocks;
        while (true) {
            i4--;
            iArr = this.value;
            if (iArr[i4] != 0 || i4 <= 0) {
                break;
            }
        }
        int i10 = iArr[i4];
        int i11 = 0;
        while (i10 != 0) {
            i10 >>>= 1;
            i11++;
        }
        this.len = (i4 << 5) + i11;
        this.blocks = i4 + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reducePentanomial(int i4, int[] iArr) {
        GF2Polynomial gF2Polynomial = this;
        int i10 = i4 >>> 5;
        int i11 = i4 & 31;
        int i12 = 32 - i11;
        int i13 = (i4 - iArr[0]) >>> 5;
        int i14 = 32 - ((i4 - iArr[0]) & 31);
        int i15 = (i4 - iArr[1]) >>> 5;
        int i16 = 32 - ((i4 - iArr[1]) & 31);
        int i17 = (i4 - iArr[2]) >>> 5;
        int i18 = 32 - ((i4 - iArr[2]) & 31);
        int i19 = ((i4 << 1) - 2) >>> 5;
        while (i19 > i10) {
            int[] iArr2 = gF2Polynomial.value;
            long j4 = iArr2[i19] & 4294967295L;
            int i20 = i19 - i10;
            int i21 = i20 - 1;
            int i22 = i10;
            int i23 = i11;
            iArr2[i21] = iArr2[i21] ^ ((int) (j4 << i12));
            iArr2[i20] = (int) (iArr2[i20] ^ (j4 >>> (32 - i12)));
            int i24 = i19 - i13;
            int i25 = i24 - 1;
            iArr2[i25] = iArr2[i25] ^ ((int) (j4 << i14));
            iArr2[i24] = (int) (iArr2[i24] ^ (j4 >>> (32 - i14)));
            int i26 = i19 - i15;
            int i27 = i26 - 1;
            iArr2[i27] = iArr2[i27] ^ ((int) (j4 << i16));
            iArr2[i26] = (int) (iArr2[i26] ^ (j4 >>> (32 - i16)));
            int i28 = i19 - i17;
            int i29 = i28 - 1;
            iArr2[i29] = iArr2[i29] ^ ((int) (j4 << i18));
            iArr2[i28] = (int) ((j4 >>> (32 - i18)) ^ iArr2[i28]);
            iArr2[i19] = 0;
            i19--;
            gF2Polynomial = this;
            i10 = i22;
            i11 = i23;
        }
        int i30 = i10;
        int i31 = i11;
        int[] iArr3 = gF2Polynomial.value;
        long j10 = iArr3[i30] & 4294967295L & (4294967295 << i31);
        iArr3[0] = (int) ((j10 >>> (32 - i12)) ^ iArr3[0]);
        int i32 = i30 - i13;
        int i33 = i32 - 1;
        if (i33 >= 0) {
            iArr3[i33] = iArr3[i33] ^ ((int) (j10 << i14));
        }
        iArr3[i32] = (int) (iArr3[i32] ^ (j10 >>> (32 - i14)));
        int i34 = i30 - i15;
        int i35 = i34 - 1;
        if (i35 >= 0) {
            iArr3[i35] = iArr3[i35] ^ ((int) (j10 << i16));
        }
        iArr3[i34] = (int) (iArr3[i34] ^ (j10 >>> (32 - i16)));
        int i36 = i30 - i17;
        int i37 = i36 - 1;
        if (i37 >= 0) {
            iArr3[i37] = iArr3[i37] ^ ((int) (j10 << i18));
        }
        iArr3[i36] = (int) ((j10 >>> (32 - i18)) ^ iArr3[i36]);
        iArr3[i30] = iArr3[i30] & reverseRightMask[i31];
        this.blocks = ((i4 - 1) >>> 5) + 1;
        this.len = i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reduceTrinomial(int i4, int i10) {
        int i11 = i4 >>> 5;
        int i12 = i4 & 31;
        int i13 = 32 - i12;
        int i14 = i4 - i10;
        int i15 = i14 >>> 5;
        int i16 = 32 - (i14 & 31);
        int i17 = ((i4 << 1) - 2) >>> 5;
        while (i17 > i11) {
            int[] iArr = this.value;
            long j4 = 4294967295L & iArr[i17];
            int i18 = i17 - i11;
            int i19 = i18 - 1;
            int i20 = i11;
            iArr[i19] = iArr[i19] ^ ((int) (j4 << i13));
            iArr[i18] = (int) (iArr[i18] ^ (j4 >>> (32 - i13)));
            int i21 = i17 - i15;
            int i22 = i21 - 1;
            iArr[i22] = iArr[i22] ^ ((int) (j4 << i16));
            iArr[i21] = (int) ((j4 >>> (32 - i16)) ^ iArr[i21]);
            iArr[i17] = 0;
            i17--;
            i11 = i20;
        }
        int i23 = i11;
        int[] iArr2 = this.value;
        long j10 = (4294967295 << i12) & iArr2[i23] & 4294967295L;
        iArr2[0] = (int) (iArr2[0] ^ (j10 >>> (32 - i13)));
        int i24 = i23 - i15;
        int i25 = i24 - 1;
        if (i25 >= 0) {
            iArr2[i25] = iArr2[i25] ^ ((int) (j10 << i16));
        }
        iArr2[i24] = (int) ((j10 >>> (32 - i16)) ^ iArr2[i24]);
        iArr2[i23] = iArr2[i23] & reverseRightMask[i12];
        this.blocks = ((i4 - 1) >>> 5) + 1;
        this.len = i4;
    }

    public GF2Polynomial remainder(GF2Polynomial gF2Polynomial) throws RuntimeException {
        GF2Polynomial gF2Polynomial2 = new GF2Polynomial(this);
        GF2Polynomial gF2Polynomial3 = new GF2Polynomial(gF2Polynomial);
        if (gF2Polynomial3.isZero()) {
            throw new RuntimeException();
        }
        gF2Polynomial2.reduceN();
        gF2Polynomial3.reduceN();
        int i4 = gF2Polynomial2.len;
        int i10 = gF2Polynomial3.len;
        if (i4 < i10) {
            return gF2Polynomial2;
        }
        while (true) {
            int i11 = i4 - i10;
            if (i11 < 0) {
                return gF2Polynomial2;
            }
            gF2Polynomial2.subtractFromThis(gF2Polynomial3.shiftLeft(i11));
            gF2Polynomial2.reduceN();
            i4 = gF2Polynomial2.len;
            i10 = gF2Polynomial3.len;
        }
    }

    public void resetBit(int i4) throws RuntimeException {
        if (i4 < 0) {
            throw new RuntimeException();
        }
        if (i4 > this.len - 1) {
            return;
        }
        int[] iArr = this.value;
        int i10 = i4 >>> 5;
        iArr[i10] = (~bitMask[i4 & 31]) & iArr[i10];
    }

    public void setBit(int i4) throws RuntimeException {
        if (i4 < 0 || i4 > this.len - 1) {
            throw new RuntimeException();
        }
        int[] iArr = this.value;
        int i10 = i4 >>> 5;
        iArr[i10] = bitMask[i4 & 31] | iArr[i10];
    }

    void shiftBlocksLeft() {
        int i4 = this.blocks + 1;
        this.blocks = i4;
        this.len += 32;
        int[] iArr = this.value;
        if (i4 > iArr.length) {
            int[] iArr2 = new int[i4];
            System.arraycopy(iArr, 0, iArr2, 1, i4 - 1);
            this.value = iArr2;
            return;
        }
        for (int i10 = i4 - 1; i10 >= 1; i10--) {
            int[] iArr3 = this.value;
            iArr3[i10] = iArr3[i10 - 1];
        }
        this.value[0] = 0;
    }

    public GF2Polynomial shiftLeft() {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.len + 1, this.value);
        for (int i4 = gF2Polynomial.blocks - 1; i4 >= 1; i4--) {
            int[] iArr = gF2Polynomial.value;
            iArr[i4] = iArr[i4] << 1;
            iArr[i4] = iArr[i4] | (iArr[i4 - 1] >>> 31);
        }
        int[] iArr2 = gF2Polynomial.value;
        iArr2[0] = iArr2[0] << 1;
        return gF2Polynomial;
    }

    public GF2Polynomial shiftLeft(int i4) {
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.len + i4, this.value);
        if (i4 >= 32) {
            gF2Polynomial.doShiftBlocksLeft(i4 >>> 5);
        }
        int i10 = i4 & 31;
        if (i10 != 0) {
            for (int i11 = gF2Polynomial.blocks - 1; i11 >= 1; i11--) {
                int[] iArr = gF2Polynomial.value;
                iArr[i11] = iArr[i11] << i10;
                iArr[i11] = iArr[i11] | (iArr[i11 - 1] >>> (32 - i10));
            }
            int[] iArr2 = gF2Polynomial.value;
            iArr2[0] = iArr2[0] << i10;
        }
        return gF2Polynomial;
    }

    public void shiftLeftAddThis(GF2Polynomial gF2Polynomial, int i4) {
        int i10;
        if (i4 == 0) {
            addToThis(gF2Polynomial);
            return;
        }
        expandN(gF2Polynomial.len + i4);
        int i11 = i4 >>> 5;
        for (int i12 = gF2Polynomial.blocks - 1; i12 >= 0; i12--) {
            int i13 = i12 + i11;
            int i14 = i13 + 1;
            if (i14 < this.blocks && (i10 = i4 & 31) != 0) {
                int[] iArr = this.value;
                iArr[i14] = (gF2Polynomial.value[i12] >>> (32 - i10)) ^ iArr[i14];
            }
            int[] iArr2 = this.value;
            iArr2[i13] = iArr2[i13] ^ (gF2Polynomial.value[i12] << (i4 & 31));
        }
    }

    public void shiftLeftThis() {
        int i4 = this.len;
        int i10 = i4 & 31;
        this.len = i4 + 1;
        int i11 = this.blocks;
        if (i10 != 0) {
            for (int i12 = i11 - 1; i12 >= 1; i12--) {
                int[] iArr = this.value;
                iArr[i12] = iArr[i12] << 1;
                iArr[i12] = iArr[i12] | (iArr[i12 - 1] >>> 31);
            }
            int[] iArr2 = this.value;
            iArr2[0] = iArr2[0] << 1;
            return;
        }
        int i13 = i11 + 1;
        this.blocks = i13;
        int[] iArr3 = this.value;
        if (i13 > iArr3.length) {
            int[] iArr4 = new int[i13];
            System.arraycopy(iArr3, 0, iArr4, 0, iArr3.length);
            this.value = iArr4;
        }
        for (int i14 = this.blocks - 1; i14 >= 1; i14--) {
            int[] iArr5 = this.value;
            int i15 = i14 - 1;
            iArr5[i14] = iArr5[i14] | (iArr5[i15] >>> 31);
            iArr5[i15] = iArr5[i15] << 1;
        }
    }

    public GF2Polynomial shiftRight() {
        int i4;
        GF2Polynomial gF2Polynomial = new GF2Polynomial(this.len - 1);
        int i10 = 0;
        System.arraycopy(this.value, 0, gF2Polynomial.value, 0, gF2Polynomial.blocks);
        while (true) {
            i4 = gF2Polynomial.blocks;
            if (i10 > i4 - 2) {
                break;
            }
            int[] iArr = gF2Polynomial.value;
            iArr[i10] = iArr[i10] >>> 1;
            int i11 = i10 + 1;
            iArr[i10] = iArr[i10] | (iArr[i11] << 31);
            i10 = i11;
        }
        int[] iArr2 = gF2Polynomial.value;
        int i12 = i4 - 1;
        iArr2[i12] = iArr2[i12] >>> 1;
        if (i4 < this.blocks) {
            int i13 = i4 - 1;
            iArr2[i13] = (this.value[i4] << 31) | iArr2[i13];
        }
        return gF2Polynomial;
    }

    public void shiftRightThis() {
        int i4;
        int i10 = this.len - 1;
        this.len = i10;
        this.blocks = ((i10 - 1) >>> 5) + 1;
        int i11 = 0;
        while (true) {
            i4 = this.blocks;
            if (i11 > i4 - 2) {
                break;
            }
            int[] iArr = this.value;
            iArr[i11] = iArr[i11] >>> 1;
            int i12 = i11 + 1;
            iArr[i11] = iArr[i11] | (iArr[i12] << 31);
            i11 = i12;
        }
        int[] iArr2 = this.value;
        int i13 = i4 - 1;
        iArr2[i13] = iArr2[i13] >>> 1;
        if ((this.len & 31) == 0) {
            int i14 = i4 - 1;
            iArr2[i14] = (iArr2[i4] << 31) | iArr2[i14];
        }
    }

    public void squareThisBitwise() {
        if (isZero()) {
            return;
        }
        int i4 = this.blocks;
        int i10 = i4 << 1;
        int[] iArr = new int[i10];
        for (int i11 = i4 - 1; i11 >= 0; i11--) {
            int i12 = this.value[i11];
            int i13 = 1;
            for (int i14 = 0; i14 < 16; i14++) {
                if ((i12 & 1) != 0) {
                    int i15 = i11 << 1;
                    iArr[i15] = iArr[i15] | i13;
                }
                if ((65536 & i12) != 0) {
                    int i16 = (i11 << 1) + 1;
                    iArr[i16] = iArr[i16] | i13;
                }
                i13 <<= 2;
                i12 >>>= 1;
            }
        }
        this.value = iArr;
        this.blocks = i10;
        this.len = (this.len << 1) - 1;
    }

    public void squareThisPreCalc() {
        int i4;
        int i10;
        if (isZero()) {
            return;
        }
        int length = this.value.length;
        int i11 = this.blocks;
        if (length >= (i11 << 1)) {
            for (int i12 = i11 - 1; i12 >= 0; i12--) {
                int[] iArr = this.value;
                int i13 = i12 << 1;
                short[] sArr = squaringTable;
                iArr[i13 + 1] = sArr[(iArr[i12] & 16711680) >>> 16] | (sArr[(iArr[i12] & ViewCompat.MEASURED_STATE_MASK) >>> 24] << 16);
                iArr[i13] = sArr[iArr[i12] & 255] | (sArr[(iArr[i12] & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8] << 16);
            }
            i10 = this.blocks << 1;
        } else {
            int[] iArr2 = new int[i11 << 1];
            int i14 = 0;
            while (true) {
                i4 = this.blocks;
                if (i14 >= i4) {
                    break;
                }
                int i15 = i14 << 1;
                short[] sArr2 = squaringTable;
                int[] iArr3 = this.value;
                iArr2[i15] = sArr2[iArr3[i14] & 255] | (sArr2[(iArr3[i14] & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8] << 16);
                iArr2[i15 + 1] = (sArr2[(iArr3[i14] & ViewCompat.MEASURED_STATE_MASK) >>> 24] << 16) | sArr2[(iArr3[i14] & 16711680) >>> 16];
                i14++;
            }
            this.value = iArr2;
            i10 = i4 << 1;
        }
        this.blocks = i10;
        this.len = (this.len << 1) - 1;
    }

    public GF2Polynomial subtract(GF2Polynomial gF2Polynomial) {
        return xor(gF2Polynomial);
    }

    public void subtractFromThis(GF2Polynomial gF2Polynomial) {
        expandN(gF2Polynomial.len);
        xorThisBy(gF2Polynomial);
    }

    public boolean testBit(int i4) {
        if (i4 >= 0) {
            if (i4 > this.len - 1) {
                return false;
            }
            return (bitMask[i4 & 31] & this.value[i4 >>> 5]) != 0;
        }
        throw new RuntimeException();
    }

    public byte[] toByteArray() {
        int i4 = ((this.len - 1) >> 3) + 1;
        int i10 = i4 & 3;
        byte[] bArr = new byte[i4];
        for (int i11 = 0; i11 < (i4 >> 2); i11++) {
            int i12 = (i4 - (i11 << 2)) - 1;
            int[] iArr = this.value;
            bArr[i12] = (byte) (255 & iArr[i11]);
            bArr[i12 - 1] = (byte) ((iArr[i11] & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8);
            bArr[i12 - 2] = (byte) ((iArr[i11] & 16711680) >>> 16);
            bArr[i12 - 3] = (byte) ((iArr[i11] & ViewCompat.MEASURED_STATE_MASK) >>> 24);
        }
        for (int i13 = 0; i13 < i10; i13++) {
            int i14 = ((i10 - i13) - 1) << 3;
            bArr[i13] = (byte) ((this.value[this.blocks - 1] & (255 << i14)) >>> i14);
        }
        return bArr;
    }

    public BigInteger toFlexiBigInt() {
        return (this.len == 0 || isZero()) ? new BigInteger(0, new byte[0]) : new BigInteger(1, toByteArray());
    }

    public int[] toIntegerArray() {
        int i4 = this.blocks;
        int[] iArr = new int[i4];
        System.arraycopy(this.value, 0, iArr, 0, i4);
        return iArr;
    }

    public String toString(int i4) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        String[] strArr = {"0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"};
        String str = new String();
        if (i4 == 16) {
            for (int i10 = this.blocks - 1; i10 >= 0; i10--) {
                str = ((((((((str + cArr[(this.value[i10] >>> 28) & 15]) + cArr[(this.value[i10] >>> 24) & 15]) + cArr[(this.value[i10] >>> 20) & 15]) + cArr[(this.value[i10] >>> 16) & 15]) + cArr[(this.value[i10] >>> 12) & 15]) + cArr[(this.value[i10] >>> 8) & 15]) + cArr[(this.value[i10] >>> 4) & 15]) + cArr[this.value[i10] & 15]) + " ";
            }
        } else {
            for (int i11 = this.blocks - 1; i11 >= 0; i11--) {
                str = ((((((((str + strArr[(this.value[i11] >>> 28) & 15]) + strArr[(this.value[i11] >>> 24) & 15]) + strArr[(this.value[i11] >>> 20) & 15]) + strArr[(this.value[i11] >>> 16) & 15]) + strArr[(this.value[i11] >>> 12) & 15]) + strArr[(this.value[i11] >>> 8) & 15]) + strArr[(this.value[i11] >>> 4) & 15]) + strArr[this.value[i11] & 15]) + " ";
            }
        }
        return str;
    }

    public boolean vectorMult(GF2Polynomial gF2Polynomial) throws RuntimeException {
        if (this.len == gF2Polynomial.len) {
            boolean z9 = false;
            for (int i4 = 0; i4 < this.blocks; i4++) {
                int i10 = this.value[i4] & gF2Polynomial.value[i4];
                boolean[] zArr = parity;
                z9 = (((z9 ^ zArr[i10 & 255]) ^ zArr[(i10 >>> 8) & 255]) ^ zArr[(i10 >>> 16) & 255]) ^ zArr[(i10 >>> 24) & 255];
            }
            return z9;
        }
        throw new RuntimeException();
    }

    public GF2Polynomial xor(GF2Polynomial gF2Polynomial) {
        GF2Polynomial gF2Polynomial2;
        int min = Math.min(this.blocks, gF2Polynomial.blocks);
        int i4 = 0;
        if (this.len >= gF2Polynomial.len) {
            gF2Polynomial2 = new GF2Polynomial(this);
            while (i4 < min) {
                int[] iArr = gF2Polynomial2.value;
                iArr[i4] = iArr[i4] ^ gF2Polynomial.value[i4];
                i4++;
            }
        } else {
            gF2Polynomial2 = new GF2Polynomial(gF2Polynomial);
            while (i4 < min) {
                int[] iArr2 = gF2Polynomial2.value;
                iArr2[i4] = iArr2[i4] ^ this.value[i4];
                i4++;
            }
        }
        gF2Polynomial2.zeroUnusedBits();
        return gF2Polynomial2;
    }

    public void xorBit(int i4) throws RuntimeException {
        if (i4 < 0 || i4 > this.len - 1) {
            throw new RuntimeException();
        }
        int[] iArr = this.value;
        int i10 = i4 >>> 5;
        iArr[i10] = bitMask[i4 & 31] ^ iArr[i10];
    }

    public void xorThisBy(GF2Polynomial gF2Polynomial) {
        for (int i4 = 0; i4 < Math.min(this.blocks, gF2Polynomial.blocks); i4++) {
            int[] iArr = this.value;
            iArr[i4] = iArr[i4] ^ gF2Polynomial.value[i4];
        }
        zeroUnusedBits();
    }
}
