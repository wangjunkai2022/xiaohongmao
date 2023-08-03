package com.squareup.moshi.internal;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.g;
import com.squareup.moshi.i;
import com.squareup.moshi.j;
import com.squareup.moshi.u;
import com.squareup.moshi.z;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import okhttp3.HttpUrl;
import r7.h;

/* compiled from: Util.java */
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<Annotation> f55611a;

    /* renamed from: b  reason: collision with root package name */
    public static final Type[] f55612b;
    @h

    /* renamed from: c  reason: collision with root package name */
    public static final Class<?> f55613c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private static final Class<? extends Annotation> f55614d;

    /* renamed from: e  reason: collision with root package name */
    private static final Map<Class<?>, Class<?>> f55615e;

    /* compiled from: Util.java */
    /* loaded from: classes3.dex */
    public static final class a implements GenericArrayType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f55616a;

        public a(Type type) {
            this.f55616a = c.b(type);
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && z.e(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f55616a;
        }

        public int hashCode() {
            return this.f55616a.hashCode();
        }

        public String toString() {
            return c.z(this.f55616a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* compiled from: Util.java */
    /* loaded from: classes3.dex */
    public static final class b implements ParameterizedType {
        @h

        /* renamed from: a  reason: collision with root package name */
        private final Type f55617a;

        /* renamed from: b  reason: collision with root package name */
        private final Type f55618b;

        /* renamed from: c  reason: collision with root package name */
        public final Type[] f55619c;

        public b(@h Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class<?> enclosingClass = ((Class) type2).getEnclosingClass();
                if (type != null) {
                    if (enclosingClass == null || z.j(type) != enclosingClass) {
                        throw new IllegalArgumentException("unexpected owner type for " + type2 + ": " + type);
                    }
                } else if (enclosingClass != null) {
                    throw new IllegalArgumentException("unexpected owner type for " + type2 + ": null");
                }
            }
            this.f55617a = type == null ? null : c.b(type);
            this.f55618b = c.b(type2);
            this.f55619c = (Type[]) typeArr.clone();
            int i4 = 0;
            while (true) {
                Type[] typeArr2 = this.f55619c;
                if (i4 >= typeArr2.length) {
                    return;
                }
                Objects.requireNonNull(typeArr2[i4]);
                c.c(typeArr2[i4]);
                Type[] typeArr3 = this.f55619c;
                typeArr3[i4] = c.b(typeArr3[i4]);
                i4++;
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && z.e(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f55619c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        @h
        public Type getOwnerType() {
            return this.f55617a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f55618b;
        }

        public int hashCode() {
            return (Arrays.hashCode(this.f55619c) ^ this.f55618b.hashCode()) ^ c.i(this.f55617a);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((this.f55619c.length + 1) * 30);
            sb.append(c.z(this.f55618b));
            if (this.f55619c.length == 0) {
                return sb.toString();
            }
            sb.append("<");
            sb.append(c.z(this.f55619c[0]));
            for (int i4 = 1; i4 < this.f55619c.length; i4++) {
                sb.append(", ");
                sb.append(c.z(this.f55619c[i4]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* compiled from: Util.java */
    /* renamed from: com.squareup.moshi.internal.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0473c implements WildcardType {

        /* renamed from: a  reason: collision with root package name */
        private final Type f55620a;
        @h

        /* renamed from: b  reason: collision with root package name */
        private final Type f55621b;

        public C0473c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length <= 1) {
                if (typeArr.length == 1) {
                    if (typeArr2.length == 1) {
                        Objects.requireNonNull(typeArr2[0]);
                        c.c(typeArr2[0]);
                        if (typeArr[0] == Object.class) {
                            this.f55621b = c.b(typeArr2[0]);
                            this.f55620a = Object.class;
                            return;
                        }
                        throw new IllegalArgumentException();
                    }
                    Objects.requireNonNull(typeArr[0]);
                    c.c(typeArr[0]);
                    this.f55621b = null;
                    this.f55620a = c.b(typeArr[0]);
                    return;
                }
                throw new IllegalArgumentException();
            }
            throw new IllegalArgumentException();
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && z.e(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f55621b;
            return type != null ? new Type[]{type} : c.f55612b;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f55620a};
        }

        public int hashCode() {
            Type type = this.f55621b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f55620a.hashCode() + 31);
        }

        public String toString() {
            if (this.f55621b != null) {
                return "? super " + c.z(this.f55621b);
            } else if (this.f55620a == Object.class) {
                return "?";
            } else {
                return "? extends " + c.z(this.f55620a);
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:10:0x001a
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    static {
        /*
            java.util.Set r0 = java.util.Collections.emptySet()
            com.squareup.moshi.internal.c.f55611a = r0
            r0 = 0
            java.lang.reflect.Type[] r0 = new java.lang.reflect.Type[r0]
            com.squareup.moshi.internal.c.f55612b = r0
            r0 = 0
            java.lang.String r1 = getKotlinMetadataClassName()     // Catch: java.lang.ClassNotFoundException -> L15
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.ClassNotFoundException -> L15
            goto L16
        L15:
            r1 = r0
        L16:
            com.squareup.moshi.internal.c.f55614d = r1
            java.lang.Class<kotlin.jvm.internal.DefaultConstructorMarker> r0 = kotlin.jvm.internal.DefaultConstructorMarker.class
        L1a:
            com.squareup.moshi.internal.c.f55613c = r0
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r1 = 16
            r0.<init>(r1)
            java.lang.Class r1 = java.lang.Boolean.TYPE
            java.lang.Class<java.lang.Boolean> r2 = java.lang.Boolean.class
            r0.put(r1, r2)
            java.lang.Class r1 = java.lang.Byte.TYPE
            java.lang.Class<java.lang.Byte> r2 = java.lang.Byte.class
            r0.put(r1, r2)
            java.lang.Class r1 = java.lang.Character.TYPE
            java.lang.Class<java.lang.Character> r2 = java.lang.Character.class
            r0.put(r1, r2)
            java.lang.Class r1 = java.lang.Double.TYPE
            java.lang.Class<java.lang.Double> r2 = java.lang.Double.class
            r0.put(r1, r2)
            java.lang.Class r1 = java.lang.Float.TYPE
            java.lang.Class<java.lang.Float> r2 = java.lang.Float.class
            r0.put(r1, r2)
            java.lang.Class r1 = java.lang.Integer.TYPE
            java.lang.Class<java.lang.Integer> r2 = java.lang.Integer.class
            r0.put(r1, r2)
            java.lang.Class r1 = java.lang.Long.TYPE
            java.lang.Class<java.lang.Long> r2 = java.lang.Long.class
            r0.put(r1, r2)
            java.lang.Class r1 = java.lang.Short.TYPE
            java.lang.Class<java.lang.Short> r2 = java.lang.Short.class
            r0.put(r1, r2)
            java.lang.Class r1 = java.lang.Void.TYPE
            java.lang.Class<java.lang.Void> r2 = java.lang.Void.class
            r0.put(r1, r2)
            java.util.Map r0 = java.util.Collections.unmodifiableMap(r0)
            com.squareup.moshi.internal.c.f55615e = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.internal.c.<clinit>():void");
    }

    private c() {
    }

    public static boolean A(Type type, Type type2) {
        return z.e(type, type2);
    }

    public static JsonDataException B(String str, String str2, JsonReader jsonReader) {
        String format;
        String path = jsonReader.getPath();
        if (str2.equals(str)) {
            format = String.format("Non-null value '%s' was null at %s", str, path);
        } else {
            format = String.format("Non-null value '%s' (JSON name '%s') was null at %s", str, str2, path);
        }
        return new JsonDataException(format);
    }

    public static <T> Class<T> a(Class<T> cls) {
        Class<T> cls2 = (Class<T>) f55615e.get(cls);
        return cls2 == null ? cls : cls2;
    }

    public static Type b(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new a(b(cls.getComponentType())) : cls;
        } else if (type instanceof ParameterizedType) {
            if (type instanceof b) {
                return type;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return type instanceof a ? type : new a(((GenericArrayType) type).getGenericComponentType());
        } else if (!(type instanceof WildcardType) || (type instanceof C0473c)) {
            return type;
        } else {
            WildcardType wildcardType = (WildcardType) type;
            return new C0473c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    static void c(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException("Unexpected primitive " + type + ". Use the boxed type.");
        }
    }

    @h
    static Class<?> d(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    private static <T> Constructor<T> e(Class<T> cls) {
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            Constructor<T> constructor2 = (Constructor<T>) constructor;
            Class<?>[] parameterTypes = constructor2.getParameterTypes();
            if (parameterTypes.length != 0 && parameterTypes[parameterTypes.length - 1].equals(f55613c)) {
                return constructor2;
            }
        }
        throw new IllegalStateException("No defaults constructor found for " + cls);
    }

    @h
    public static com.squareup.moshi.h<?> f(u uVar, Type type, Class<?> cls) {
        Constructor<?> declaredConstructor;
        Object[] objArr;
        i iVar = (i) cls.getAnnotation(i.class);
        Class<?> cls2 = null;
        if (iVar == null || !iVar.generateAdapter()) {
            return null;
        }
        try {
            try {
                cls2 = Class.forName(z.g(cls.getName()), true, cls.getClassLoader());
                if (type instanceof ParameterizedType) {
                    Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
                    try {
                        declaredConstructor = cls2.getDeclaredConstructor(u.class, Type[].class);
                        objArr = new Object[]{uVar, actualTypeArguments};
                    } catch (NoSuchMethodException unused) {
                        declaredConstructor = cls2.getDeclaredConstructor(Type[].class);
                        objArr = new Object[]{actualTypeArguments};
                    }
                } else {
                    try {
                        declaredConstructor = cls2.getDeclaredConstructor(u.class);
                        objArr = new Object[]{uVar};
                    } catch (NoSuchMethodException unused2) {
                        declaredConstructor = cls2.getDeclaredConstructor(new Class[0]);
                        objArr = new Object[0];
                    }
                }
                declaredConstructor.setAccessible(true);
                return ((com.squareup.moshi.h) declaredConstructor.newInstance(objArr)).nullSafe();
            } catch (ClassNotFoundException e4) {
                throw new RuntimeException("Failed to find the generated JsonAdapter class for " + type, e4);
            } catch (IllegalAccessException e10) {
                throw new RuntimeException("Failed to access the generated JsonAdapter for " + type, e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Failed to instantiate the generated JsonAdapter for " + type, e11);
            } catch (InvocationTargetException e12) {
                throw x(e12);
            }
        } catch (NoSuchMethodException e13) {
            if (!(type instanceof ParameterizedType) && cls2.getTypeParameters().length != 0) {
                throw new RuntimeException("Failed to find the generated JsonAdapter constructor for '" + type + "'. Suspiciously, the type was not parameterized but the target class '" + cls2.getCanonicalName() + "' is generic. Consider using Types#newParameterizedType() to define these missing type variables.", e13);
            }
            throw new RuntimeException("Failed to find the generated JsonAdapter constructor for " + type, e13);
        }
    }

    public static Type g(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (interfaces[i4] == cls2) {
                    return cls.getGenericInterfaces()[i4];
                }
                if (cls2.isAssignableFrom(interfaces[i4])) {
                    return g(cls.getGenericInterfaces()[i4], interfaces[i4], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return g(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    private static String getKotlinMetadataClassName() {
        return "kotlin.Metadata";
    }

    public static boolean h(Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().getSimpleName().equals("Nullable")) {
                return true;
            }
        }
        return false;
    }

    static int i(@h Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    static int j(Object[] objArr, Object obj) {
        for (int i4 = 0; i4 < objArr.length; i4++) {
            if (obj.equals(objArr[i4])) {
                return i4;
            }
        }
        throw new NoSuchElementException();
    }

    public static boolean k(Set<? extends Annotation> set, Class<? extends Annotation> cls) {
        if (set.isEmpty()) {
            return false;
        }
        for (Annotation annotation : set) {
            if (annotation.annotationType() == cls) {
                return true;
            }
        }
        return false;
    }

    public static boolean l(Class<?> cls) {
        Class<? extends Annotation> cls2 = f55614d;
        return cls2 != null && cls.isAnnotationPresent(cls2);
    }

    public static boolean m(Class<?> cls) {
        String name = cls.getName();
        return name.startsWith("android.") || name.startsWith("androidx.") || name.startsWith("java.") || name.startsWith("javax.") || name.startsWith("kotlin.") || name.startsWith("kotlinx.") || name.startsWith("scala.");
    }

    public static Set<? extends Annotation> n(AnnotatedElement annotatedElement) {
        return o(annotatedElement.getAnnotations());
    }

    public static Set<? extends Annotation> o(Annotation[] annotationArr) {
        LinkedHashSet linkedHashSet = null;
        for (Annotation annotation : annotationArr) {
            if (annotation.annotationType().isAnnotationPresent(j.class)) {
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                }
                linkedHashSet.add(annotation);
            }
        }
        return linkedHashSet != null ? Collections.unmodifiableSet(linkedHashSet) : f55611a;
    }

    public static String p(String str, @h g gVar) {
        if (gVar == null) {
            return str;
        }
        String name = gVar.name();
        return g.f55599d1.equals(name) ? str : name;
    }

    public static String q(String str, AnnotatedElement annotatedElement) {
        return p(str, (g) annotatedElement.getAnnotation(g.class));
    }

    public static <T> Constructor<T> r(Class<T> cls) {
        if (f55613c != null) {
            Constructor<T> e4 = e(cls);
            e4.setAccessible(true);
            return e4;
        }
        throw new IllegalStateException("DefaultConstructorMarker not on classpath. Make sure the Kotlin stdlib is on the classpath.");
    }

    public static JsonDataException s(String str, String str2, JsonReader jsonReader) {
        String format;
        String path = jsonReader.getPath();
        if (str2.equals(str)) {
            format = String.format("Required value '%s' missing at %s", str, path);
        } else {
            format = String.format("Required value '%s' (JSON name '%s') missing at %s", str, str2, path);
        }
        return new JsonDataException(format);
    }

    public static Type t(Type type) {
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            if (wildcardType.getLowerBounds().length != 0) {
                return type;
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (upperBounds.length == 1) {
                return upperBounds[0];
            }
            throw new IllegalArgumentException();
        }
        return type;
    }

    public static Type u(Type type, Class<?> cls, Type type2) {
        return v(type, cls, type2, new LinkedHashSet());
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r10 = r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.reflect.Type v(java.lang.reflect.Type r8, java.lang.Class<?> r9, java.lang.reflect.Type r10, java.util.Collection<java.lang.reflect.TypeVariable<?>> r11) {
        /*
        L0:
            boolean r0 = r10 instanceof java.lang.reflect.TypeVariable
            if (r0 == 0) goto L18
            r0 = r10
            java.lang.reflect.TypeVariable r0 = (java.lang.reflect.TypeVariable) r0
            boolean r1 = r11.contains(r0)
            if (r1 == 0) goto Le
            return r10
        Le:
            r11.add(r0)
            java.lang.reflect.Type r10 = w(r8, r9, r0)
            if (r10 != r0) goto L0
            return r10
        L18:
            boolean r0 = r10 instanceof java.lang.Class
            if (r0 == 0) goto L35
            r0 = r10
            java.lang.Class r0 = (java.lang.Class) r0
            boolean r1 = r0.isArray()
            if (r1 == 0) goto L35
            java.lang.Class r10 = r0.getComponentType()
            java.lang.reflect.Type r8 = v(r8, r9, r10, r11)
            if (r10 != r8) goto L30
            goto L34
        L30:
            java.lang.reflect.GenericArrayType r0 = com.squareup.moshi.z.b(r8)
        L34:
            return r0
        L35:
            boolean r0 = r10 instanceof java.lang.reflect.GenericArrayType
            if (r0 == 0) goto L4b
            java.lang.reflect.GenericArrayType r10 = (java.lang.reflect.GenericArrayType) r10
            java.lang.reflect.Type r0 = r10.getGenericComponentType()
            java.lang.reflect.Type r8 = v(r8, r9, r0, r11)
            if (r0 != r8) goto L46
            goto L4a
        L46:
            java.lang.reflect.GenericArrayType r10 = com.squareup.moshi.z.b(r8)
        L4a:
            return r10
        L4b:
            boolean r0 = r10 instanceof java.lang.reflect.ParameterizedType
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L8d
            java.lang.reflect.ParameterizedType r10 = (java.lang.reflect.ParameterizedType) r10
            java.lang.reflect.Type r0 = r10.getOwnerType()
            java.lang.reflect.Type r3 = v(r8, r9, r0, r11)
            if (r3 == r0) goto L5f
            r0 = 1
            goto L60
        L5f:
            r0 = 0
        L60:
            java.lang.reflect.Type[] r4 = r10.getActualTypeArguments()
            int r5 = r4.length
        L65:
            if (r2 >= r5) goto L80
            r6 = r4[r2]
            java.lang.reflect.Type r6 = v(r8, r9, r6, r11)
            r7 = r4[r2]
            if (r6 == r7) goto L7d
            if (r0 != 0) goto L7b
            java.lang.Object r0 = r4.clone()
            r4 = r0
            java.lang.reflect.Type[] r4 = (java.lang.reflect.Type[]) r4
            r0 = 1
        L7b:
            r4[r2] = r6
        L7d:
            int r2 = r2 + 1
            goto L65
        L80:
            if (r0 == 0) goto L8c
            com.squareup.moshi.internal.c$b r8 = new com.squareup.moshi.internal.c$b
            java.lang.reflect.Type r9 = r10.getRawType()
            r8.<init>(r3, r9, r4)
            r10 = r8
        L8c:
            return r10
        L8d:
            boolean r0 = r10 instanceof java.lang.reflect.WildcardType
            if (r0 == 0) goto Lbf
            java.lang.reflect.WildcardType r10 = (java.lang.reflect.WildcardType) r10
            java.lang.reflect.Type[] r0 = r10.getLowerBounds()
            java.lang.reflect.Type[] r3 = r10.getUpperBounds()
            int r4 = r0.length
            if (r4 != r1) goto Lad
            r1 = r0[r2]
            java.lang.reflect.Type r8 = v(r8, r9, r1, r11)
            r9 = r0[r2]
            if (r8 == r9) goto Lbf
            java.lang.reflect.WildcardType r8 = com.squareup.moshi.z.q(r8)
            return r8
        Lad:
            int r0 = r3.length
            if (r0 != r1) goto Lbf
            r0 = r3[r2]
            java.lang.reflect.Type r8 = v(r8, r9, r0, r11)     // Catch: java.lang.Throwable -> Lc0
            r9 = r3[r2]
            if (r8 == r9) goto Lbf
            java.lang.reflect.WildcardType r8 = com.squareup.moshi.z.p(r8)
            return r8
        Lbf:
            return r10
        Lc0:
            r8 = move-exception
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.moshi.internal.c.v(java.lang.reflect.Type, java.lang.Class, java.lang.reflect.Type, java.util.Collection):java.lang.reflect.Type");
    }

    static Type w(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> d4 = d(typeVariable);
        if (d4 == null) {
            return typeVariable;
        }
        Type g4 = g(type, cls, d4);
        if (g4 instanceof ParameterizedType) {
            return ((ParameterizedType) g4).getActualTypeArguments()[j(d4.getTypeParameters(), typeVariable)];
        }
        return typeVariable;
    }

    public static RuntimeException x(InvocationTargetException invocationTargetException) {
        Throwable targetException = invocationTargetException.getTargetException();
        if (!(targetException instanceof RuntimeException)) {
            if (targetException instanceof Error) {
                throw ((Error) targetException);
            }
            throw new RuntimeException(targetException);
        }
        throw ((RuntimeException) targetException);
    }

    public static String y(Type type, Set<? extends Annotation> set) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(type);
        if (set.isEmpty()) {
            str = " (with no annotations)";
        } else {
            str = " annotated " + set;
        }
        sb.append(str);
        return sb.toString();
    }

    static String z(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
