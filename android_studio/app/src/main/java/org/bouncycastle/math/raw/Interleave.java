package org.bouncycastle.math.raw;

import androidx.core.view.MotionEventCompat;

/* loaded from: classes5.dex */
public class Interleave {
    private static final long M32 = 1431655765;
    private static final long M64 = 6148914691236517205L;
    private static final long M64R = -6148914691236517206L;

    public static int expand16to32(int i4) {
        int i10 = i4 & 65535;
        int i11 = (i10 | (i10 << 8)) & 16711935;
        int i12 = (i11 | (i11 << 4)) & 252645135;
        int i13 = (i12 | (i12 << 2)) & 858993459;
        return (i13 | (i13 << 1)) & 1431655765;
    }

    public static long expand32to64(int i4) {
        int bitPermuteStep = Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(i4, (int) MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8), 15728880, 4), 202116108, 2), 572662306, 1);
        return (((bitPermuteStep >>> 1) & M32) << 32) | (M32 & bitPermuteStep);
    }

    public static void expand64To128(long j4, long[] jArr, int i4) {
        long bitPermuteStep = Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j4, 4294901760L, 16), 280375465148160L, 8), 67555025218437360L, 4), 868082074056920076L, 2), 2459565876494606882L, 1);
        jArr[i4] = bitPermuteStep & M64;
        jArr[i4 + 1] = (bitPermuteStep >>> 1) & M64;
    }

    public static void expand64To128(long[] jArr, int i4, int i10, long[] jArr2, int i11) {
        for (int i12 = 0; i12 < i10; i12++) {
            expand64To128(jArr[i4 + i12], jArr2, i11);
            i11 += 2;
        }
    }

    public static void expand64To128Rev(long j4, long[] jArr, int i4) {
        long bitPermuteStep = Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j4, 4294901760L, 16), 280375465148160L, 8), 67555025218437360L, 4), 868082074056920076L, 2), 2459565876494606882L, 1);
        jArr[i4] = bitPermuteStep & M64R;
        jArr[i4 + 1] = (bitPermuteStep << 1) & M64R;
    }

    public static int expand8to16(int i4) {
        int i10 = i4 & 255;
        int i11 = (i10 | (i10 << 4)) & 3855;
        int i12 = (i11 | (i11 << 2)) & 13107;
        return (i12 | (i12 << 1)) & 21845;
    }

    public static int shuffle(int i4) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(i4, (int) MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8), 15728880, 4), 202116108, 2), 572662306, 1);
    }

    public static long shuffle(long j4) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j4, 4294901760L, 16), 280375465148160L, 8), 67555025218437360L, 4), 868082074056920076L, 2), 2459565876494606882L, 1);
    }

    public static int shuffle2(int i4) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(i4, 11141290, 7), 52428, 14), 15728880, 4), (int) MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8);
    }

    public static long shuffle2(long j4) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j4, 4278255360L, 24), 57421771435671756L, 6), 264913582878960L, 12), 723401728380766730L, 3);
    }

    public static long shuffle3(long j4) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j4, 47851476196393130L, 7), 225176545447116L, 14), 4042322160L, 28);
    }

    public static int unshuffle(int i4) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(i4, 572662306, 1), 202116108, 2), 15728880, 4), (int) MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8);
    }

    public static long unshuffle(long j4) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j4, 2459565876494606882L, 1), 868082074056920076L, 2), 67555025218437360L, 4), 280375465148160L, 8), 4294901760L, 16);
    }

    public static int unshuffle2(int i4) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(i4, (int) MotionEventCompat.ACTION_POINTER_INDEX_MASK, 8), 15728880, 4), 52428, 14), 11141290, 7);
    }

    public static long unshuffle2(long j4) {
        return Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(Bits.bitPermuteStep(j4, 723401728380766730L, 3), 264913582878960L, 12), 57421771435671756L, 6), 4278255360L, 24);
    }

    public static long unshuffle3(long j4) {
        return shuffle3(j4);
    }
}
