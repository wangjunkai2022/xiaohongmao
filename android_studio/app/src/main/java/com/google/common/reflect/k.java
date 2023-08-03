package com.google.common.reflect;

import com.google.common.base.a0;
import com.google.common.base.u;
import com.google.common.base.w;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.f3;
import com.google.common.reflect.n;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.text.Typography;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: TypeResolver.java */
@h3.a
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final c f34957a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TypeResolver.java */
    /* loaded from: classes2.dex */
    public static class a extends m {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f34958b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Type f34959c;

        a(Map map, Type type) {
            this.f34958b = map;
            this.f34959c = type;
        }

        @Override // com.google.common.reflect.m
        void b(Class<?> cls) {
            if (this.f34959c instanceof WildcardType) {
                return;
            }
            throw new IllegalArgumentException("No type mapping from " + cls + " to " + this.f34959c);
        }

        @Override // com.google.common.reflect.m
        void c(GenericArrayType genericArrayType) {
            Type type = this.f34959c;
            if (type instanceof WildcardType) {
                return;
            }
            Type j4 = n.j(type);
            a0.u(j4 != null, "%s is not an array type.", this.f34959c);
            k.g(this.f34958b, genericArrayType.getGenericComponentType(), j4);
        }

        @Override // com.google.common.reflect.m
        void d(ParameterizedType parameterizedType) {
            Type type = this.f34959c;
            if (type instanceof WildcardType) {
                return;
            }
            ParameterizedType parameterizedType2 = (ParameterizedType) k.e(ParameterizedType.class, type);
            if (parameterizedType.getOwnerType() != null && parameterizedType2.getOwnerType() != null) {
                k.g(this.f34958b, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
            }
            a0.y(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, this.f34959c);
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
            a0.y(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
            for (int i4 = 0; i4 < actualTypeArguments.length; i4++) {
                k.g(this.f34958b, actualTypeArguments[i4], actualTypeArguments2[i4]);
            }
        }

        @Override // com.google.common.reflect.m
        void e(TypeVariable<?> typeVariable) {
            this.f34958b.put(new d(typeVariable), this.f34959c);
        }

        @Override // com.google.common.reflect.m
        void f(WildcardType wildcardType) {
            Type type = this.f34959c;
            if (type instanceof WildcardType) {
                WildcardType wildcardType2 = (WildcardType) type;
                Type[] upperBounds = wildcardType.getUpperBounds();
                Type[] upperBounds2 = wildcardType2.getUpperBounds();
                Type[] lowerBounds = wildcardType.getLowerBounds();
                Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                a0.y(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, this.f34959c);
                for (int i4 = 0; i4 < upperBounds.length; i4++) {
                    k.g(this.f34958b, upperBounds[i4], upperBounds2[i4]);
                }
                for (int i10 = 0; i10 < lowerBounds.length; i10++) {
                    k.g(this.f34958b, lowerBounds[i10], lowerBounds2[i10]);
                }
            }
        }
    }

    /* compiled from: TypeResolver.java */
    /* loaded from: classes2.dex */
    private static final class b extends m {

        /* renamed from: b  reason: collision with root package name */
        private final Map<d, Type> f34960b = f3.Y();

        private b() {
        }

        static ImmutableMap<d, Type> g(Type type) {
            a0.E(type);
            b bVar = new b();
            bVar.a(type);
            return ImmutableMap.copyOf((Map) bVar.f34960b);
        }

        private void h(d dVar, Type type) {
            if (this.f34960b.containsKey(dVar)) {
                return;
            }
            Type type2 = type;
            while (type2 != null) {
                if (dVar.a(type2)) {
                    while (type != null) {
                        type = this.f34960b.remove(d.c(type));
                    }
                    return;
                }
                type2 = this.f34960b.get(d.c(type2));
            }
            this.f34960b.put(dVar, type);
        }

        @Override // com.google.common.reflect.m
        void b(Class<?> cls) {
            a(cls.getGenericSuperclass());
            a(cls.getGenericInterfaces());
        }

        @Override // com.google.common.reflect.m
        void d(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            a0.g0(typeParameters.length == actualTypeArguments.length);
            for (int i4 = 0; i4 < typeParameters.length; i4++) {
                h(new d(typeParameters[i4]), actualTypeArguments[i4]);
            }
            a(cls);
            a(parameterizedType.getOwnerType());
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TypeResolver.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final TypeVariable<?> f34965a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public d(TypeVariable<?> typeVariable) {
            this.f34965a = (TypeVariable) a0.E(typeVariable);
        }

        private boolean b(TypeVariable<?> typeVariable) {
            return this.f34965a.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.f34965a.getName().equals(typeVariable.getName());
        }

        static d c(Type type) {
            if (type instanceof TypeVariable) {
                return new d((TypeVariable) type);
            }
            return null;
        }

        boolean a(Type type) {
            if (type instanceof TypeVariable) {
                return b((TypeVariable) type);
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                return b(((d) obj).f34965a);
            }
            return false;
        }

        public int hashCode() {
            return w.b(this.f34965a.getGenericDeclaration(), this.f34965a.getName());
        }

        public String toString() {
            return this.f34965a.toString();
        }
    }

    /* compiled from: TypeResolver.java */
    /* loaded from: classes2.dex */
    private static class e {

        /* renamed from: b  reason: collision with root package name */
        static final e f34966b = new e();

        /* renamed from: a  reason: collision with root package name */
        private final AtomicInteger f34967a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TypeResolver.java */
        /* loaded from: classes2.dex */
        public class a extends e {

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ TypeVariable f34968c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(AtomicInteger atomicInteger, TypeVariable typeVariable) {
                super(atomicInteger, null);
                this.f34968c = typeVariable;
            }

            @Override // com.google.common.reflect.k.e
            TypeVariable<?> b(Type[] typeArr) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                linkedHashSet.addAll(Arrays.asList(this.f34968c.getBounds()));
                if (linkedHashSet.size() > 1) {
                    linkedHashSet.remove(Object.class);
                }
                return super.b((Type[]) linkedHashSet.toArray(new Type[0]));
            }
        }

        /* synthetic */ e(AtomicInteger atomicInteger, a aVar) {
            this(atomicInteger);
        }

        private Type c(@NullableDecl Type type) {
            if (type == null) {
                return null;
            }
            return a(type);
        }

        private e d(TypeVariable<?> typeVariable) {
            return new a(this.f34967a, typeVariable);
        }

        private e e() {
            return new e(this.f34967a);
        }

        final Type a(Type type) {
            a0.E(type);
            if ((type instanceof Class) || (type instanceof TypeVariable)) {
                return type;
            }
            if (type instanceof GenericArrayType) {
                return n.k(e().a(((GenericArrayType) type).getGenericComponentType()));
            }
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Class cls = (Class) parameterizedType.getRawType();
                TypeVariable<?>[] typeParameters = cls.getTypeParameters();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i4 = 0; i4 < actualTypeArguments.length; i4++) {
                    actualTypeArguments[i4] = d(typeParameters[i4]).a(actualTypeArguments[i4]);
                }
                return n.n(e().c(parameterizedType.getOwnerType()), cls, actualTypeArguments);
            } else if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return wildcardType.getLowerBounds().length == 0 ? b(wildcardType.getUpperBounds()) : type;
            } else {
                throw new AssertionError("must have been one of the known types");
            }
        }

        TypeVariable<?> b(Type[] typeArr) {
            return n.l(e.class, "capture#" + this.f34967a.incrementAndGet() + "-of ? extends " + u.o(Typography.amp).n(typeArr), typeArr);
        }

        private e() {
            this(new AtomicInteger());
        }

        private e(AtomicInteger atomicInteger) {
            this.f34967a = atomicInteger;
        }
    }

    /* synthetic */ k(c cVar, a aVar) {
        this(cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k d(Type type) {
        return new k().o(b.g(type));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T e(Class<T> cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException unused) {
            throw new IllegalArgumentException(obj + " is not a " + cls.getSimpleName());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k f(Type type) {
        return new k().o(b.g(e.f34966b.a(type)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(Map<d, Type> map, Type type, Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new a(map, type2).a(type);
    }

    private Type h(GenericArrayType genericArrayType) {
        return n.k(j(genericArrayType.getGenericComponentType()));
    }

    private ParameterizedType i(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return n.n(ownerType == null ? null : j(ownerType), (Class) j(parameterizedType.getRawType()), k(parameterizedType.getActualTypeArguments()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Type[] k(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i4 = 0; i4 < typeArr.length; i4++) {
            typeArr2[i4] = j(typeArr[i4]);
        }
        return typeArr2;
    }

    private WildcardType m(WildcardType wildcardType) {
        return new n.j(k(wildcardType.getLowerBounds()), k(wildcardType.getUpperBounds()));
    }

    public Type j(Type type) {
        a0.E(type);
        if (type instanceof TypeVariable) {
            return this.f34957a.a((TypeVariable) type);
        }
        if (type instanceof ParameterizedType) {
            return i((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return h((GenericArrayType) type);
        }
        return type instanceof WildcardType ? m((WildcardType) type) : type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Type[] l(Type[] typeArr) {
        for (int i4 = 0; i4 < typeArr.length; i4++) {
            typeArr[i4] = j(typeArr[i4]);
        }
        return typeArr;
    }

    public k n(Type type, Type type2) {
        HashMap Y = f3.Y();
        g(Y, (Type) a0.E(type), (Type) a0.E(type2));
        return o(Y);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k o(Map<d, ? extends Type> map) {
        return new k(this.f34957a.c(map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TypeResolver.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final ImmutableMap<d, Type> f34961a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: TypeResolver.java */
        /* loaded from: classes2.dex */
        public class a extends c {

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ TypeVariable f34962b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ c f34963c;

            a(TypeVariable typeVariable, c cVar) {
                this.f34962b = typeVariable;
                this.f34963c = cVar;
            }

            @Override // com.google.common.reflect.k.c
            public Type b(TypeVariable<?> typeVariable, c cVar) {
                return typeVariable.getGenericDeclaration().equals(this.f34962b.getGenericDeclaration()) ? typeVariable : this.f34963c.b(typeVariable, cVar);
            }
        }

        c() {
            this.f34961a = ImmutableMap.of();
        }

        final Type a(TypeVariable<?> typeVariable) {
            return b(typeVariable, new a(typeVariable, this));
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.reflect.GenericDeclaration] */
        Type b(TypeVariable<?> typeVariable, c cVar) {
            Type type = this.f34961a.get(new d(typeVariable));
            if (type == null) {
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length == 0) {
                    return typeVariable;
                }
                Type[] k10 = new k(cVar, null).k(bounds);
                return (n.f.f34986a && Arrays.equals(bounds, k10)) ? typeVariable : n.l(typeVariable.getGenericDeclaration(), typeVariable.getName(), k10);
            }
            return new k(cVar, null).j(type);
        }

        final c c(Map<d, ? extends Type> map) {
            ImmutableMap.b builder = ImmutableMap.builder();
            builder.g(this.f34961a);
            for (Map.Entry<d, ? extends Type> entry : map.entrySet()) {
                d key = entry.getKey();
                Type value = entry.getValue();
                a0.u(!key.a(value), "Type variable %s bound to itself", key);
                builder.d(key, value);
            }
            return new c(builder.a());
        }

        private c(ImmutableMap<d, Type> immutableMap) {
            this.f34961a = immutableMap;
        }
    }

    public k() {
        this.f34957a = new c();
    }

    private k(c cVar) {
        this.f34957a = cVar;
    }
}
