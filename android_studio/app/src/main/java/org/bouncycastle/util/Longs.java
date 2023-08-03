package org.bouncycastle.util;

/* loaded from: classes5.dex */
public class Longs {
    public static final int BYTES = 8;
    public static final int SIZE = 64;

    public static int numberOfLeadingZeros(long j4) {
        return Long.numberOfLeadingZeros(j4);
    }

    public static int numberOfTrailingZeros(long j4) {
        return Long.numberOfTrailingZeros(j4);
    }

    public static long reverse(long j4) {
        return Long.reverse(j4);
    }

    public static long reverseBytes(long j4) {
        return Long.reverseBytes(j4);
    }

    public static long rotateLeft(long j4, int i4) {
        return Long.rotateLeft(j4, i4);
    }

    public static long rotateRight(long j4, int i4) {
        return Long.rotateRight(j4, i4);
    }

    public static Long valueOf(long j4) {
        return Long.valueOf(j4);
    }
}
