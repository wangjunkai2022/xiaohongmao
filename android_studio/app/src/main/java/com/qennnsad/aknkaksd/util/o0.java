package com.qennnsad.aknkaksd.util;

import androidx.annotation.NonNull;
import okhttp3.logging.HttpLoggingInterceptor;
import timber.log.Timber;

/* compiled from: L.java */
/* loaded from: classes3.dex */
public class o0 implements HttpLoggingInterceptor.Logger {

    /* renamed from: a  reason: collision with root package name */
    public static final o0 f54873a = new o0();

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f54874b = false;

    public static void a(@NonNull String str, @NonNull String str2) {
    }

    public static void b(@NonNull String str, @NonNull String str2, Object... objArr) {
        a(str, String.format(str2, objArr));
    }

    public static void c(@NonNull String str, @NonNull String str2) {
    }

    public static void d(@NonNull String str, @NonNull String str2, Throwable th) {
        Timber.t(str).f(th, str2, new Object[0]);
    }

    public static void e(@NonNull String str, @NonNull String str2, Object... objArr) {
        c(str, String.format(str2, objArr));
    }

    public static void f(@NonNull String str, Throwable th) {
    }

    public static void g(@NonNull String str, @NonNull String str2) {
    }

    public static void h(@NonNull String str, @NonNull String str2, Object... objArr) {
        g(str, String.format(str2, objArr));
    }

    public static void i(String str, String str2) {
        int i4 = (str2.length() > 2048 ? 1 : (str2.length() == 2048 ? 0 : -1));
        if (i4 >= 0 && i4 != 0) {
            while (str2.length() > 2048) {
                String substring = str2.substring(0, 2048);
                str2 = str2.replace(substring, "");
                Timber.t(str).d(substring, new Object[0]);
            }
            Timber.c t9 = Timber.t("hehehe");
            t9.d(str + "--------" + str2, new Object[0]);
            return;
        }
        Timber.t(str).d(str2, new Object[0]);
    }

    public static void j(@NonNull String str, @NonNull String str2) {
        l(true, str, str2);
    }

    public static void k(@NonNull String str, @NonNull String str2, Object... objArr) {
        j(str, String.format(str2, objArr));
    }

    public static void l(boolean z9, @NonNull String str, @NonNull String str2) {
    }

    public static void m(boolean z9, @NonNull String str, @NonNull String str2, Object... objArr) {
        l(z9, str, String.format(str2, objArr));
    }

    public static void n(@NonNull String str, @NonNull String str2) {
    }

    public static void o(@NonNull String str, @NonNull String str2, Object... objArr) {
        n(str, String.format(str2, objArr));
    }

    public static void p(@NonNull String str, @NonNull String str2) {
        Timber.t(str).A(str2, new Object[0]);
    }

    @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
    public void log(@NonNull String str) {
        a("OkHttp", str);
    }
}
