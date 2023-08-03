package com.google.common.reflect;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: AbstractInvocationHandler.java */
@h3.a
/* loaded from: classes2.dex */
public abstract class a implements InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    private static final Object[] f34932a = new Object[0];

    private static boolean b(Object obj, Class<?> cls) {
        return cls.isInstance(obj) || (Proxy.isProxyClass(obj.getClass()) && Arrays.equals(obj.getClass().getInterfaces(), cls.getInterfaces()));
    }

    protected abstract Object a(Object obj, Method method, Object[] objArr) throws Throwable;

    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    public int hashCode() {
        return super.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    public final Object invoke(Object obj, Method method, @NullableDecl Object[] objArr) throws Throwable {
        if (objArr == null) {
            objArr = f34932a;
        }
        if (objArr.length == 0 && method.getName().equals("hashCode")) {
            return Integer.valueOf(hashCode());
        }
        boolean z9 = true;
        if (objArr.length == 1 && method.getName().equals("equals") && method.getParameterTypes()[0] == Object.class) {
            Object obj2 = objArr[0];
            if (obj2 == null) {
                return Boolean.FALSE;
            }
            if (obj == obj2) {
                return Boolean.TRUE;
            }
            return Boolean.valueOf((b(obj2, obj.getClass()) && equals(Proxy.getInvocationHandler(obj2))) ? false : false);
        } else if (objArr.length == 0 && method.getName().equals("toString")) {
            return toString();
        } else {
            return a(obj, method, objArr);
        }
    }

    public String toString() {
        return super.toString();
    }
}
