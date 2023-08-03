package org.aspectj.lang;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* compiled from: Aspects.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Class[] f91012a = new Class[0];

    /* renamed from: b  reason: collision with root package name */
    private static final Class[] f91013b = {Object.class};

    /* renamed from: c  reason: collision with root package name */
    private static final Class[] f91014c = {Class.class};

    /* renamed from: d  reason: collision with root package name */
    private static final Object[] f91015d = new Object[0];

    /* renamed from: e  reason: collision with root package name */
    private static final String f91016e = "aspectOf";

    /* renamed from: f  reason: collision with root package name */
    private static final String f91017f = "hasAspect";

    public static <T> T a(Class<T> cls) throws NoAspectBoundException {
        try {
            return (T) j(cls).invoke(null, f91015d);
        } catch (InvocationTargetException e4) {
            throw new NoAspectBoundException(cls.getName(), e4);
        } catch (Exception e10) {
            throw new NoAspectBoundException(cls.getName(), e10);
        }
    }

    public static <T> T b(Class<T> cls, Class<?> cls2) throws NoAspectBoundException {
        try {
            return (T) h(cls).invoke(null, cls2);
        } catch (InvocationTargetException e4) {
            throw new NoAspectBoundException(cls.getName(), e4);
        } catch (Exception e10) {
            throw new NoAspectBoundException(cls.getName(), e10);
        }
    }

    public static <T> T c(Class<T> cls, Object obj) throws NoAspectBoundException {
        try {
            return (T) f(cls).invoke(null, obj);
        } catch (InvocationTargetException e4) {
            throw new NoAspectBoundException(cls.getName(), e4);
        } catch (Exception e10) {
            throw new NoAspectBoundException(cls.getName(), e10);
        }
    }

    private static Method d(Method method, Class<?> cls) throws NoSuchMethodException {
        method.setAccessible(true);
        if (method.isAccessible() && Modifier.isPublic(method.getModifiers()) && Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        throw new NoSuchMethodException(cls.getName() + ".aspectOf(..) is not accessible public static");
    }

    private static Method e(Method method, Class cls) throws NoSuchMethodException {
        method.setAccessible(true);
        if (method.isAccessible() && Modifier.isPublic(method.getModifiers()) && Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        throw new NoSuchMethodException(cls.getName() + ".hasAspect(..) is not accessible public static");
    }

    private static Method f(Class<?> cls) throws NoSuchMethodException {
        return d(cls.getDeclaredMethod(f91016e, f91013b), cls);
    }

    private static Method g(Class cls) throws NoSuchMethodException {
        return e(cls.getDeclaredMethod(f91017f, f91013b), cls);
    }

    private static Method h(Class<?> cls) throws NoSuchMethodException {
        return d(cls.getDeclaredMethod(f91016e, f91014c), cls);
    }

    private static Method i(Class cls) throws NoSuchMethodException {
        return e(cls.getDeclaredMethod(f91017f, f91014c), cls);
    }

    private static Method j(Class<?> cls) throws NoSuchMethodException {
        return d(cls.getDeclaredMethod(f91016e, f91012a), cls);
    }

    private static Method k(Class cls) throws NoSuchMethodException {
        return e(cls.getDeclaredMethod(f91017f, f91012a), cls);
    }

    public static boolean l(Class<?> cls) throws NoAspectBoundException {
        try {
            return ((Boolean) k(cls).invoke(null, f91015d)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean m(Class<?> cls, Class<?> cls2) throws NoAspectBoundException {
        try {
            return ((Boolean) i(cls).invoke(null, cls2)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean n(Class<?> cls, Object obj) throws NoAspectBoundException {
        try {
            return ((Boolean) g(cls).invoke(null, obj)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }
}
