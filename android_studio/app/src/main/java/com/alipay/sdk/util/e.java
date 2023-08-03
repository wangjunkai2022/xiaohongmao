package com.alipay.sdk.util;

import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f6952a = false;

    /* renamed from: b  reason: collision with root package name */
    public static final String f6953b = "mspstd";

    private static String a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    private static void b() {
    }

    private static void c(Object obj) {
        boolean z9 = obj instanceof Exception;
    }

    private static void d(String str) {
        Log.d(f6953b, str);
    }

    private static void e() {
    }

    private static void f() {
    }

    private static void g() {
    }

    private static void h() {
    }

    private static void i() {
    }

    private static void j() {
    }
}
