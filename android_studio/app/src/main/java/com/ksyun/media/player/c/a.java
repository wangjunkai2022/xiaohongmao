package com.ksyun.media.player.c;

import android.util.Log;
import java.util.Locale;

/* compiled from: DebugLog.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f45412a = true;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f45413b = true;

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f45414c = true;

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f45415d = true;

    /* renamed from: e  reason: collision with root package name */
    public static final boolean f45416e = true;

    public static void a(String str, String str2) {
        Log.e(str, str2);
    }

    public static void b(String str, String str2) {
        Log.i(str, str2);
    }

    public static void c(String str, String str2) {
        Log.w(str, str2);
    }

    public static void d(String str, String str2) {
        Log.d(str, str2);
    }

    public static void e(String str, String str2) {
        Log.v(str, str2);
    }

    public static void a(String str, String str2, Throwable th) {
        Log.e(str, str2, th);
    }

    public static void b(String str, String str2, Throwable th) {
        Log.i(str, str2, th);
    }

    public static void c(String str, String str2, Throwable th) {
        Log.w(str, str2, th);
    }

    public static void d(String str, String str2, Throwable th) {
        Log.d(str, str2, th);
    }

    public static void e(String str, String str2, Throwable th) {
        Log.v(str, str2, th);
    }

    public static void a(String str, String str2, Object... objArr) {
        Log.e(str, String.format(Locale.US, str2, objArr));
    }

    public static void b(String str, String str2, Object... objArr) {
        Log.i(str, String.format(Locale.US, str2, objArr));
    }

    public static void c(String str, String str2, Object... objArr) {
        Log.w(str, String.format(Locale.US, str2, objArr));
    }

    public static void d(String str, String str2, Object... objArr) {
        Log.d(str, String.format(Locale.US, str2, objArr));
    }

    public static void e(String str, String str2, Object... objArr) {
        Log.v(str, String.format(Locale.US, str2, objArr));
    }

    public static void a(Throwable th) {
        th.printStackTrace();
    }

    public static void b(Throwable th) {
        Throwable cause = th.getCause();
        if (cause != null) {
            th = cause;
        }
        a(th);
    }
}
