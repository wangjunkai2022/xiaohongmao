package com.google.android.play.core.internal;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class w0 {
    public static u0 a(Object obj, String str, Class cls) {
        return new u0(obj, h(obj, str), cls);
    }

    public static v0 b(Object obj, String str, Class cls) {
        return new v0(obj, h(obj, str), cls);
    }

    public static Object c(Class cls) {
        try {
            Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor.newInstance(new Object[0]);
        } catch (Exception e4) {
            throw new zzbx(String.format("Failed to invoke default constructor on class %s", cls.getName()), e4);
        }
    }

    public static Object d(Object obj, String str, Class cls, Class cls2, Object obj2) {
        try {
            return cls.cast(i(obj.getClass(), str, cls2).invoke(obj, obj2));
        } catch (Exception e4) {
            throw new zzbx(String.format("Failed to invoke method %s on an object of type %s", str, obj.getClass()), e4);
        }
    }

    public static Object e(Object obj, String str, Class cls, Class cls2, Object obj2, Class cls3, Object obj3, Class cls4, Object obj4) {
        try {
            return cls.cast(i(obj.getClass(), str, cls2, cls3, cls4).invoke(obj, obj2, obj3, obj4));
        } catch (Exception e4) {
            throw new zzbx(String.format("Failed to invoke method %s on an object of type %s", str, obj.getClass()), e4);
        }
    }

    public static Object f(Class cls, String str, Class cls2, Class cls3, Object obj) {
        try {
            return cls2.cast(i(cls, "isDexOptNeeded", cls3).invoke(null, obj));
        } catch (Exception e4) {
            throw new zzbx(String.format("Failed to invoke static method %s on type %s", "isDexOptNeeded", cls), e4);
        }
    }

    public static Object g(Class cls, String str, Class cls2, Class cls3, Object obj, Class cls4, Object obj2) {
        try {
            return cls2.cast(i(cls, "optimizedPathFor", cls3, cls4).invoke(null, obj, obj2));
        } catch (Exception e4) {
            throw new zzbx(String.format("Failed to invoke static method %s on type %s", "optimizedPathFor", cls), e4);
        }
    }

    private static Field h(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
            }
        }
        throw new zzbx(String.format("Failed to find a field named %s on an object of instance %s", str, obj.getClass().getName()));
    }

    private static Method i(Class cls, String str, Class... clsArr) {
        for (Class cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                Method declaredMethod = cls2.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
            }
        }
        throw new zzbx(String.format("Could not find a method named %s with parameters %s in type %s", str, Arrays.asList(clsArr), cls));
    }
}
