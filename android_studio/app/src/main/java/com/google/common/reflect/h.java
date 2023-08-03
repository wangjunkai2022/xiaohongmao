package com.google.common.reflect;

import com.google.common.base.a0;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

/* compiled from: Reflection.java */
@h3.a
/* loaded from: classes2.dex */
public final class h {
    private h() {
    }

    public static String a(Class<?> cls) {
        return b(cls.getName());
    }

    public static String b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf < 0 ? "" : str.substring(0, lastIndexOf);
    }

    public static void c(Class<?>... clsArr) {
        for (Class<?> cls : clsArr) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
            } catch (ClassNotFoundException e4) {
                throw new AssertionError(e4);
            }
        }
    }

    public static <T> T d(Class<T> cls, InvocationHandler invocationHandler) {
        a0.E(invocationHandler);
        a0.u(cls.isInterface(), "%s is not an interface", cls);
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, invocationHandler));
    }
}
