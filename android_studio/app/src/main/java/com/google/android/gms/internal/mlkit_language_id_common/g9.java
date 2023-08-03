package com.google.android.gms.internal.mlkit_language_id_common;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class g9 {
    public static int a(int i4, int i10, String str) {
        String a10;
        if (i4 < 0 || i4 >= i10) {
            if (i4 < 0) {
                a10 = ha.a("%s (%s) must not be negative", "index", Integer.valueOf(i4));
            } else if (i10 < 0) {
                throw new IllegalArgumentException("negative size: " + i10);
            } else {
                a10 = ha.a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i4), Integer.valueOf(i10));
            }
            throw new IndexOutOfBoundsException(a10);
        }
        return i4;
    }

    public static int b(int i4, int i10, String str) {
        if (i4 < 0 || i4 > i10) {
            throw new IndexOutOfBoundsException(d(i4, i10, "index"));
        }
        return i4;
    }

    public static void c(int i4, int i10, int i11) {
        String d4;
        if (i4 < 0 || i10 < i4 || i10 > i11) {
            if (i4 >= 0 && i4 <= i11) {
                d4 = (i10 < 0 || i10 > i11) ? d(i10, i11, "end index") : ha.a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i10), Integer.valueOf(i4));
            } else {
                d4 = d(i4, i11, "start index");
            }
            throw new IndexOutOfBoundsException(d4);
        }
    }

    private static String d(int i4, int i10, String str) {
        if (i4 < 0) {
            return ha.a("%s (%s) must not be negative", str, Integer.valueOf(i4));
        }
        if (i10 >= 0) {
            return ha.a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i4), Integer.valueOf(i10));
        }
        throw new IllegalArgumentException("negative size: " + i10);
    }
}
