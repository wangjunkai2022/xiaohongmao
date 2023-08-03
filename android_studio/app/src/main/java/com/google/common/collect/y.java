package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* compiled from: CollectPreconditions.java */
@h3.b
/* loaded from: classes2.dex */
final class y {
    y() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("null key in entry: null=" + obj2);
        } else if (obj2 != null) {
        } else {
            throw new NullPointerException("null value in entry: " + obj + "=null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static int b(int i4, String str) {
        if (i4 >= 0) {
            return i4;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public static long c(long j4, String str) {
        if (j4 >= 0) {
            return j4;
        }
        throw new IllegalArgumentException(str + " cannot be negative but was: " + j4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(int i4, String str) {
        if (i4 > 0) {
            return;
        }
        throw new IllegalArgumentException(str + " must be positive but was: " + i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(boolean z9) {
        com.google.common.base.a0.h0(z9, "no calls to next() since the last call to remove()");
    }
}
