package com.googlecode.mp4parser.util;

/* compiled from: Math.java */
/* loaded from: classes2.dex */
public class k {
    public static int a(int i4, int i10) {
        while (true) {
            int i11 = i10;
            int i12 = i4;
            i4 = i11;
            if (i4 <= 0) {
                return i12;
            }
            i10 = i12 % i4;
        }
    }

    public static long b(long j4, long j10) {
        while (true) {
            long j11 = j4;
            j4 = j10;
            if (j4 <= 0) {
                return j11;
            }
            j10 = j11 % j4;
        }
    }

    public static int c(int i4, int i10) {
        return i4 * (i10 / a(i4, i10));
    }

    public static long d(long j4, long j10) {
        return j4 * (j10 / b(j4, j10));
    }
}
