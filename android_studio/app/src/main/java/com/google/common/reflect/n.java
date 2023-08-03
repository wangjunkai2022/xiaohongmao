package com.google.common.reflect;

import com.google.common.base.a0;
import com.google.common.base.c0;
import com.google.common.base.q;
import com.google.common.base.u;
import com.google.common.base.w;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.k5;
import com.google.common.collect.w2;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.text.Typography;
import okhttp3.HttpUrl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Types.java */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private static final q<Type, String> f34971a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final u f34972b = u.p(", ").s("null");

    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    static class a implements q<Type, String> {
        a() {
        }

        @Override // com.google.common.base.q
        /* renamed from: a */
        public String apply(Type type) {
            return e.f34984e.c(type);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    public static class b extends m {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ AtomicReference f34973b;

        b(AtomicReference atomicReference) {
            this.f34973b = atomicReference;
        }

        @Override // com.google.common.reflect.m
        void b(Class<?> cls) {
            this.f34973b.set(cls.getComponentType());
        }

        @Override // com.google.common.reflect.m
        void c(GenericArrayType genericArrayType) {
            this.f34973b.set(genericArrayType.getGenericComponentType());
        }

        @Override // com.google.common.reflect.m
        void e(TypeVariable<?> typeVariable) {
            this.f34973b.set(n.q(typeVariable.getBounds()));
        }

        @Override // com.google.common.reflect.m
        void f(WildcardType wildcardType) {
            this.f34973b.set(n.q(wildcardType.getUpperBounds()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    public static abstract class c {

        /* renamed from: a  reason: collision with root package name */
        public static final c f34974a;

        /* renamed from: b  reason: collision with root package name */
        public static final c f34975b;

        /* renamed from: c  reason: collision with root package name */
        static final c f34976c;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ c[] f34977d;

        /* compiled from: Types.java */
        /* loaded from: classes2.dex */
        enum a extends c {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.reflect.n.c
            @NullableDecl
            Class<?> b(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Types.java */
        /* loaded from: classes2.dex */
        public class b<T> {
            b() {
            }
        }

        /* compiled from: Types.java */
        /* renamed from: com.google.common.reflect.n$c$c  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        enum C0264c extends c {
            C0264c(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.reflect.n.c
            @NullableDecl
            Class<?> b(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Types.java */
        /* loaded from: classes2.dex */
        public static class d extends b<String> {
            d() {
            }
        }

        static {
            a aVar = new a("OWNED_BY_ENCLOSING_CLASS", 0);
            f34974a = aVar;
            C0264c c0264c = new C0264c("LOCAL_CLASS_HAS_NO_OWNER", 1);
            f34975b = c0264c;
            f34977d = new c[]{aVar, c0264c};
            f34976c = a();
        }

        private c(String str, int i4) {
        }

        private static c a() {
            c[] values;
            new d();
            ParameterizedType parameterizedType = (ParameterizedType) d.class.getGenericSuperclass();
            for (c cVar : values()) {
                if (cVar.b(b.class) == parameterizedType.getOwnerType()) {
                    return cVar;
                }
            }
            throw new AssertionError();
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f34977d.clone();
        }

        @NullableDecl
        abstract Class<?> b(Class<?> cls);

        /* synthetic */ c(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    public static final class d implements GenericArrayType, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f34978b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Type f34979a;

        d(Type type) {
            this.f34979a = e.f34984e.e(type);
        }

        public boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return w.a(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f34979a;
        }

        public int hashCode() {
            return this.f34979a.hashCode();
        }

        public String toString() {
            return n.t(this.f34979a) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f34980a;

        /* renamed from: b  reason: collision with root package name */
        public static final e f34981b;

        /* renamed from: c  reason: collision with root package name */
        public static final e f34982c;

        /* renamed from: d  reason: collision with root package name */
        public static final e f34983d;

        /* renamed from: e  reason: collision with root package name */
        static final e f34984e;

        /* renamed from: f  reason: collision with root package name */
        private static final /* synthetic */ e[] f34985f;

        /* compiled from: Types.java */
        /* loaded from: classes2.dex */
        enum a extends e {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.reflect.n.e
            Type e(Type type) {
                a0.E(type);
                if (type instanceof Class) {
                    Class cls = (Class) type;
                    return cls.isArray() ? new d(cls.getComponentType()) : type;
                }
                return type;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.n.e
            /* renamed from: h */
            public GenericArrayType b(Type type) {
                return new d(type);
            }
        }

        /* compiled from: Types.java */
        /* loaded from: classes2.dex */
        enum b extends e {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.reflect.n.e
            Type b(Type type) {
                if (type instanceof Class) {
                    return n.i((Class) type);
                }
                return new d(type);
            }

            @Override // com.google.common.reflect.n.e
            Type e(Type type) {
                return (Type) a0.E(type);
            }
        }

        /* compiled from: Types.java */
        /* loaded from: classes2.dex */
        enum c extends e {
            c(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.reflect.n.e
            Type b(Type type) {
                return e.f34981b.b(type);
            }

            @Override // com.google.common.reflect.n.e
            String c(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", new Class[0]).invoke(type, new Object[0]);
                } catch (IllegalAccessException e4) {
                    e = e4;
                    throw new RuntimeException(e);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError("Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e10) {
                    e = e10;
                    throw new RuntimeException(e);
                }
            }

            @Override // com.google.common.reflect.n.e
            Type e(Type type) {
                return e.f34981b.e(type);
            }
        }

        /* compiled from: Types.java */
        /* loaded from: classes2.dex */
        enum d extends e {
            d(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.reflect.n.e
            boolean a() {
                return false;
            }

            @Override // com.google.common.reflect.n.e
            Type b(Type type) {
                return e.f34982c.b(type);
            }

            @Override // com.google.common.reflect.n.e
            String c(Type type) {
                return e.f34982c.c(type);
            }

            @Override // com.google.common.reflect.n.e
            Type e(Type type) {
                return e.f34982c.e(type);
            }
        }

        /* compiled from: Types.java */
        /* renamed from: com.google.common.reflect.n$e$e  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        static class C0265e extends com.google.common.reflect.i<Map.Entry<String, int[][]>> {
            C0265e() {
            }
        }

        /* compiled from: Types.java */
        /* loaded from: classes2.dex */
        static class f extends com.google.common.reflect.i<int[]> {
            f() {
            }
        }

        static {
            a aVar = new a("JAVA6", 0);
            f34980a = aVar;
            b bVar = new b("JAVA7", 1);
            f34981b = bVar;
            c cVar = new c("JAVA8", 2);
            f34982c = cVar;
            d dVar = new d("JAVA9", 3);
            f34983d = dVar;
            f34985f = new e[]{aVar, bVar, cVar, dVar};
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new C0265e().a().toString().contains("java.util.Map.java.util.Map")) {
                    f34984e = cVar;
                } else {
                    f34984e = dVar;
                }
            } else if (new f().a() instanceof Class) {
                f34984e = bVar;
            } else {
                f34984e = aVar;
            }
        }

        private e(String str, int i4) {
        }

        public static e valueOf(String str) {
            return (e) Enum.valueOf(e.class, str);
        }

        public static e[] values() {
            return (e[]) f34985f.clone();
        }

        boolean a() {
            return true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Type b(Type type);

        String c(Type type) {
            return n.t(type);
        }

        final ImmutableList<Type> d(Type[] typeArr) {
            ImmutableList.a builder = ImmutableList.builder();
            for (Type type : typeArr) {
                builder.g(e(type));
            }
            return builder.e();
        }

        abstract Type e(Type type);

        /* synthetic */ e(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    public static final class f<X> {

        /* renamed from: a  reason: collision with root package name */
        static final boolean f34986a = !f.class.getTypeParameters()[0].equals(n.l(f.class, "X", new Type[0]));

        f() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    public static final class g implements ParameterizedType, Serializable {

        /* renamed from: d  reason: collision with root package name */
        private static final long f34987d = 0;
        @NullableDecl

        /* renamed from: a  reason: collision with root package name */
        private final Type f34988a;

        /* renamed from: b  reason: collision with root package name */
        private final ImmutableList<Type> f34989b;

        /* renamed from: c  reason: collision with root package name */
        private final Class<?> f34990c;

        g(@NullableDecl Type type, Class<?> cls, Type[] typeArr) {
            a0.E(cls);
            a0.d(typeArr.length == cls.getTypeParameters().length);
            n.g(typeArr, "type parameter");
            this.f34988a = type;
            this.f34990c = cls;
            this.f34989b = e.f34984e.d(typeArr);
        }

        public boolean equals(Object obj) {
            if (obj instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) obj;
                return getRawType().equals(parameterizedType.getRawType()) && w.a(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
            }
            return false;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return n.s(this.f34989b);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getOwnerType() {
            return this.f34988a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f34990c;
        }

        public int hashCode() {
            Type type = this.f34988a;
            return ((type == null ? 0 : type.hashCode()) ^ this.f34989b.hashCode()) ^ this.f34990c.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            if (this.f34988a != null) {
                e eVar = e.f34984e;
                if (eVar.a()) {
                    sb.append(eVar.c(this.f34988a));
                    sb.append('.');
                }
            }
            sb.append(this.f34990c.getName());
            sb.append(Typography.less);
            sb.append(n.f34972b.k(w2.U(this.f34989b, n.f34971a)));
            sb.append(Typography.greater);
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    public static final class h<D extends GenericDeclaration> {

        /* renamed from: a  reason: collision with root package name */
        private final D f34991a;

        /* renamed from: b  reason: collision with root package name */
        private final String f34992b;

        /* renamed from: c  reason: collision with root package name */
        private final ImmutableList<Type> f34993c;

        h(D d4, String str, Type[] typeArr) {
            n.g(typeArr, "bound for type variable");
            this.f34991a = (D) a0.E(d4);
            this.f34992b = (String) a0.E(str);
            this.f34993c = ImmutableList.copyOf(typeArr);
        }

        public Type[] a() {
            return n.s(this.f34993c);
        }

        public D b() {
            return this.f34991a;
        }

        public String c() {
            return this.f34992b;
        }

        public String d() {
            return this.f34992b;
        }

        public boolean equals(Object obj) {
            if (f.f34986a) {
                if (obj != null && Proxy.isProxyClass(obj.getClass()) && (Proxy.getInvocationHandler(obj) instanceof i)) {
                    h hVar = ((i) Proxy.getInvocationHandler(obj)).f34995a;
                    return this.f34992b.equals(hVar.c()) && this.f34991a.equals(hVar.b()) && this.f34993c.equals(hVar.f34993c);
                }
                return false;
            } else if (obj instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) obj;
                return this.f34992b.equals(typeVariable.getName()) && this.f34991a.equals(typeVariable.getGenericDeclaration());
            } else {
                return false;
            }
        }

        public int hashCode() {
            return this.f34991a.hashCode() ^ this.f34992b.hashCode();
        }

        public String toString() {
            return this.f34992b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    public static final class i implements InvocationHandler {

        /* renamed from: b  reason: collision with root package name */
        private static final ImmutableMap<String, Method> f34994b;

        /* renamed from: a  reason: collision with root package name */
        private final h<?> f34995a;

        static {
            Method[] methods;
            ImmutableMap.b builder = ImmutableMap.builder();
            for (Method method : h.class.getMethods()) {
                if (method.getDeclaringClass().equals(h.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    builder.d(method.getName(), method);
                }
            }
            f34994b = builder.a();
        }

        i(h<?> hVar) {
            this.f34995a = hVar;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = f34994b.get(name);
            if (method2 != null) {
                try {
                    return method2.invoke(this.f34995a, objArr);
                } catch (InvocationTargetException e4) {
                    throw e4.getCause();
                }
            }
            throw new UnsupportedOperationException(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Types.java */
    /* loaded from: classes2.dex */
    public static final class j implements WildcardType, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f34996c = 0;

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableList<Type> f34997a;

        /* renamed from: b  reason: collision with root package name */
        private final ImmutableList<Type> f34998b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public j(Type[] typeArr, Type[] typeArr2) {
            n.g(typeArr, "lower bound for wildcard");
            n.g(typeArr2, "upper bound for wildcard");
            e eVar = e.f34984e;
            this.f34997a = eVar.d(typeArr);
            this.f34998b = eVar.d(typeArr2);
        }

        public boolean equals(Object obj) {
            if (obj instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) obj;
                return this.f34997a.equals(Arrays.asList(wildcardType.getLowerBounds())) && this.f34998b.equals(Arrays.asList(wildcardType.getUpperBounds()));
            }
            return false;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            return n.s(this.f34997a);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return n.s(this.f34998b);
        }

        public int hashCode() {
            return this.f34997a.hashCode() ^ this.f34998b.hashCode();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("?");
            k5<Type> it = this.f34997a.iterator();
            while (it.hasNext()) {
                sb.append(" super ");
                sb.append(e.f34984e.c(it.next()));
            }
            for (Type type : n.h(this.f34998b)) {
                sb.append(" extends ");
                sb.append(e.f34984e.c(type));
            }
            return sb.toString();
        }
    }

    private n() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(Type[] typeArr, String str) {
        Class cls;
        for (Type type : typeArr) {
            if (type instanceof Class) {
                a0.y(!cls.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterable<Type> h(Iterable<Type> iterable) {
        return w2.o(iterable, c0.q(c0.m(Object.class)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> i(Class<?> cls) {
        return Array.newInstance(cls, 0).getClass();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NullableDecl
    public static Type j(Type type) {
        a0.E(type);
        AtomicReference atomicReference = new AtomicReference();
        new b(atomicReference).a(type);
        return (Type) atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Type k(Type type) {
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            a0.e(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
            if (lowerBounds.length == 1) {
                return r(k(lowerBounds[0]));
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            a0.e(upperBounds.length == 1, "Wildcard should have only one upper bound.");
            return p(k(upperBounds[0]));
        }
        return e.f34984e.b(type);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <D extends GenericDeclaration> TypeVariable<D> l(D d4, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return o(d4, str, typeArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ParameterizedType m(Class<?> cls, Type... typeArr) {
        return new g(c.f34976c.b(cls), cls, typeArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ParameterizedType n(@NullableDecl Type type, Class<?> cls, Type... typeArr) {
        if (type == null) {
            return m(cls, typeArr);
        }
        a0.E(typeArr);
        a0.u(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new g(type, cls, typeArr);
    }

    private static <D extends GenericDeclaration> TypeVariable<D> o(D d4, String str, Type[] typeArr) {
        return (TypeVariable) com.google.common.reflect.h.d(TypeVariable.class, new i(new h(d4, str, typeArr)));
    }

    @h3.d
    static WildcardType p(Type type) {
        return new j(new Type[0], new Type[]{type});
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NullableDecl
    public static Type q(Type[] typeArr) {
        for (Type type : typeArr) {
            Type j4 = j(type);
            if (j4 != null) {
                if (j4 instanceof Class) {
                    Class cls = (Class) j4;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return p(j4);
            }
        }
        return null;
    }

    @h3.d
    static WildcardType r(Type type) {
        return new j(new Type[]{type}, new Type[]{Object.class});
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Type[] s(Collection<Type> collection) {
        return (Type[]) collection.toArray(new Type[collection.size()]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String t(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
