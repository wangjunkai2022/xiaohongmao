package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.JacksonException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import java.io.Closeable;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;

/* compiled from: ClassUtil.java */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f16009a = Object.class;

    /* renamed from: b  reason: collision with root package name */
    private static final Annotation[] f16010b = new Annotation[0];

    /* renamed from: c  reason: collision with root package name */
    private static final a[] f16011c = new a[0];

    /* renamed from: d  reason: collision with root package name */
    private static final Iterator<?> f16012d = Collections.emptyIterator();

    /* compiled from: ClassUtil.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Constructor<?> f16013a;

        /* renamed from: b  reason: collision with root package name */
        private transient Annotation[] f16014b;

        /* renamed from: c  reason: collision with root package name */
        private transient Annotation[][] f16015c;

        /* renamed from: d  reason: collision with root package name */
        private int f16016d = -1;

        public a(Constructor<?> constructor) {
            this.f16013a = constructor;
        }

        public Constructor<?> a() {
            return this.f16013a;
        }

        public Annotation[] b() {
            Annotation[] annotationArr = this.f16014b;
            if (annotationArr == null) {
                Annotation[] declaredAnnotations = this.f16013a.getDeclaredAnnotations();
                this.f16014b = declaredAnnotations;
                return declaredAnnotations;
            }
            return annotationArr;
        }

        public Class<?> c() {
            return this.f16013a.getDeclaringClass();
        }

        public int d() {
            int i4 = this.f16016d;
            if (i4 < 0) {
                int length = this.f16013a.getParameterTypes().length;
                this.f16016d = length;
                return length;
            }
            return i4;
        }

        public Annotation[][] e() {
            Annotation[][] annotationArr = this.f16015c;
            if (annotationArr == null) {
                Annotation[][] parameterAnnotations = this.f16013a.getParameterAnnotations();
                this.f16015c = parameterAnnotations;
                return parameterAnnotations;
            }
            return annotationArr;
        }
    }

    /* compiled from: ClassUtil.java */
    /* loaded from: classes2.dex */
    private static class b {

        /* renamed from: e  reason: collision with root package name */
        static final b f16017e = new b();

        /* renamed from: a  reason: collision with root package name */
        private final Field f16018a;

        /* renamed from: b  reason: collision with root package name */
        private final Field f16019b;

        /* renamed from: c  reason: collision with root package name */
        private final String f16020c;

        /* renamed from: d  reason: collision with root package name */
        private final String f16021d;

        private b() {
            String exc;
            Field field;
            String exc2;
            Field field2 = null;
            try {
                field = d(EnumSet.class, "elementType", Class.class);
                exc = null;
            } catch (Exception e4) {
                exc = e4.toString();
                field = null;
            }
            this.f16018a = field;
            this.f16020c = exc;
            try {
                exc2 = null;
                field2 = d(EnumMap.class, "keyType", Class.class);
            } catch (Exception e10) {
                exc2 = e10.toString();
            }
            this.f16019b = field2;
            this.f16021d = exc2;
        }

        private Object c(Object obj, Field field) {
            try {
                return field.get(obj);
            } catch (Exception e4) {
                throw new IllegalArgumentException(e4);
            }
        }

        private static Field d(Class<?> cls, String str, Class<?> cls2) throws Exception {
            Field[] declaredFields;
            for (Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName()) && field.getType() == cls2) {
                    field.setAccessible(true);
                    return field;
                }
            }
            throw new IllegalStateException(String.format("No field named '%s' in class '%s'", str, cls.getTypeName()));
        }

        public Class<? extends Enum<?>> a(EnumMap<?, ?> enumMap) {
            Field field = this.f16019b;
            if (field != null) {
                return (Class) c(enumMap, field);
            }
            throw new IllegalStateException("Cannot figure out type parameter for `EnumMap` (odd JDK platform?), problem: " + this.f16021d);
        }

        public Class<? extends Enum<?>> b(EnumSet<?> enumSet) {
            Field field = this.f16018a;
            if (field != null) {
                return (Class) c(enumSet, field);
            }
            throw new IllegalStateException("Cannot figure out type parameter for `EnumSet` (odd JDK platform?), problem: " + this.f16020c);
        }
    }

    public static List<JavaType> A(JavaType javaType, Class<?> cls, boolean z9) {
        if (javaType != null && !javaType.hasRawClass(cls) && !javaType.hasRawClass(Object.class)) {
            ArrayList arrayList = new ArrayList(8);
            b(javaType, cls, arrayList, z9);
            return arrayList;
        }
        return Collections.emptyList();
    }

    public static Class<?> A0(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        throw new IllegalArgumentException("Class " + cls.getName() + " is not a primitive type");
    }

    @Deprecated
    public static List<Class<?>> B(Class<?> cls, Class<?> cls2) {
        return C(cls, cls2, new ArrayList(8));
    }

    @Deprecated
    public static List<Class<?>> C(Class<?> cls, Class<?> cls2, List<Class<?>> list) {
        a(cls, cls2, list, false);
        return list;
    }

    public static String D(Object obj) {
        if (obj == null) {
            return "unknown";
        }
        return j0(obj instanceof Class ? (Class) obj : obj.getClass());
    }

    public static Method[] E(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e4) {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader == null) {
                return c(cls, e4);
            }
            try {
                try {
                    return contextClassLoader.loadClass(cls.getName()).getDeclaredMethods();
                } catch (Throwable th) {
                    return c(cls, th);
                }
            } catch (ClassNotFoundException e10) {
                e4.addSuppressed(e10);
                return c(cls, e4);
            }
        } catch (Throwable th2) {
            return c(cls, th2);
        }
    }

    public static a[] F(Class<?> cls) {
        if (!cls.isInterface() && !d0(cls)) {
            Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
            int length = declaredConstructors.length;
            a[] aVarArr = new a[length];
            for (int i4 = 0; i4 < length; i4++) {
                aVarArr[i4] = new a(declaredConstructors[i4]);
            }
            return aVarArr;
        }
        return f16011c;
    }

    @Deprecated
    public static Field[] G(Class<?> cls) {
        return cls.getDeclaredFields();
    }

    @Deprecated
    public static Method[] H(Class<?> cls) {
        return cls.getDeclaredMethods();
    }

    public static Class<?> I(Class<?> cls) {
        if (d0(cls)) {
            return null;
        }
        return cls.getDeclaringClass();
    }

    public static Class<?> J(Class<?> cls) {
        if (d0(cls)) {
            return null;
        }
        return cls.getEnclosingClass();
    }

    public static Type[] K(Class<?> cls) {
        return cls.getGenericInterfaces();
    }

    public static Type L(Class<?> cls) {
        return cls.getGenericSuperclass();
    }

    public static Class<?> M(Class<?> cls) {
        if (!Modifier.isStatic(cls.getModifiers())) {
            try {
                if (R(cls)) {
                    return null;
                }
                return J(cls);
            } catch (SecurityException unused) {
            }
        }
        return null;
    }

    @Deprecated
    public static String N(Class<?> cls) {
        Package r02 = cls.getPackage();
        if (r02 == null) {
            return null;
        }
        return r02.getName();
    }

    public static Throwable O(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    public static String P(JavaType javaType) {
        if (javaType == null) {
            return "[null]";
        }
        StringBuilder sb = new StringBuilder(80);
        sb.append('`');
        sb.append(javaType.toCanonical());
        sb.append('`');
        return sb.toString();
    }

    public static boolean Q(Object obj, Class<?> cls) {
        return obj != null && obj.getClass() == cls;
    }

    public static boolean R(Class<?> cls) {
        return (d0(cls) || cls.getEnclosingMethod() == null) ? false : true;
    }

    @Deprecated
    public static boolean S(Method method) {
        if (Modifier.isStatic(method.getModifiers())) {
            return false;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        return (parameterTypes == null || parameterTypes.length == 0) && Void.TYPE != method.getReturnType();
    }

    public static boolean T(Class<?> cls) {
        return cls == Void.class || cls == Void.TYPE || cls == c2.i.class;
    }

    public static boolean U(Class<?> cls) {
        return cls.isArray() || Collection.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls);
    }

    public static boolean V(Class<?> cls) {
        return (cls.getModifiers() & 1536) == 0;
    }

    public static boolean W(Member member) {
        return (member.getModifiers() & 1536) == 0;
    }

    public static boolean X(Class<?> cls) {
        return Enum.class.isAssignableFrom(cls);
    }

    public static boolean Y(Class<?> cls) {
        String name = cls.getName();
        return name.startsWith("java.") || name.startsWith("javax.");
    }

    public static boolean Z(Class<?> cls) {
        return cls.getAnnotation(c2.a.class) != null;
    }

    private static void a(Class<?> cls, Class<?> cls2, Collection<Class<?>> collection, boolean z9) {
        if (cls == cls2 || cls == null || cls == Object.class) {
            return;
        }
        if (z9) {
            if (collection.contains(cls)) {
                return;
            }
            collection.add(cls);
        }
        for (Class<?> cls3 : d(cls)) {
            a(cls3, cls2, collection, true);
        }
        a(cls.getSuperclass(), cls2, collection, true);
    }

    public static boolean a0(Object obj) {
        return obj == null || Z(obj.getClass());
    }

    private static void b(JavaType javaType, Class<?> cls, Collection<JavaType> collection, boolean z9) {
        Class<?> rawClass;
        if (javaType == null || (rawClass = javaType.getRawClass()) == cls || rawClass == Object.class) {
            return;
        }
        if (z9) {
            if (collection.contains(javaType)) {
                return;
            }
            collection.add(javaType);
        }
        for (JavaType javaType2 : javaType.getInterfaces()) {
            b(javaType2, cls, collection, true);
        }
        b(javaType.getSuperClass(), cls, collection, true);
    }

    public static String b0(Class<?> cls, boolean z9) {
        try {
            boolean isStatic = Modifier.isStatic(cls.getModifiers());
            if (isStatic || !R(cls)) {
                if (z9 || isStatic) {
                    return null;
                }
                if (J(cls) != null) {
                    return "non-static member class";
                }
                return null;
            }
            return "local/anonymous";
        } catch (NullPointerException | SecurityException unused) {
            return null;
        }
    }

    private static Method[] c(Class<?> cls, Throwable th) throws IllegalArgumentException {
        throw new IllegalArgumentException(String.format("Failed on call to `getDeclaredMethods()` on class `%s`, problem: (%s) %s", cls.getName(), th.getClass().getName(), th.getMessage()), th);
    }

    public static boolean c0(Class<?> cls) {
        return (Modifier.isStatic(cls.getModifiers()) || J(cls) == null) ? false : true;
    }

    private static Class<?>[] d(Class<?> cls) {
        return cls.getInterfaces();
    }

    public static boolean d0(Class<?> cls) {
        return cls == f16009a || cls.isPrimitive();
    }

    public static String e(String str) {
        if (str == null) {
            return "[null]";
        }
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append('\'');
        sb.append(str);
        sb.append('\'');
        return sb.toString();
    }

    public static boolean e0(Class<?> cls) {
        String name = cls.getName();
        return name.startsWith("net.sf.cglib.proxy.") || name.startsWith("org.hibernate.proxy.");
    }

    public static String f(String str) {
        if (str == null) {
            return "[null]";
        }
        StringBuilder sb = new StringBuilder(str.length() + 2);
        sb.append('`');
        sb.append(str);
        sb.append('`');
        return sb.toString();
    }

    public static boolean f0(Class<?> cls) {
        Class<? super Object> superclass = cls.getSuperclass();
        return superclass != null && "java.lang.Record".equals(superclass.getName());
    }

    public static String g(Class<?> cls) {
        if (cls.isAnnotation()) {
            return "annotation";
        }
        if (cls.isArray()) {
            return "array";
        }
        if (Enum.class.isAssignableFrom(cls)) {
            return "enum";
        }
        if (cls.isPrimitive()) {
            return "primitive";
        }
        return null;
    }

    public static String g0(PropertyName propertyName) {
        return propertyName == null ? "[null]" : e(propertyName.getSimpleName());
    }

    @Deprecated
    public static void h(Member member) {
        i(member, false);
    }

    public static String h0(String str) {
        return str == null ? "[null]" : e(str);
    }

    public static void i(Member member, boolean z9) {
        AccessibleObject accessibleObject = (AccessibleObject) member;
        try {
            Class<?> declaringClass = member.getDeclaringClass();
            if (!(Modifier.isPublic(member.getModifiers()) && Modifier.isPublic(declaringClass.getModifiers())) || (z9 && !Y(declaringClass))) {
                accessibleObject.setAccessible(true);
            }
        } catch (SecurityException e4) {
            if (accessibleObject.isAccessible()) {
                return;
            }
            Class<?> declaringClass2 = member.getDeclaringClass();
            throw new IllegalArgumentException("Cannot access " + member + " (from class " + declaringClass2.getName() + "; failed to set access: " + e4.getMessage());
        } catch (RuntimeException e10) {
            if ("InaccessibleObjectException".equals(e10.getClass().getSimpleName())) {
                throw new IllegalArgumentException(String.format("Failed to call `setAccess()` on %s '%s' (of class %s) due to `%s`, problem: %s", member.getClass().getSimpleName(), member.getName(), j0(member.getDeclaringClass()), e10.getClass().getName(), e10.getMessage()), e10);
            }
            throw e10;
        }
    }

    public static String i0(n nVar) {
        return nVar == null ? "[null]" : e(nVar.getName());
    }

    public static String j(Object obj) {
        if (obj == null) {
            return "[null]";
        }
        return j0(obj instanceof Class ? (Class) obj : obj.getClass());
    }

    public static String j0(Class<?> cls) {
        if (cls == null) {
            return "[null]";
        }
        int i4 = 0;
        while (cls.isArray()) {
            i4++;
            cls = cls.getComponentType();
        }
        String simpleName = cls.isPrimitive() ? cls.getSimpleName() : cls.getName();
        if (i4 > 0) {
            StringBuilder sb = new StringBuilder(simpleName);
            do {
                sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                i4--;
            } while (i4 > 0);
            simpleName = sb.toString();
        }
        return f(simpleName);
    }

    public static Class<?> k(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.getClass();
    }

    public static <T> T k0(T t9, T t10) {
        return t9 == null ? t10 : t9;
    }

    public static void l(JsonGenerator jsonGenerator, Closeable closeable, Exception exc) throws IOException {
        if (jsonGenerator != null) {
            jsonGenerator.J(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT);
            try {
                jsonGenerator.close();
            } catch (Exception e4) {
                exc.addSuppressed(e4);
            }
        }
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e10) {
                exc.addSuppressed(e10);
            }
        }
        u0(exc);
        v0(exc);
        throw new RuntimeException(exc);
    }

    public static String l0(String str) {
        return str == null ? "" : str;
    }

    public static void m(JsonGenerator jsonGenerator, Exception exc) throws IOException {
        jsonGenerator.J(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT);
        try {
            jsonGenerator.close();
        } catch (Exception e4) {
            exc.addSuppressed(e4);
        }
        u0(exc);
        v0(exc);
        throw new RuntimeException(exc);
    }

    public static String m0(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }

    public static <T> T n(Class<T> cls, boolean z9) throws IllegalArgumentException {
        Constructor s9 = s(cls, z9);
        if (s9 != null) {
            try {
                return (T) s9.newInstance(new Object[0]);
            } catch (Exception e4) {
                y0(e4, "Failed to instantiate class " + cls.getName() + ", problem: " + e4.getMessage());
                return null;
            }
        }
        throw new IllegalArgumentException("Class " + cls.getName() + " has no default (no arg) constructor");
    }

    public static Class<?> n0(Class<?> cls) {
        if (cls.isPrimitive()) {
            return cls;
        }
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        if (cls == Character.class) {
            return Character.TYPE;
        }
        return null;
    }

    public static Object o(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return 0;
        }
        if (cls == Long.TYPE) {
            return 0L;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (cls == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (cls == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (cls == Byte.TYPE) {
            return (byte) 0;
        }
        if (cls == Short.TYPE) {
            return (short) 0;
        }
        if (cls == Character.TYPE) {
            return (char) 0;
        }
        throw new IllegalArgumentException("Class " + cls.getName() + " is not a primitive type");
    }

    public static String o0(Object obj, String str) {
        return obj == null ? str : String.format("\"%s\"", obj);
    }

    public static <T> Iterator<T> p() {
        return (Iterator<T>) f16012d;
    }

    public static Class<?> p0(JavaType javaType) {
        if (javaType == null) {
            return null;
        }
        return javaType.getRawClass();
    }

    public static String q(Throwable th) {
        if (th instanceof JacksonException) {
            return ((JacksonException) th).getOriginalMessage();
        }
        if ((th instanceof InvocationTargetException) && th.getCause() != null) {
            return th.getCause().getMessage();
        }
        return th.getMessage();
    }

    public static void q0(Throwable th) {
        r0(th, th.getMessage());
    }

    public static Annotation[] r(Class<?> cls) {
        if (d0(cls)) {
            return f16010b;
        }
        return cls.getDeclaredAnnotations();
    }

    public static void r0(Throwable th, String str) {
        v0(th);
        t0(th);
        throw new IllegalArgumentException(str, th);
    }

    public static <T> Constructor<T> s(Class<T> cls, boolean z9) throws IllegalArgumentException {
        try {
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (z9) {
                i(declaredConstructor, z9);
            } else if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new IllegalArgumentException("Default constructor for " + cls.getName() + " is not accessible (non-public?): not allowed to try modify access via Reflection: cannot instantiate type");
            }
            return declaredConstructor;
        } catch (NoSuchMethodException unused) {
            return null;
        } catch (Exception e4) {
            y0(e4, "Failed to find default constructor of class " + cls.getName() + ", problem: " + e4.getMessage());
            return null;
        }
    }

    public static <T> T s0(DeserializationContext deserializationContext, IOException iOException) throws JsonMappingException {
        if (iOException instanceof JsonMappingException) {
            throw ((JsonMappingException) iOException);
        }
        throw JsonMappingException.from(deserializationContext, iOException.getMessage()).withCause(iOException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Class<? extends Enum<?>> t(Class<?> cls) {
        return cls.getSuperclass() != Enum.class ? cls.getSuperclass() : cls;
    }

    public static Throwable t0(Throwable th) {
        if (th instanceof Error) {
            throw ((Error) th);
        }
        return th;
    }

    public static Class<? extends Enum<?>> u(Enum<?> r02) {
        return r02.getDeclaringClass();
    }

    public static Throwable u0(Throwable th) throws IOException {
        if (th instanceof IOException) {
            throw ((IOException) th);
        }
        return th;
    }

    public static Class<? extends Enum<?>> v(EnumMap<?, ?> enumMap) {
        if (!enumMap.isEmpty()) {
            return u((Enum) enumMap.keySet().iterator().next());
        }
        return b.f16017e.a(enumMap);
    }

    public static Throwable v0(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        return th;
    }

    public static Class<? extends Enum<?>> w(EnumSet<?> enumSet) {
        if (!enumSet.isEmpty()) {
            return u((Enum) enumSet.iterator().next());
        }
        return b.f16017e.b(enumSet);
    }

    public static Throwable w0(Throwable th) throws IOException {
        return u0(O(th));
    }

    public static <T extends Annotation> Enum<?> x(Class<Enum<?>> cls, Class<T> cls2) {
        Field[] declaredFields;
        Enum<?>[] enumConstants;
        for (Field field : cls.getDeclaredFields()) {
            if (field.isEnumConstant() && field.getAnnotation(cls2) != null) {
                String name = field.getName();
                for (Enum<?> r82 : cls.getEnumConstants()) {
                    if (name.equals(r82.name())) {
                        return r82;
                    }
                }
                continue;
            }
        }
        return null;
    }

    public static void x0(Throwable th) {
        q0(O(th));
    }

    public static List<Class<?>> y(Class<?> cls, Class<?> cls2, boolean z9) {
        if (cls != null && cls != cls2 && cls != Object.class) {
            ArrayList arrayList = new ArrayList(8);
            a(cls, cls2, arrayList, z9);
            return arrayList;
        }
        return Collections.emptyList();
    }

    public static void y0(Throwable th, String str) {
        r0(O(th), str);
    }

    public static List<Class<?>> z(Class<?> cls, Class<?> cls2, boolean z9) {
        ArrayList arrayList = new ArrayList(8);
        if (cls != null && cls != cls2) {
            if (z9) {
                arrayList.add(cls);
            }
            while (true) {
                cls = cls.getSuperclass();
                if (cls == null || cls == cls2) {
                    break;
                }
                arrayList.add(cls);
            }
        }
        return arrayList;
    }

    public static void z0(Class<?> cls, Object obj, String str) {
        if (obj.getClass() != cls) {
            throw new IllegalStateException(String.format("Sub-class %s (of class %s) must override method '%s'", obj.getClass().getName(), cls.getName(), str));
        }
    }
}
