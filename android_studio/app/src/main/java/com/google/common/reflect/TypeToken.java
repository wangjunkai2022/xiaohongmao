package com.google.common.reflect;

import com.google.common.base.a0;
import com.google.common.base.b0;
import com.google.common.base.u;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.c1;
import com.google.common.collect.f3;
import com.google.common.collect.k5;
import com.google.common.collect.s3;
import com.google.common.collect.x1;
import com.google.common.reflect.e;
import com.google.common.reflect.k;
import com.google.common.reflect.n;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

@h3.a
/* loaded from: classes2.dex */
public abstract class TypeToken<T> extends com.google.common.reflect.i<T> implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f34900d = 3637540370352322684L;

    /* renamed from: a  reason: collision with root package name */
    private final Type f34901a;
    @MonotonicNonNullDecl

    /* renamed from: b  reason: collision with root package name */
    private transient k f34902b;
    @MonotonicNonNullDecl

    /* renamed from: c  reason: collision with root package name */
    private transient k f34903c;

    /* loaded from: classes2.dex */
    public class TypeSet extends x1<TypeToken<? super T>> implements Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f34904c = 0;
        @MonotonicNonNullDecl

        /* renamed from: a  reason: collision with root package name */
        private transient ImmutableSet<TypeToken<? super T>> f34905a;

        TypeSet() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<TypeToken<? super T>> M() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.f34905a;
            if (immutableSet == null) {
                ImmutableSet<TypeToken<? super T>> J = c1.s(i.f34923a.d(TypeToken.this)).n(j.f34929a).J();
                this.f34905a = J;
                return J;
            }
            return immutableSet;
        }

        public TypeToken<T>.TypeSet classes() {
            return new f(TypeToken.this, null);
        }

        public TypeToken<T>.TypeSet interfaces() {
            return new g(this);
        }

        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) i.f34924b.c(TypeToken.this.w()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends e.b<T> {
        a(Method method) {
            super(method);
        }

        @Override // com.google.common.reflect.e, com.google.common.reflect.c
        public TypeToken<T> f() {
            return TypeToken.this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e.b, com.google.common.reflect.e
        public Type[] p0() {
            return TypeToken.this.r().l(super.p0());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e.b, com.google.common.reflect.e
        public Type[] q0() {
            return TypeToken.this.u().l(super.q0());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e.b, com.google.common.reflect.e
        public Type r0() {
            return TypeToken.this.r().j(super.r0());
        }

        @Override // com.google.common.reflect.e, com.google.common.reflect.c
        public String toString() {
            return f() + "." + super.toString();
        }
    }

    /* loaded from: classes2.dex */
    class b extends e.a<T> {
        b(Constructor constructor) {
            super(constructor);
        }

        @Override // com.google.common.reflect.e, com.google.common.reflect.c
        public TypeToken<T> f() {
            return TypeToken.this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e.a, com.google.common.reflect.e
        public Type[] p0() {
            return TypeToken.this.r().l(super.p0());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e.a, com.google.common.reflect.e
        public Type[] q0() {
            return TypeToken.this.u().l(super.q0());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.e.a, com.google.common.reflect.e
        public Type r0() {
            return TypeToken.this.r().j(super.r0());
        }

        @Override // com.google.common.reflect.e, com.google.common.reflect.c
        public String toString() {
            return f() + "(" + u.p(", ").n(q0()) + ")";
        }
    }

    /* loaded from: classes2.dex */
    class c extends m {
        c() {
        }

        @Override // com.google.common.reflect.m
        void c(GenericArrayType genericArrayType) {
            a(genericArrayType.getGenericComponentType());
        }

        @Override // com.google.common.reflect.m
        void d(ParameterizedType parameterizedType) {
            a(parameterizedType.getActualTypeArguments());
            a(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.m
        void e(TypeVariable<?> typeVariable) {
            throw new IllegalArgumentException(TypeToken.this.f34901a + "contains a type variable and is not safe for the operation");
        }

        @Override // com.google.common.reflect.m
        void f(WildcardType wildcardType) {
            a(wildcardType.getLowerBounds());
            a(wildcardType.getUpperBounds());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends m {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ImmutableSet.a f34910b;

        d(ImmutableSet.a aVar) {
            this.f34910b = aVar;
        }

        @Override // com.google.common.reflect.m
        void b(Class<?> cls) {
            this.f34910b.g(cls);
        }

        @Override // com.google.common.reflect.m
        void c(GenericArrayType genericArrayType) {
            this.f34910b.g(n.i(TypeToken.of(genericArrayType.getGenericComponentType()).getRawType()));
        }

        @Override // com.google.common.reflect.m
        void d(ParameterizedType parameterizedType) {
            this.f34910b.g((Class) parameterizedType.getRawType());
        }

        @Override // com.google.common.reflect.m
        void e(TypeVariable<?> typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override // com.google.common.reflect.m
        void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        private final Type[] f34912a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f34913b;

        e(Type[] typeArr, boolean z9) {
            this.f34912a = typeArr;
            this.f34913b = z9;
        }

        boolean a(Type type) {
            for (Type type2 : this.f34912a) {
                boolean isSubtypeOf = TypeToken.of(type2).isSubtypeOf(type);
                boolean z9 = this.f34913b;
                if (isSubtypeOf == z9) {
                    return z9;
                }
            }
            return !this.f34913b;
        }

        boolean b(Type type) {
            TypeToken<?> of = TypeToken.of(type);
            for (Type type2 : this.f34912a) {
                boolean isSubtypeOf = of.isSubtypeOf(type2);
                boolean z9 = this.f34913b;
                if (isSubtypeOf == z9) {
                    return z9;
                }
            }
            return !this.f34913b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class f extends TypeToken<T>.TypeSet {

        /* renamed from: f  reason: collision with root package name */
        private static final long f34914f = 0;
        @MonotonicNonNullDecl

        /* renamed from: d  reason: collision with root package name */
        private transient ImmutableSet<TypeToken<? super T>> f34915d;

        private f() {
            super();
        }

        private Object b0() {
            return TypeToken.this.getTypes().classes();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<TypeToken<? super T>> M() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.f34915d;
            if (immutableSet == null) {
                ImmutableSet<TypeToken<? super T>> J = c1.s(i.f34923a.a().d(TypeToken.this)).n(j.f34929a).J();
                this.f34915d = J;
                return J;
            }
            return immutableSet;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) i.f34924b.a().c(TypeToken.this.w()));
        }

        /* synthetic */ f(TypeToken typeToken, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class g extends TypeToken<T>.TypeSet {

        /* renamed from: g  reason: collision with root package name */
        private static final long f34917g = 0;

        /* renamed from: d  reason: collision with root package name */
        private final transient TypeToken<T>.TypeSet f34918d;
        @MonotonicNonNullDecl

        /* renamed from: e  reason: collision with root package name */
        private transient ImmutableSet<TypeToken<? super T>> f34919e;

        /* loaded from: classes2.dex */
        class a implements b0<Class<?>> {
            a() {
            }

            @Override // com.google.common.base.b0
            /* renamed from: a */
            public boolean apply(Class<?> cls) {
                return cls.isInterface();
            }
        }

        g(TypeToken<T>.TypeSet typeSet) {
            super();
            this.f34918d = typeSet;
        }

        private Object b0() {
            return TypeToken.this.getTypes().interfaces();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.x1, com.google.common.collect.e1
        /* renamed from: Y */
        public Set<TypeToken<? super T>> M() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.f34919e;
            if (immutableSet == null) {
                ImmutableSet<TypeToken<? super T>> J = c1.s(this.f34918d).n(j.f34930b).J();
                this.f34919e = J;
                return J;
            }
            return immutableSet;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            return this;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return c1.s(i.f34924b.c(TypeToken.this.w())).n(new a()).J();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class h<T> extends TypeToken<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f34922e = 0;

        h(Type type) {
            super(type, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class i<K> {

        /* renamed from: a  reason: collision with root package name */
        static final i<TypeToken<?>> f34923a = new a();

        /* renamed from: b  reason: collision with root package name */
        static final i<Class<?>> f34924b = new b();

        /* loaded from: classes2.dex */
        static class a extends i<TypeToken<?>> {
            a() {
                super(null);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: i */
            public Iterable<? extends TypeToken<?>> e(TypeToken<?> typeToken) {
                return typeToken.s();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: j */
            public Class<?> f(TypeToken<?> typeToken) {
                return typeToken.getRawType();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            @NullableDecl
            /* renamed from: k */
            public TypeToken<?> g(TypeToken<?> typeToken) {
                return typeToken.t();
            }
        }

        /* loaded from: classes2.dex */
        static class b extends i<Class<?>> {
            b() {
                super(null);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: i */
            public Iterable<? extends Class<?>> e(Class<?> cls) {
                return Arrays.asList(cls.getInterfaces());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            /* renamed from: j */
            public Class<?> f(Class<?> cls) {
                return cls;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.i
            @NullableDecl
            /* renamed from: k */
            public Class<?> g(Class<?> cls) {
                return cls.getSuperclass();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class c extends e<K> {
            c(i iVar) {
                super(iVar);
            }

            @Override // com.google.common.reflect.TypeToken.i
            ImmutableList<K> c(Iterable<? extends K> iterable) {
                ImmutableList.a builder = ImmutableList.builder();
                for (K k10 : iterable) {
                    if (!f(k10).isInterface()) {
                        builder.g(k10);
                    }
                }
                return super.c(builder.e());
            }

            @Override // com.google.common.reflect.TypeToken.i.e, com.google.common.reflect.TypeToken.i
            Iterable<? extends K> e(K k10) {
                return ImmutableSet.of();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public static class d extends s3<K> {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Comparator f34926c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ Map f34927d;

            d(Comparator comparator, Map map) {
                this.f34926c = comparator;
                this.f34927d = map;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.common.collect.s3, java.util.Comparator
            public int compare(K k10, K k11) {
                return this.f34926c.compare(this.f34927d.get(k10), this.f34927d.get(k11));
            }
        }

        /* loaded from: classes2.dex */
        private static class e<K> extends i<K> {

            /* renamed from: c  reason: collision with root package name */
            private final i<K> f34928c;

            e(i<K> iVar) {
                super(null);
                this.f34928c = iVar;
            }

            @Override // com.google.common.reflect.TypeToken.i
            Iterable<? extends K> e(K k10) {
                return this.f34928c.e(k10);
            }

            @Override // com.google.common.reflect.TypeToken.i
            Class<?> f(K k10) {
                return this.f34928c.f(k10);
            }

            @Override // com.google.common.reflect.TypeToken.i
            K g(K k10) {
                return this.f34928c.g(k10);
            }
        }

        private i() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @CanIgnoreReturnValue
        private int b(K k10, Map<? super K, Integer> map) {
            Integer num = map.get(k10);
            if (num != null) {
                return num.intValue();
            }
            boolean isInterface = f(k10).isInterface();
            int i4 = isInterface;
            for (K k11 : e(k10)) {
                i4 = Math.max(i4, b(k11, map));
            }
            K g4 = g(k10);
            int i10 = i4;
            if (g4 != null) {
                i10 = Math.max(i4, b(g4, map));
            }
            int i11 = i10 + 1;
            map.put(k10, Integer.valueOf(i11));
            return i11;
        }

        private static <K, V> ImmutableList<K> h(Map<K, V> map, Comparator<? super V> comparator) {
            return (ImmutableList<K>) new d(comparator, map).n(map.keySet());
        }

        final i<K> a() {
            return new c(this);
        }

        ImmutableList<K> c(Iterable<? extends K> iterable) {
            HashMap Y = f3.Y();
            for (K k10 : iterable) {
                b(k10, Y);
            }
            return h(Y, s3.B().G());
        }

        final ImmutableList<K> d(K k10) {
            return c(ImmutableList.of(k10));
        }

        abstract Iterable<? extends K> e(K k10);

        abstract Class<?> f(K k10);

        @NullableDecl
        abstract K g(K k10);

        /* synthetic */ i(a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static abstract class j implements b0<TypeToken<?>> {

        /* renamed from: a  reason: collision with root package name */
        public static final j f34929a;

        /* renamed from: b  reason: collision with root package name */
        public static final j f34930b;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ j[] f34931c;

        /* loaded from: classes2.dex */
        enum a extends j {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.base.b0
            /* renamed from: a */
            public boolean apply(TypeToken<?> typeToken) {
                return ((((TypeToken) typeToken).f34901a instanceof TypeVariable) || (((TypeToken) typeToken).f34901a instanceof WildcardType)) ? false : true;
            }
        }

        /* loaded from: classes2.dex */
        enum b extends j {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.base.b0
            /* renamed from: a */
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.getRawType().isInterface();
            }
        }

        static {
            a aVar = new a("IGNORE_TYPE_VARIABLE_OR_WILDCARD", 0);
            f34929a = aVar;
            b bVar = new b("INTERFACE_ONLY", 1);
            f34930b = bVar;
            f34931c = new j[]{aVar, bVar};
        }

        private j(String str, int i4) {
        }

        public static j valueOf(String str) {
            return (j) Enum.valueOf(j.class, str);
        }

        public static j[] values() {
            return (j[]) f34931c.clone();
        }

        /* synthetic */ j(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    /* synthetic */ TypeToken(Type type, a aVar) {
        this(type);
    }

    private boolean A(Type type) {
        Iterator<TypeToken<? super T>> it = getTypes().iterator();
        while (it.hasNext()) {
            Type v9 = it.next().v();
            if (v9 != null && of(v9).isSubtypeOf(type)) {
                return true;
            }
        }
        return false;
    }

    private boolean B(GenericArrayType genericArrayType) {
        Type type = this.f34901a;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                return of((Class) cls.getComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            return of(((GenericArrayType) type).getGenericComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        } else {
            return false;
        }
    }

    private boolean C(ParameterizedType parameterizedType) {
        Class<? super Object> rawType = of(parameterizedType).getRawType();
        if (J(rawType)) {
            TypeVariable<Class<? super Object>>[] typeParameters = rawType.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            for (int i4 = 0; i4 < typeParameters.length; i4++) {
                if (!of(r().j(typeParameters[i4])).z(actualTypeArguments[i4], typeParameters[i4])) {
                    return false;
                }
            }
            return Modifier.isStatic(((Class) parameterizedType.getRawType()).getModifiers()) || parameterizedType.getOwnerType() == null || A(parameterizedType.getOwnerType());
        }
        return false;
    }

    private boolean D(GenericArrayType genericArrayType) {
        Type type = this.f34901a;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (!cls.isArray()) {
                return cls.isAssignableFrom(Object[].class);
            }
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(cls.getComponentType());
        } else if (type instanceof GenericArrayType) {
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(((GenericArrayType) this.f34901a).getGenericComponentType());
        } else {
            return false;
        }
    }

    private boolean E() {
        return com.google.common.primitives.i.c().contains(this.f34901a);
    }

    private static Type F(Type type) {
        return n.e.f34981b.b(type);
    }

    private TypeToken<?> H(Type type) {
        TypeToken<?> of = of(r().j(type));
        of.f34903c = this.f34903c;
        of.f34902b = this.f34902b;
        return of;
    }

    private Type I(Class<?> cls) {
        if (!(this.f34901a instanceof Class) || (cls.getTypeParameters().length != 0 && getRawType().getTypeParameters().length == 0)) {
            TypeToken K = K(cls);
            return new k().n(K.getSupertype(getRawType()).f34901a, this.f34901a).j(K.f34901a);
        }
        return cls;
    }

    private boolean J(Class<?> cls) {
        k5<Class<? super T>> it = w().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    @h3.d
    static <T> TypeToken<? extends T> K(Class<T> cls) {
        if (cls.isArray()) {
            return (TypeToken<? extends T>) of(n.k(K(cls.getComponentType()).f34901a));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : K(cls.getEnclosingClass()).f34901a;
        if (typeParameters.length <= 0 && (type == null || type == cls.getEnclosingClass())) {
            return of((Class) cls);
        }
        return (TypeToken<? extends T>) of(n.n(type, cls, typeParameters));
    }

    private static e h(Type[] typeArr) {
        return new e(typeArr, true);
    }

    @NullableDecl
    private TypeToken<? super T> i(Type type) {
        TypeToken<? super T> typeToken = (TypeToken<? super T>) of(type);
        if (typeToken.getRawType().isInterface()) {
            return null;
        }
        return typeToken;
    }

    private ImmutableList<TypeToken<? super T>> j(Type[] typeArr) {
        ImmutableList.a builder = ImmutableList.builder();
        for (Type type : typeArr) {
            TypeToken<?> of = of(type);
            if (of.getRawType().isInterface()) {
                builder.g(of);
            }
        }
        return builder.e();
    }

    private static Type k(TypeVariable<?> typeVariable, Type type) {
        if (type instanceof WildcardType) {
            return l(typeVariable, (WildcardType) type);
        }
        return n(type);
    }

    private static WildcardType l(TypeVariable<?> typeVariable, WildcardType wildcardType) {
        Type[] upperBounds;
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!h(bounds).a(type)) {
                arrayList.add(n(type));
            }
        }
        return new n.j(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    private static ParameterizedType m(ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i4 = 0; i4 < actualTypeArguments.length; i4++) {
            actualTypeArguments[i4] = k(typeParameters[i4], actualTypeArguments[i4]);
        }
        return n.n(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    private static Type n(Type type) {
        if (type instanceof ParameterizedType) {
            return m((ParameterizedType) type);
        }
        return type instanceof GenericArrayType ? n.k(n(((GenericArrayType) type).getGenericComponentType())) : type;
    }

    private static e o(Type[] typeArr) {
        return new e(typeArr, false);
    }

    public static <T> TypeToken<T> of(Class<T> cls) {
        return new h(cls);
    }

    private TypeToken<? extends T> p(Class<?> cls) {
        return (TypeToken<? extends T>) of(F(getComponentType().getSubtype(cls.getComponentType()).f34901a));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private TypeToken<? super T> q(Class<? super T> cls) {
        return (TypeToken<? super T>) of(F(((TypeToken) a0.Z(getComponentType(), "%s isn't a super type of %s", cls, this)).getSupertype(cls.getComponentType()).f34901a));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k r() {
        k kVar = this.f34903c;
        if (kVar == null) {
            k d4 = k.d(this.f34901a);
            this.f34903c = d4;
            return d4;
        }
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k u() {
        k kVar = this.f34902b;
        if (kVar == null) {
            k f10 = k.f(this.f34901a);
            this.f34902b = f10;
            return f10;
        }
        return kVar;
    }

    @NullableDecl
    private Type v() {
        Type type = this.f34901a;
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getOwnerType();
        }
        if (type instanceof Class) {
            return ((Class) type).getEnclosingClass();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImmutableSet<Class<? super T>> w() {
        ImmutableSet.a builder = ImmutableSet.builder();
        new d(builder).a(this.f34901a);
        return builder.e();
    }

    private TypeToken<? extends T> x(Class<?> cls, Type[] typeArr) {
        if (typeArr.length > 0) {
            return (TypeToken<? extends T>) of(typeArr[0]).getSubtype(cls);
        }
        throw new IllegalArgumentException(cls + " isn't a subclass of " + this);
    }

    private TypeToken<? super T> y(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            TypeToken<?> of = of(type);
            if (of.isSubtypeOf(cls)) {
                return (TypeToken<? super T>) of.getSupertype(cls);
            }
        }
        throw new IllegalArgumentException(cls + " isn't a super type of " + this);
    }

    private boolean z(Type type, TypeVariable<?> typeVariable) {
        if (this.f34901a.equals(type)) {
            return true;
        }
        if (type instanceof WildcardType) {
            WildcardType l10 = l(typeVariable, (WildcardType) type);
            return o(l10.getUpperBounds()).b(this.f34901a) && o(l10.getLowerBounds()).a(this.f34901a);
        }
        return n(this.f34901a).equals(n(type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CanIgnoreReturnValue
    public final TypeToken<T> G() {
        new c().a(this.f34901a);
        return this;
    }

    protected Object L() {
        return of(new k().j(this.f34901a));
    }

    public final com.google.common.reflect.e<T, T> constructor(Constructor<?> constructor) {
        a0.y(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new b(constructor);
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj instanceof TypeToken) {
            return this.f34901a.equals(((TypeToken) obj).f34901a);
        }
        return false;
    }

    @NullableDecl
    public final TypeToken<?> getComponentType() {
        Type j4 = n.j(this.f34901a);
        if (j4 == null) {
            return null;
        }
        return of(j4);
    }

    public final Class<? super T> getRawType() {
        return w().iterator().next();
    }

    public final TypeToken<? extends T> getSubtype(Class<?> cls) {
        a0.u(!(this.f34901a instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        Type type = this.f34901a;
        if (type instanceof WildcardType) {
            return x(cls, ((WildcardType) type).getLowerBounds());
        }
        if (isArray()) {
            return p(cls);
        }
        a0.y(getRawType().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        TypeToken<? extends T> typeToken = (TypeToken<? extends T>) of(I(cls));
        a0.y(typeToken.isSubtypeOf((TypeToken<?>) this), "%s does not appear to be a subtype of %s", typeToken, this);
        return typeToken;
    }

    public final TypeToken<? super T> getSupertype(Class<? super T> cls) {
        a0.y(J(cls), "%s is not a super class of %s", cls, this);
        Type type = this.f34901a;
        if (type instanceof TypeVariable) {
            return y(cls, ((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return y(cls, ((WildcardType) type).getUpperBounds());
        }
        if (cls.isArray()) {
            return q(cls);
        }
        return (TypeToken<? super T>) H(K(cls).f34901a);
    }

    public final Type getType() {
        return this.f34901a;
    }

    public final TypeToken<T>.TypeSet getTypes() {
        return new TypeSet();
    }

    public int hashCode() {
        return this.f34901a.hashCode();
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        Type type = this.f34901a;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final boolean isSubtypeOf(TypeToken<?> typeToken) {
        return isSubtypeOf(typeToken.getType());
    }

    public final boolean isSupertypeOf(TypeToken<?> typeToken) {
        return typeToken.isSubtypeOf(getType());
    }

    public final com.google.common.reflect.e<T, Object> method(Method method) {
        a0.y(J(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new a(method);
    }

    public final TypeToken<?> resolveType(Type type) {
        a0.E(type);
        return of(u().j(type));
    }

    final ImmutableList<TypeToken<? super T>> s() {
        Type type = this.f34901a;
        if (type instanceof TypeVariable) {
            return j(((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return j(((WildcardType) type).getUpperBounds());
        }
        ImmutableList.a builder = ImmutableList.builder();
        for (Type type2 : getRawType().getGenericInterfaces()) {
            builder.g(H(type2));
        }
        return builder.e();
    }

    @NullableDecl
    final TypeToken<? super T> t() {
        Type type = this.f34901a;
        if (type instanceof TypeVariable) {
            return i(((TypeVariable) type).getBounds()[0]);
        }
        if (type instanceof WildcardType) {
            return i(((WildcardType) type).getUpperBounds()[0]);
        }
        Type genericSuperclass = getRawType().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (TypeToken<? super T>) H(genericSuperclass);
    }

    public String toString() {
        return n.t(this.f34901a);
    }

    public final TypeToken<T> unwrap() {
        return E() ? of(com.google.common.primitives.i.e((Class) this.f34901a)) : this;
    }

    public final <X> TypeToken<T> where(com.google.common.reflect.j<X> jVar, TypeToken<X> typeToken) {
        return new h(new k().o(ImmutableMap.of(new k.d(jVar.f34956a), typeToken.f34901a)).j(this.f34901a));
    }

    public final TypeToken<T> wrap() {
        return isPrimitive() ? of(com.google.common.primitives.i.f((Class) this.f34901a)) : this;
    }

    protected TypeToken() {
        Type a10 = a();
        this.f34901a = a10;
        a0.x0(!(a10 instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", a10);
    }

    public static TypeToken<?> of(Type type) {
        return new h(type);
    }

    public final boolean isSubtypeOf(Type type) {
        a0.E(type);
        if (type instanceof WildcardType) {
            return h(((WildcardType) type).getLowerBounds()).b(this.f34901a);
        }
        Type type2 = this.f34901a;
        if (type2 instanceof WildcardType) {
            return h(((WildcardType) type2).getUpperBounds()).a(type);
        }
        if (type2 instanceof TypeVariable) {
            return type2.equals(type) || h(((TypeVariable) this.f34901a).getBounds()).a(type);
        } else if (type2 instanceof GenericArrayType) {
            return of(type).D((GenericArrayType) this.f34901a);
        } else {
            if (type instanceof Class) {
                return J((Class) type);
            }
            if (type instanceof ParameterizedType) {
                return C((ParameterizedType) type);
            }
            if (type instanceof GenericArrayType) {
                return B((GenericArrayType) type);
            }
            return false;
        }
    }

    public final boolean isSupertypeOf(Type type) {
        return of(type).isSubtypeOf(getType());
    }

    protected TypeToken(Class<?> cls) {
        Type a10 = super.a();
        if (a10 instanceof Class) {
            this.f34901a = a10;
        } else {
            this.f34901a = k.d(cls).j(a10);
        }
    }

    public final <X> TypeToken<T> where(com.google.common.reflect.j<X> jVar, Class<X> cls) {
        return where(jVar, of((Class) cls));
    }

    private TypeToken(Type type) {
        this.f34901a = (Type) a0.E(type);
    }
}
