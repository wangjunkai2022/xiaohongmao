package com.facebook.common.internal;

import java.util.Objects;

/* compiled from: Preconditions.java */
/* loaded from: classes.dex */
public final class j {
    private j() {
    }

    private static String a(int index, int size, @r7.h String desc) {
        if (index < 0) {
            return r("%s (%s) must not be negative", desc, Integer.valueOf(index));
        }
        if (size >= 0) {
            return r("%s (%s) must be less than size (%s)", desc, Integer.valueOf(index), Integer.valueOf(size));
        }
        throw new IllegalArgumentException("negative size: " + size);
    }

    private static String b(int index, int size, @r7.h String desc) {
        if (index < 0) {
            return r("%s (%s) must not be negative", desc, Integer.valueOf(index));
        }
        if (size >= 0) {
            return r("%s (%s) must not be greater than size (%s)", desc, Integer.valueOf(index), Integer.valueOf(size));
        }
        throw new IllegalArgumentException("negative size: " + size);
    }

    private static String c(int start, int end, int size) {
        if (start < 0 || start > size) {
            return b(start, size, "start index");
        }
        return (end < 0 || end > size) ? b(end, size, "end index") : r("end index (%s) must not be less than start index (%s)", Integer.valueOf(end), Integer.valueOf(start));
    }

    public static void d(@r7.h Boolean expression) {
        if (expression != null && !expression.booleanValue()) {
            throw new IllegalArgumentException();
        }
    }

    public static void e(boolean expression, @r7.h Object errorMessage) {
        if (!expression) {
            throw new IllegalArgumentException(String.valueOf(errorMessage));
        }
    }

    public static void f(boolean expression, @r7.h String errorMessageTemplate, Object... errorMessageArgs) {
        if (!expression) {
            throw new IllegalArgumentException(r(errorMessageTemplate, errorMessageArgs));
        }
    }

    public static int g(int index, int size) {
        return h(index, size, "index");
    }

    public static int h(int index, int size, @r7.h String desc) {
        if (index < 0 || index >= size) {
            throw new IndexOutOfBoundsException(a(index, size, desc));
        }
        return index;
    }

    public static <T> T i(@r7.h T reference) {
        Objects.requireNonNull(reference);
        return reference;
    }

    public static <T> T j(@r7.h T reference, @r7.h Object errorMessage) {
        if (reference != null) {
            return reference;
        }
        throw new NullPointerException(String.valueOf(errorMessage));
    }

    public static <T> T k(@r7.h T reference, @r7.h String errorMessageTemplate, Object... errorMessageArgs) {
        if (reference != null) {
            return reference;
        }
        throw new NullPointerException(r(errorMessageTemplate, errorMessageArgs));
    }

    public static int l(int index, int size) {
        return m(index, size, "index");
    }

    public static int m(int index, int size, @r7.h String desc) {
        if (index < 0 || index > size) {
            throw new IndexOutOfBoundsException(b(index, size, desc));
        }
        return index;
    }

    public static void n(int start, int end, int size) {
        if (start < 0 || end < start || end > size) {
            throw new IndexOutOfBoundsException(c(start, end, size));
        }
    }

    public static void o(boolean expression) {
        if (!expression) {
            throw new IllegalStateException();
        }
    }

    public static void p(boolean expression, @r7.h Object errorMessage) {
        if (!expression) {
            throw new IllegalStateException(String.valueOf(errorMessage));
        }
    }

    public static void q(boolean expression, @r7.h String errorMessageTemplate, Object... errorMessageArgs) {
        if (!expression) {
            throw new IllegalStateException(r(errorMessageTemplate, errorMessageArgs));
        }
    }

    static String r(@r7.h String template, Object... args) {
        int indexOf;
        String valueOf = String.valueOf(template);
        StringBuilder sb = new StringBuilder(valueOf.length() + (args.length * 16));
        int i4 = 0;
        int i10 = 0;
        while (i4 < args.length && (indexOf = valueOf.indexOf("%s", i10)) != -1) {
            sb.append(valueOf.substring(i10, indexOf));
            sb.append(args[i4]);
            i10 = indexOf + 2;
            i4++;
        }
        sb.append(valueOf.substring(i10));
        if (i4 < args.length) {
            sb.append(" [");
            sb.append(args[i4]);
            for (int i11 = i4 + 1; i11 < args.length; i11++) {
                sb.append(", ");
                sb.append(args[i11]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
