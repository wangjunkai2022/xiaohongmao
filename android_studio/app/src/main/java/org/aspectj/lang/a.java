package org.aspectj.lang;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* compiled from: Aspects14.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Class[] f91004a = new Class[0];

    /* renamed from: b  reason: collision with root package name */
    private static final Class[] f91005b;

    /* renamed from: c  reason: collision with root package name */
    private static final Class[] f91006c;

    /* renamed from: d  reason: collision with root package name */
    private static final Object[] f91007d;

    /* renamed from: e  reason: collision with root package name */
    private static final String f91008e = "aspectOf";

    /* renamed from: f  reason: collision with root package name */
    private static final String f91009f = "hasAspect";

    /* renamed from: g  reason: collision with root package name */
    static /* synthetic */ Class f91010g;

    /* renamed from: h  reason: collision with root package name */
    static /* synthetic */ Class f91011h;

    static {
        Class[] clsArr = new Class[1];
        Class cls = f91010g;
        if (cls == null) {
            cls = f("java.lang.Object");
            f91010g = cls;
        }
        clsArr[0] = cls;
        f91005b = clsArr;
        Class[] clsArr2 = new Class[1];
        Class cls2 = f91011h;
        if (cls2 == null) {
            cls2 = f("java.lang.Class");
            f91011h = cls2;
        }
        clsArr2[0] = cls2;
        f91006c = clsArr2;
        f91007d = new Object[0];
    }

    public static Object a(Class cls) throws NoAspectBoundException {
        try {
            return k(cls).invoke(null, f91007d);
        } catch (InvocationTargetException e4) {
            throw new NoAspectBoundException(cls.getName(), e4);
        } catch (Exception e10) {
            throw new NoAspectBoundException(cls.getName(), e10);
        }
    }

    public static Object b(Class cls, Class cls2) throws NoAspectBoundException {
        try {
            return i(cls).invoke(null, cls2);
        } catch (InvocationTargetException e4) {
            throw new NoAspectBoundException(cls.getName(), e4);
        } catch (Exception e10) {
            throw new NoAspectBoundException(cls.getName(), e10);
        }
    }

    public static Object c(Class cls, Object obj) throws NoAspectBoundException {
        try {
            return g(cls).invoke(null, obj);
        } catch (InvocationTargetException e4) {
            throw new NoAspectBoundException(cls.getName(), e4);
        } catch (Exception e10) {
            throw new NoAspectBoundException(cls.getName(), e10);
        }
    }

    private static Method d(Method method, Class cls) throws NoSuchMethodException {
        method.setAccessible(true);
        if (method.isAccessible() && Modifier.isPublic(method.getModifiers()) && Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cls.getName());
        stringBuffer.append(".aspectOf(..) is not accessible public static");
        throw new NoSuchMethodException(stringBuffer.toString());
    }

    private static Method e(Method method, Class cls) throws NoSuchMethodException {
        method.setAccessible(true);
        if (method.isAccessible() && Modifier.isPublic(method.getModifiers()) && Modifier.isStatic(method.getModifiers())) {
            return method;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cls.getName());
        stringBuffer.append(".hasAspect(..) is not accessible public static");
        throw new NoSuchMethodException(stringBuffer.toString());
    }

    static /* synthetic */ Class f(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e4) {
            throw new NoClassDefFoundError(e4.getMessage());
        }
    }

    private static Method g(Class cls) throws NoSuchMethodException {
        return d(cls.getDeclaredMethod(f91008e, f91005b), cls);
    }

    private static Method h(Class cls) throws NoSuchMethodException {
        return e(cls.getDeclaredMethod(f91009f, f91005b), cls);
    }

    private static Method i(Class cls) throws NoSuchMethodException {
        return d(cls.getDeclaredMethod(f91008e, f91006c), cls);
    }

    private static Method j(Class cls) throws NoSuchMethodException {
        return e(cls.getDeclaredMethod(f91009f, f91006c), cls);
    }

    private static Method k(Class cls) throws NoSuchMethodException {
        return d(cls.getDeclaredMethod(f91008e, f91004a), cls);
    }

    private static Method l(Class cls) throws NoSuchMethodException {
        return e(cls.getDeclaredMethod(f91009f, f91004a), cls);
    }

    public static boolean m(Class cls) throws NoAspectBoundException {
        try {
            return ((Boolean) l(cls).invoke(null, f91007d)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean n(Class cls, Class cls2) throws NoAspectBoundException {
        try {
            return ((Boolean) j(cls).invoke(null, cls2)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean o(Class cls, Object obj) throws NoAspectBoundException {
        try {
            return ((Boolean) h(cls).invoke(null, obj)).booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }
}
