package org.jsoup.helper;

import r7.h;

/* compiled from: Validate.java */
/* loaded from: classes5.dex */
public final class d {
    private d() {
    }

    public static void a(String str) {
        throw new IllegalArgumentException(str);
    }

    public static void b(boolean z9) {
        if (z9) {
            throw new IllegalArgumentException("Must be false");
        }
    }

    public static void c(boolean z9, String str) {
        if (z9) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void d(boolean z9) {
        if (!z9) {
            throw new IllegalArgumentException("Must be true");
        }
    }

    public static void e(boolean z9, String str) {
        if (!z9) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void f(Object[] objArr) {
        g(objArr, "Array must not contain any null objects");
    }

    public static void g(Object[] objArr, String str) {
        for (Object obj : objArr) {
            if (obj == null) {
                throw new IllegalArgumentException(str);
            }
        }
    }

    public static void h(@h String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("String must not be empty");
        }
    }

    public static void i(@h String str, String str2) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void j(@h Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Object must not be null");
        }
    }

    public static void k(@h Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void l(String str) {
        throw new IllegalStateException(str);
    }
}
