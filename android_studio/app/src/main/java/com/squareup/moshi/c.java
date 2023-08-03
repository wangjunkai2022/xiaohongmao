package com.squareup.moshi;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ClassFactory.java */
/* loaded from: classes3.dex */
abstract class c<T> {

    /* compiled from: ClassFactory.java */
    /* loaded from: classes3.dex */
    class a extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Constructor f55580a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f55581b;

        a(Constructor constructor, Class cls) {
            this.f55580a = constructor;
            this.f55581b = cls;
        }

        @Override // com.squareup.moshi.c
        public T b() throws IllegalAccessException, InvocationTargetException, InstantiationException {
            return (T) this.f55580a.newInstance(null);
        }

        public String toString() {
            return this.f55581b.getName();
        }
    }

    /* compiled from: ClassFactory.java */
    /* loaded from: classes3.dex */
    class b extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Method f55582a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f55583b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Class f55584c;

        b(Method method, Object obj, Class cls) {
            this.f55582a = method;
            this.f55583b = obj;
            this.f55584c = cls;
        }

        @Override // com.squareup.moshi.c
        public T b() throws InvocationTargetException, IllegalAccessException {
            return (T) this.f55582a.invoke(this.f55583b, this.f55584c);
        }

        public String toString() {
            return this.f55584c.getName();
        }
    }

    /* compiled from: ClassFactory.java */
    /* renamed from: com.squareup.moshi.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0472c extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Method f55585a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f55586b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f55587c;

        C0472c(Method method, Class cls, int i4) {
            this.f55585a = method;
            this.f55586b = cls;
            this.f55587c = i4;
        }

        @Override // com.squareup.moshi.c
        public T b() throws InvocationTargetException, IllegalAccessException {
            return (T) this.f55585a.invoke(null, this.f55586b, Integer.valueOf(this.f55587c));
        }

        public String toString() {
            return this.f55586b.getName();
        }
    }

    /* compiled from: ClassFactory.java */
    /* loaded from: classes3.dex */
    class d extends c<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Method f55588a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Class f55589b;

        d(Method method, Class cls) {
            this.f55588a = method;
            this.f55589b = cls;
        }

        @Override // com.squareup.moshi.c
        public T b() throws InvocationTargetException, IllegalAccessException {
            return (T) this.f55588a.invoke(null, this.f55589b, Object.class);
        }

        public String toString() {
            return this.f55589b.getName();
        }
    }

    c() {
    }

    public static <T> c<T> a(Class<?> cls) {
        try {
            Constructor<?> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            declaredConstructor.setAccessible(true);
            return new a(declaredConstructor, cls);
        } catch (NoSuchMethodException unused) {
            try {
                Class<?> cls2 = Class.forName("sun.misc.Unsafe");
                Field declaredField = cls2.getDeclaredField("theUnsafe");
                declaredField.setAccessible(true);
                return new b(cls2.getMethod("allocateInstance", Class.class), declaredField.get(null), cls);
            } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused2) {
                try {
                    try {
                        Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                        declaredMethod.setAccessible(true);
                        int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                        Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                        declaredMethod2.setAccessible(true);
                        return new C0472c(declaredMethod2, cls, intValue);
                    } catch (IllegalAccessException unused3) {
                        throw new AssertionError();
                    } catch (NoSuchMethodException unused4) {
                        Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                        declaredMethod3.setAccessible(true);
                        return new d(declaredMethod3, cls);
                    } catch (InvocationTargetException e4) {
                        throw com.squareup.moshi.internal.c.x(e4);
                    }
                } catch (Exception unused5) {
                    throw new IllegalArgumentException("cannot construct instances of " + cls.getName());
                }
            } catch (IllegalAccessException unused6) {
                throw new AssertionError();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract T b() throws InvocationTargetException, IllegalAccessException, InstantiationException;
}
