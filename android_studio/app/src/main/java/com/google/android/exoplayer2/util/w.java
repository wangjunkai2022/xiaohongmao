package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;

/* compiled from: Log.java */
/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public static final int f27724a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f27725b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f27726c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f27727d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f27728e = Integer.MAX_VALUE;

    /* renamed from: f  reason: collision with root package name */
    private static int f27729f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f27730g = true;

    private w() {
    }

    @Pure
    private static String a(String str, @Nullable Throwable th) {
        String h4 = h(th);
        if (TextUtils.isEmpty(h4)) {
            return str;
        }
        String valueOf = String.valueOf(str);
        String replace = h4.replace("\n", "\n  ");
        StringBuilder sb = new StringBuilder(valueOf.length() + 4 + String.valueOf(replace).length());
        sb.append(valueOf);
        sb.append("\n  ");
        sb.append(replace);
        sb.append('\n');
        return sb.toString();
    }

    @Pure
    public static void b(String str, String str2) {
        if (f27729f == 0) {
            Log.d(str, str2);
        }
    }

    @Pure
    public static void c(String str, String str2, @Nullable Throwable th) {
        b(str, a(str2, th));
    }

    @Pure
    public static void d(String str, String str2) {
        if (f27729f <= 3) {
            Log.e(str, str2);
        }
    }

    @Pure
    public static void e(String str, String str2, @Nullable Throwable th) {
        d(str, a(str2, th));
    }

    @Pure
    public static int f() {
        return f27729f;
    }

    @Nullable
    @Pure
    public static String h(@Nullable Throwable th) {
        if (th == null) {
            return null;
        }
        if (k(th)) {
            return "UnknownHostException (no network)";
        }
        if (!f27730g) {
            return th.getMessage();
        }
        return Log.getStackTraceString(th).trim().replace("\t", "    ");
    }

    @Pure
    public static void i(String str, String str2) {
        if (f27729f <= 1) {
            Log.i(str, str2);
        }
    }

    @Pure
    public static void j(String str, String str2, @Nullable Throwable th) {
        i(str, a(str2, th));
    }

    @Pure
    private static boolean k(@Nullable Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    public static void l(int i4) {
        f27729f = i4;
    }

    public static void m(boolean z9) {
        f27730g = z9;
    }

    @Pure
    public static void n(String str, String str2) {
        if (f27729f <= 2) {
            Log.w(str, str2);
        }
    }

    @Pure
    public static void o(String str, String str2, @Nullable Throwable th) {
        n(str, a(str2, th));
    }

    @Pure
    public boolean g() {
        return f27730g;
    }
}
