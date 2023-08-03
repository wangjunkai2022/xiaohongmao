package com.fasterxml.jackson.core.util;

import java.lang.ref.SoftReference;

/* compiled from: BufferRecyclers.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public static final String f14271a = "com.fasterxml.jackson.core.util.BufferRecyclers.trackReusableBuffers";

    /* renamed from: b  reason: collision with root package name */
    private static final k f14272b;

    /* renamed from: c  reason: collision with root package name */
    protected static final ThreadLocal<SoftReference<a>> f14273c;

    static {
        boolean z9;
        try {
            z9 = "true".equals(System.getProperty(f14271a));
        } catch (SecurityException unused) {
            z9 = false;
        }
        f14272b = z9 ? k.a() : null;
        f14273c = new ThreadLocal<>();
    }

    @Deprecated
    public static byte[] a(String str) {
        return com.fasterxml.jackson.core.io.e.k().j(str);
    }

    public static a b() {
        SoftReference<a> softReference;
        ThreadLocal<SoftReference<a>> threadLocal = f14273c;
        SoftReference<a> softReference2 = threadLocal.get();
        a aVar = softReference2 == null ? null : softReference2.get();
        if (aVar == null) {
            aVar = new a();
            k kVar = f14272b;
            if (kVar != null) {
                softReference = kVar.d(aVar);
            } else {
                softReference = new SoftReference<>(aVar);
            }
            threadLocal.set(softReference);
        }
        return aVar;
    }

    @Deprecated
    public static com.fasterxml.jackson.core.io.e c() {
        return com.fasterxml.jackson.core.io.e.k();
    }

    @Deprecated
    public static void d(CharSequence charSequence, StringBuilder sb) {
        com.fasterxml.jackson.core.io.e.k().l(charSequence, sb);
    }

    @Deprecated
    public static char[] e(String str) {
        return com.fasterxml.jackson.core.io.e.k().n(str);
    }

    @Deprecated
    public static byte[] f(String str) {
        return com.fasterxml.jackson.core.io.e.k().o(str);
    }

    public static int g() {
        k kVar = f14272b;
        if (kVar != null) {
            return kVar.b();
        }
        return -1;
    }
}
