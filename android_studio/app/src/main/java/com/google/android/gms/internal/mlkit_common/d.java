package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class d {
    public static int a(int i4, int i10, String str) {
        String a10;
        if (i4 < 0 || i4 >= i10) {
            if (i4 < 0) {
                a10 = e.a("%s (%s) must not be negative", "index", Integer.valueOf(i4));
            } else if (i10 < 0) {
                throw new IllegalArgumentException("negative size: " + i10);
            } else {
                a10 = e.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i4), Integer.valueOf(i10));
            }
            throw new IndexOutOfBoundsException(a10);
        }
        return i4;
    }

    public static int b(int i4, int i10, String str) {
        if (i4 < 0 || i4 > i10) {
            throw new IndexOutOfBoundsException(e(i4, i10, "index"));
        }
        return i4;
    }

    public static void c(int i4, int i10, int i11) {
        String e4;
        if (i4 < 0 || i10 < i4 || i10 > i11) {
            if (i4 >= 0 && i4 <= i11) {
                e4 = (i10 < 0 || i10 > i11) ? e(i10, i11, "end index") : e.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i4));
            } else {
                e4 = e(i4, i11, "start index");
            }
            throw new IndexOutOfBoundsException(e4);
        }
    }

    public static void d(boolean z9, @r7.a Object obj) {
        if (!z9) {
            throw new IllegalStateException("A SourcePolicy can only set internal() or external() once.");
        }
    }

    private static String e(int i4, int i10, String str) {
        if (i4 < 0) {
            return e.a("%s (%s) must not be negative", str, Integer.valueOf(i4));
        }
        if (i10 >= 0) {
            return e.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i4), Integer.valueOf(i10));
        }
        throw new IllegalArgumentException("negative size: " + i10);
    }
}
