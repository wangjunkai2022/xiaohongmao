package com.ta.utdid2.android.utils;

import java.lang.reflect.Method;

/* compiled from: DebugUtils.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f55836a = "alidebug";

    /* renamed from: b  reason: collision with root package name */
    public static boolean f55837b;

    /* renamed from: c  reason: collision with root package name */
    private static Class<?> f55838c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f55839d;

    /* renamed from: e  reason: collision with root package name */
    private static Method f55840e;

    static {
        f55837b = b(f55836a, 0) == 1;
        f55838c = null;
        f55839d = null;
        f55840e = null;
    }

    public static String a(String str) {
        c();
        try {
            return (String) f55839d.invoke(f55838c, str);
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static int b(String str, int i4) {
        c();
        try {
            return ((Integer) f55840e.invoke(f55838c, str, Integer.valueOf(i4))).intValue();
        } catch (Exception e4) {
            e4.printStackTrace();
            return i4;
        }
    }

    private static void c() {
        try {
            if (f55838c == null) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                f55838c = cls;
                f55839d = cls.getDeclaredMethod("get", String.class);
                f55840e = f55838c.getDeclaredMethod("getInt", String.class, Integer.TYPE);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }
}
