package com.google.android.gms.internal.mlkit_common;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class ac {

    /* renamed from: a  reason: collision with root package name */
    private static final Method f29434a;

    /* renamed from: b  reason: collision with root package name */
    private static final Method f29435b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f29436c;

    /* renamed from: d  reason: collision with root package name */
    private static final Field f29437d;

    /* renamed from: e  reason: collision with root package name */
    private static final Field f29438e;

    /* renamed from: f  reason: collision with root package name */
    private static final Field f29439f;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f29440g;

    /* renamed from: h  reason: collision with root package name */
    private static final Throwable f29441h;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Throwable th;
        Object obj;
        Field field;
        Method method;
        Method method2;
        Method method3;
        Field field2;
        Field field3;
        Class<?> cls;
        Class<?> cls2;
        Class<?> cls3;
        try {
            cls = Class.forName("libcore.io.Libcore");
            cls2 = Class.forName("libcore.io.StructStat");
            Class<?> cls4 = Class.forName("libcore.io.OsConstants");
            cls3 = Class.forName("libcore.io.ForwardingOs");
            method = cls4.getDeclaredMethod("S_ISLNK", Integer.TYPE);
        } catch (Throwable th2) {
            th = th2;
            obj = null;
            field = null;
            method = null;
            method2 = null;
        }
        try {
            method.setAccessible(true);
            method3 = cls3.getDeclaredMethod("lstat", String.class);
            try {
                method2 = cls3.getDeclaredMethod("fstat", FileDescriptor.class);
                try {
                    Field declaredField = cls.getDeclaredField(io.sentry.protocol.h.f83693h);
                    declaredField.setAccessible(true);
                    obj = declaredField.get(cls);
                } catch (Throwable th3) {
                    th = th3;
                    obj = null;
                    field = null;
                }
                try {
                    field2 = cls2.getField("st_dev");
                    try {
                        field3 = cls2.getField("st_ino");
                        try {
                            field = cls2.getField("st_mode");
                        } catch (Throwable th4) {
                            th = th4;
                            field = null;
                        }
                        try {
                            field2.setAccessible(true);
                            field3.setAccessible(true);
                            field.setAccessible(true);
                        } catch (Throwable th5) {
                            th = th5;
                            try {
                                Log.d("StructStatHelper", "Reflection failed", th);
                                f29434a = method;
                                f29435b = method3;
                                f29436c = method2;
                                f29437d = field2;
                                f29438e = field3;
                                f29439f = field;
                                f29440g = obj;
                                f29441h = th;
                            } finally {
                                f29434a = method;
                                f29435b = method3;
                                f29436c = method2;
                                f29437d = field2;
                                f29438e = field3;
                                f29439f = field;
                                f29440g = obj;
                                f29441h = null;
                            }
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        field = null;
                        field3 = null;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    field = null;
                    field2 = field;
                    field3 = field2;
                    Log.d("StructStatHelper", "Reflection failed", th);
                    f29434a = method;
                    f29435b = method3;
                    f29436c = method2;
                    f29437d = field2;
                    f29438e = field3;
                    f29439f = field;
                    f29440g = obj;
                    f29441h = th;
                }
            } catch (Throwable th8) {
                th = th8;
                obj = null;
                field = null;
                method2 = null;
                field2 = 0;
            }
        } catch (Throwable th9) {
            th = th9;
            obj = null;
            field = null;
            method2 = null;
            method3 = method2;
            field2 = method3;
            field3 = field2;
            Log.d("StructStatHelper", "Reflection failed", th);
            f29434a = method;
            f29435b = method3;
            f29436c = method2;
            f29437d = field2;
            f29438e = field3;
            f29439f = field;
            f29440g = obj;
            f29441h = th;
        }
    }

    static cc a(final FileDescriptor fileDescriptor) throws IOException {
        return (cc) f(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.bb
            @Override // java.util.concurrent.Callable
            public final Object call() {
                cc e4;
                e4 = ac.e(ac.f29436c.invoke(ac.f29440g, fileDescriptor));
                return e4;
            }
        });
    }

    static cc d(final String str) throws IOException {
        return (cc) f(new Callable() { // from class: com.google.android.gms.internal.mlkit_common.aa
            @Override // java.util.concurrent.Callable
            public final Object call() {
                cc e4;
                e4 = ac.e(ac.f29435b.invoke(ac.f29440g, str));
                return e4;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static cc e(Object obj) throws Exception {
        return new cc(((Long) f29437d.get(obj)).longValue(), ((Long) f29438e.get(obj)).longValue(), ((Boolean) f29434a.invoke(null, Integer.valueOf(((Integer) f29439f.get(obj)).intValue()))).booleanValue());
    }

    private static Object f(Callable callable) throws IOException {
        try {
            Throwable th = f29441h;
            if (th == null) {
                return callable.call();
            }
            throw new IOException(th);
        } catch (Throwable th2) {
            throw new IOException(th2);
        }
    }
}
