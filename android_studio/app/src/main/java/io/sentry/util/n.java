package io.sentry.util;

import m8.a;

/* compiled from: Platform.java */
@a.c
/* loaded from: classes4.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f84071a;

    /* renamed from: b  reason: collision with root package name */
    static boolean f84072b;

    static {
        try {
            f84071a = "The Android Project".equals(System.getProperty("java.vendor"));
        } catch (Throwable unused) {
            f84071a = false;
        }
        try {
            String property = System.getProperty("java.specification.version");
            if (property != null) {
                f84072b = Double.valueOf(property).doubleValue() >= 9.0d;
            } else {
                f84072b = false;
            }
        } catch (Throwable unused2) {
            f84072b = false;
        }
    }

    public static boolean a() {
        return f84071a;
    }

    public static boolean b() {
        return f84072b;
    }

    public static boolean c() {
        return !f84071a;
    }
}
