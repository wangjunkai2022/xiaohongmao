package com.google.common.collect;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Hashing.java */
@h3.b
/* loaded from: classes2.dex */
final class h2 {

    /* renamed from: a  reason: collision with root package name */
    private static final long f33545a = -862048943;

    /* renamed from: b  reason: collision with root package name */
    private static final long f33546b = 461845907;

    /* renamed from: c  reason: collision with root package name */
    private static final int f33547c = 1073741824;

    private h2() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i4, double d4) {
        int max = Math.max(i4, 2);
        int highestOneBit = Integer.highestOneBit(max);
        if (max > ((int) (d4 * highestOneBit))) {
            int i10 = highestOneBit << 1;
            if (i10 > 0) {
                return i10;
            }
            return 1073741824;
        }
        return highestOneBit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(int i4, int i10, double d4) {
        return ((double) i4) > d4 * ((double) i10) && i10 < 1073741824;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(int i4) {
        return (int) (Integer.rotateLeft((int) (i4 * f33545a), 15) * f33546b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(@NullableDecl Object obj) {
        return c(obj == null ? 0 : obj.hashCode());
    }
}
