package org.bouncycastle.math.raw;

/* loaded from: classes5.dex */
public abstract class Bits {
    public static int bitPermuteStep(int i4, int i10, int i11) {
        int i12 = i10 & ((i4 >>> i11) ^ i4);
        return i4 ^ (i12 ^ (i12 << i11));
    }

    public static long bitPermuteStep(long j4, long j10, int i4) {
        long j11 = j10 & ((j4 >>> i4) ^ j4);
        return j4 ^ (j11 ^ (j11 << i4));
    }

    public static int bitPermuteStepSimple(int i4, int i10, int i11) {
        return ((i4 >>> i11) & i10) | ((i4 & i10) << i11);
    }

    public static long bitPermuteStepSimple(long j4, long j10, int i4) {
        return ((j4 >>> i4) & j10) | ((j4 & j10) << i4);
    }
}
