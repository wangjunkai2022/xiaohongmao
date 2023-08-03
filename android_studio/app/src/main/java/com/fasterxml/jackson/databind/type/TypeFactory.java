package com.fasterxml.jackson.databind.type;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.util.LRUMap;
import com.fasterxml.jackson.databind.util.g;
import com.fasterxml.jackson.databind.util.m;
import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public class TypeFactory implements Serializable {

    /* renamed from: e  reason: collision with root package name */
    private static final long f15903e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final JavaType[] f15904f = new JavaType[0];

    /* renamed from: g  reason: collision with root package name */
    protected static final TypeFactory f15905g = new TypeFactory();

    /* renamed from: h  reason: collision with root package name */
    protected static final TypeBindings f15906h = TypeBindings.emptyBindings();

    /* renamed from: i  reason: collision with root package name */
    private static final Class<?> f15907i = String.class;

    /* renamed from: j  reason: collision with root package name */
    private static final Class<?> f15908j = Object.class;

    /* renamed from: k  reason: collision with root package name */
    private static final Class<?> f15909k = Comparable.class;

    /* renamed from: l  reason: collision with root package name */
    private static final Class<?> f15910l = Class.class;

    /* renamed from: m  reason: collision with root package name */
    private static final Class<?> f15911m = Enum.class;

    /* renamed from: n  reason: collision with root package name */
    private static final Class<?> f15912n = e.class;

    /* renamed from: o  reason: collision with root package name */
    private static final Class<?> f15913o;

    /* renamed from: p  reason: collision with root package name */
    private static final Class<?> f15914p;

    /* renamed from: q  reason: collision with root package name */
    private static final Class<?> f15915q;

    /* renamed from: r  reason: collision with root package name */
    protected static final SimpleType f15916r;

    /* renamed from: s  reason: collision with root package name */
    protected static final SimpleType f15917s;

    /* renamed from: t  reason: collision with root package name */
    protected static final SimpleType f15918t;

    /* renamed from: u  reason: collision with root package name */
    protected static final SimpleType f15919u;

    /* renamed from: v  reason: collision with root package name */
    protected static final SimpleType f15920v;

    /* renamed from: w  reason: collision with root package name */
    protected static final SimpleType f15921w;

    /* renamed from: x  reason: collision with root package name */
    protected static final SimpleType f15922x;

    /* renamed from: y  reason: collision with root package name */
    protected static final SimpleType f15923y;

    /* renamed from: z  reason: collision with root package name */
    protected static final SimpleType f15924z;

    /* renamed from: a  reason: collision with root package name */
    protected final m<Object, JavaType> f15925a;

    /* renamed from: b  reason: collision with root package name */
    protected final b[] f15926b;

    /* renamed from: c  reason: collision with root package name */
    protected final TypeParser f15927c;

    /* renamed from: d  reason: collision with root package name */
    protected final ClassLoader f15928d;

    static {
        Class<?> cls = Boolean.TYPE;
        f15913o = cls;
        Class<?> cls2 = Integer.TYPE;
        f15914p = cls2;
        Class<?> cls3 = Long.TYPE;
        f15915q = cls3;
        f15916r = new SimpleType(cls);
        f15917s = new SimpleType(cls2);
        f15918t = new SimpleType(cls3);
        f15919u = new SimpleType(String.class);
        f15920v = new SimpleType(Object.class);
        f15921w = new SimpleType(Comparable.class);
        f15922x = new SimpleType(Enum.class);
        f15923y = new SimpleType(Class.class);
        f15924z = new SimpleType(e.class);
    }

    private TypeFactory() {
        this((m<Object, JavaType>) null);
    }

    private TypeBindings b(JavaType javaType, int i4, Class<?> cls, boolean z9) {
        PlaceholderForType[] placeholderForTypeArr = new PlaceholderForType[i4];
        for (int i10 = 0; i10 < i4; i10++) {
            placeholderForTypeArr[i10] = new PlaceholderForType(i10);
        }
        JavaType findSuperType = k(null, cls, TypeBindings.create(cls, placeholderForTypeArr)).findSuperType(javaType.getRawClass());
        if (findSuperType != null) {
            String v9 = v(javaType, findSuperType);
            if (v9 != null && !z9) {
                throw new IllegalArgumentException("Failed to specialize base type " + javaType.toCanonical() + " as " + cls.getName() + ", problem: " + v9);
            }
            JavaType[] javaTypeArr = new JavaType[i4];
            for (int i11 = 0; i11 < i4; i11++) {
                JavaType actualType = placeholderForTypeArr[i11].actualType();
                if (actualType == null) {
                    actualType = unknownType();
                }
                javaTypeArr[i11] = actualType;
            }
            return TypeBindings.create(cls, javaTypeArr);
        }
        throw new IllegalArgumentException(String.format("Internal error: unable to locate supertype (%s) from resolved subtype %s", javaType.getRawClass().getName(), cls.getName()));
    }

    private JavaType c(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        JavaType javaType2;
        List<JavaType> typeParameters = typeBindings.getTypeParameters();
        if (typeParameters.isEmpty()) {
            javaType2 = w();
        } else if (typeParameters.size() == 1) {
            javaType2 = typeParameters.get(0);
        } else {
            throw new IllegalArgumentException("Strange Collection type " + cls.getName() + ": cannot determine type parameters");
        }
        return CollectionType.construct(cls, typeBindings, javaType, javaTypeArr, javaType2);
    }

    public static TypeFactory defaultInstance() {
        return f15905g;
    }

    private JavaType q(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        JavaType w9;
        JavaType javaType2;
        JavaType javaType3;
        if (cls == Properties.class) {
            w9 = f15919u;
        } else {
            List<JavaType> typeParameters = typeBindings.getTypeParameters();
            int size = typeParameters.size();
            if (size != 0) {
                if (size != 2) {
                    Object[] objArr = new Object[4];
                    objArr[0] = g.j0(cls);
                    objArr[1] = Integer.valueOf(size);
                    objArr[2] = size == 1 ? "" : "s";
                    objArr[3] = typeBindings;
                    throw new IllegalArgumentException(String.format("Strange Map type %s with %d type parameter%s (%s), can not resolve", objArr));
                }
                javaType2 = typeParameters.get(1);
                javaType3 = typeParameters.get(0);
                return MapType.construct(cls, typeBindings, javaType, javaTypeArr, javaType3, javaType2);
            }
            w9 = w();
        }
        javaType3 = w9;
        javaType2 = javaType3;
        return MapType.construct(cls, typeBindings, javaType, javaTypeArr, javaType3, javaType2);
    }

    public static Class<?> rawClass(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        return defaultInstance().constructType(type).getRawClass();
    }

    private JavaType s(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        JavaType javaType2;
        List<JavaType> typeParameters = typeBindings.getTypeParameters();
        if (typeParameters.isEmpty()) {
            javaType2 = w();
        } else if (typeParameters.size() == 1) {
            javaType2 = typeParameters.get(0);
        } else {
            throw new IllegalArgumentException("Strange Reference type " + cls.getName() + ": cannot determine type parameters");
        }
        return ReferenceType.construct(cls, typeBindings, javaType, javaTypeArr, javaType2);
    }

    public static JavaType unknownType() {
        return defaultInstance().w();
    }

    private String v(JavaType javaType, JavaType javaType2) throws IllegalArgumentException {
        List<JavaType> typeParameters = javaType.getBindings().getTypeParameters();
        List<JavaType> typeParameters2 = javaType2.getBindings().getTypeParameters();
        int size = typeParameters2.size();
        int size2 = typeParameters.size();
        int i4 = 0;
        while (i4 < size2) {
            JavaType javaType3 = typeParameters.get(i4);
            JavaType unknownType = i4 < size ? typeParameters2.get(i4) : unknownType();
            if (!x(javaType3, unknownType) && !javaType3.hasRawClass(Object.class) && ((i4 != 0 || !javaType.isMapLikeType() || !unknownType.hasRawClass(Object.class)) && (!javaType3.isInterface() || !javaType3.isTypeOrSuperTypeOf(unknownType.getRawClass())))) {
                return String.format("Type parameter #%d/%d differs; can not specialize %s with %s", Integer.valueOf(i4 + 1), Integer.valueOf(size2), javaType3.toCanonical(), unknownType.toCanonical());
            }
            i4++;
        }
        return null;
    }

    private boolean x(JavaType javaType, JavaType javaType2) {
        if (javaType2 instanceof PlaceholderForType) {
            ((PlaceholderForType) javaType2).actualType(javaType);
            return true;
        } else if (javaType.getRawClass() != javaType2.getRawClass()) {
            return false;
        } else {
            List<JavaType> typeParameters = javaType.getBindings().getTypeParameters();
            List<JavaType> typeParameters2 = javaType2.getBindings().getTypeParameters();
            int size = typeParameters.size();
            for (int i4 = 0; i4 < size; i4++) {
                if (!x(typeParameters.get(i4), typeParameters2.get(i4))) {
                    return false;
                }
            }
            return true;
        }
    }

    protected JavaType a(Type type, JavaType javaType) {
        if (this.f15926b == null) {
            return javaType;
        }
        TypeBindings bindings = javaType.getBindings();
        if (bindings == null) {
            bindings = f15906h;
        }
        b[] bVarArr = this.f15926b;
        int length = bVarArr.length;
        int i4 = 0;
        while (i4 < length) {
            b bVar = bVarArr[i4];
            JavaType a10 = bVar.a(javaType, type, bindings, this);
            if (a10 == null) {
                throw new IllegalStateException(String.format("TypeModifier %s (of type %s) return null for type %s", bVar, bVar.getClass().getName(), javaType));
            }
            i4++;
            javaType = a10;
        }
        return javaType;
    }

    public void clearCache() {
        this.f15925a.clear();
    }

    public ArrayType constructArrayType(Class<?> cls) {
        return ArrayType.construct(i(null, cls, null), null);
    }

    public CollectionLikeType constructCollectionLikeType(Class<?> cls, Class<?> cls2) {
        return constructCollectionLikeType(cls, k(null, cls2, f15906h));
    }

    public CollectionType constructCollectionType(Class<? extends Collection> cls, Class<?> cls2) {
        return constructCollectionType(cls, k(null, cls2, f15906h));
    }

    public JavaType constructFromCanonical(String str) throws IllegalArgumentException {
        return this.f15927c.parse(str);
    }

    public JavaType constructGeneralizedType(JavaType javaType, Class<?> cls) {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass == cls) {
            return javaType;
        }
        JavaType findSuperType = javaType.findSuperType(cls);
        if (findSuperType == null) {
            if (!cls.isAssignableFrom(rawClass)) {
                throw new IllegalArgumentException(String.format("Class %s not a super-type of %s", cls.getName(), javaType));
            }
            throw new IllegalArgumentException(String.format("Internal error: class %s not included as super-type for %s", cls.getName(), javaType));
        }
        return findSuperType;
    }

    public MapLikeType constructMapLikeType(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        TypeBindings typeBindings = f15906h;
        return constructMapLikeType(cls, k(null, cls2, typeBindings), k(null, cls3, typeBindings));
    }

    public MapType constructMapType(Class<? extends Map> cls, Class<?> cls2, Class<?> cls3) {
        JavaType k10;
        JavaType k11;
        if (cls == Properties.class) {
            k10 = f15919u;
            k11 = k10;
        } else {
            TypeBindings typeBindings = f15906h;
            k10 = k(null, cls2, typeBindings);
            k11 = k(null, cls3, typeBindings);
        }
        return constructMapType(cls, k10, k11);
    }

    public JavaType constructParametricType(Class<?> cls, Class<?>... clsArr) {
        int length = clsArr.length;
        JavaType[] javaTypeArr = new JavaType[length];
        for (int i4 = 0; i4 < length; i4++) {
            javaTypeArr[i4] = k(null, clsArr[i4], f15906h);
        }
        return constructParametricType(cls, javaTypeArr);
    }

    @Deprecated
    public JavaType constructParametrizedType(Class<?> cls, Class<?> cls2, JavaType... javaTypeArr) {
        return constructParametricType(cls, javaTypeArr);
    }

    public CollectionLikeType constructRawCollectionLikeType(Class<?> cls) {
        return constructCollectionLikeType(cls, unknownType());
    }

    public CollectionType constructRawCollectionType(Class<? extends Collection> cls) {
        return constructCollectionType(cls, unknownType());
    }

    public MapLikeType constructRawMapLikeType(Class<?> cls) {
        return constructMapLikeType(cls, unknownType(), unknownType());
    }

    public MapType constructRawMapType(Class<? extends Map> cls) {
        return constructMapType(cls, unknownType(), unknownType());
    }

    public JavaType constructReferenceType(Class<?> cls, JavaType javaType) {
        return ReferenceType.construct(cls, TypeBindings.create(cls, javaType), null, null, javaType);
    }

    public JavaType constructSimpleType(Class<?> cls, JavaType[] javaTypeArr) {
        return k(null, cls, TypeBindings.create(cls, javaTypeArr));
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls) throws IllegalArgumentException {
        return constructSpecializedType(javaType, cls, false);
    }

    public JavaType constructType(Type type) {
        return i(null, type, f15906h);
    }

    protected JavaType d(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        JavaType h4;
        return (!typeBindings.isEmpty() || (h4 = h(cls)) == null) ? r(cls, typeBindings, javaType, javaTypeArr) : h4;
    }

    protected Class<?> e(String str) {
        if ("int".equals(str)) {
            return Integer.TYPE;
        }
        if ("long".equals(str)) {
            return Long.TYPE;
        }
        if (TypedValues.Custom.S_FLOAT.equals(str)) {
            return Float.TYPE;
        }
        if ("double".equals(str)) {
            return Double.TYPE;
        }
        if (TypedValues.Custom.S_BOOLEAN.equals(str)) {
            return Boolean.TYPE;
        }
        if (io.sentry.profilemeasurements.a.f83541m.equals(str)) {
            return Byte.TYPE;
        }
        if ("char".equals(str)) {
            return Character.TYPE;
        }
        if ("short".equals(str)) {
            return Short.TYPE;
        }
        if ("void".equals(str)) {
            return Void.TYPE;
        }
        return null;
    }

    public Class<?> findClass(String str) throws ClassNotFoundException {
        Class<?> e4;
        if (str.indexOf(46) >= 0 || (e4 = e(str)) == null) {
            Throwable th = null;
            ClassLoader classLoader = getClassLoader();
            if (classLoader == null) {
                classLoader = Thread.currentThread().getContextClassLoader();
            }
            if (classLoader != null) {
                try {
                    return z(str, true, classLoader);
                } catch (Exception e10) {
                    th = g.O(e10);
                }
            }
            try {
                return y(str);
            } catch (Exception e11) {
                if (th == null) {
                    th = g.O(e11);
                }
                g.v0(th);
                throw new ClassNotFoundException(th.getMessage(), th);
            }
        }
        return e4;
    }

    public JavaType[] findTypeParameters(JavaType javaType, Class<?> cls) {
        JavaType findSuperType = javaType.findSuperType(cls);
        if (findSuperType == null) {
            return f15904f;
        }
        return findSuperType.getBindings().b();
    }

    public ClassLoader getClassLoader() {
        return this.f15928d;
    }

    protected JavaType h(Class<?> cls) {
        if (cls.isPrimitive()) {
            if (cls == f15913o) {
                return f15916r;
            }
            if (cls == f15914p) {
                return f15917s;
            }
            if (cls == f15915q) {
                return f15918t;
            }
            return null;
        } else if (cls == f15907i) {
            return f15919u;
        } else {
            if (cls == f15908j) {
                return f15920v;
            }
            if (cls == f15912n) {
                return f15924z;
            }
            return null;
        }
    }

    protected JavaType i(a aVar, Type type, TypeBindings typeBindings) {
        JavaType p9;
        if (type instanceof Class) {
            p9 = k(aVar, (Class) type, f15906h);
        } else if (type instanceof ParameterizedType) {
            p9 = l(aVar, (ParameterizedType) type, typeBindings);
        } else if (type instanceof JavaType) {
            return (JavaType) type;
        } else {
            if (type instanceof GenericArrayType) {
                p9 = j(aVar, (GenericArrayType) type, typeBindings);
            } else if (type instanceof TypeVariable) {
                p9 = m(aVar, (TypeVariable) type, typeBindings);
            } else if (type instanceof WildcardType) {
                p9 = p(aVar, (WildcardType) type, typeBindings);
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Unrecognized Type: ");
                sb.append(type == null ? "[null]" : type.toString());
                throw new IllegalArgumentException(sb.toString());
            }
        }
        return a(type, p9);
    }

    protected JavaType j(a aVar, GenericArrayType genericArrayType, TypeBindings typeBindings) {
        return ArrayType.construct(i(aVar, genericArrayType.getGenericComponentType(), typeBindings), typeBindings);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JavaType k(a aVar, Class<?> cls, TypeBindings typeBindings) {
        a b10;
        JavaType t9;
        JavaType[] u9;
        JavaType r9;
        JavaType h4 = h(cls);
        if (h4 != null) {
            return h4;
        }
        Object asKey = (typeBindings == null || typeBindings.isEmpty()) ? cls : typeBindings.asKey(cls);
        JavaType javaType = this.f15925a.get(asKey);
        if (javaType != null) {
            return javaType;
        }
        if (aVar == null) {
            b10 = new a(cls);
        } else {
            a c10 = aVar.c(cls);
            if (c10 != null) {
                ResolvedRecursiveType resolvedRecursiveType = new ResolvedRecursiveType(cls, f15906h);
                c10.a(resolvedRecursiveType);
                return resolvedRecursiveType;
            }
            b10 = aVar.b(cls);
        }
        if (cls.isArray()) {
            r9 = ArrayType.construct(i(b10, cls.getComponentType(), typeBindings), typeBindings);
        } else {
            if (cls.isInterface()) {
                t9 = null;
                u9 = u(b10, cls, typeBindings);
            } else {
                t9 = t(b10, cls, typeBindings);
                u9 = u(b10, cls, typeBindings);
            }
            JavaType javaType2 = t9;
            JavaType[] javaTypeArr = u9;
            if (cls == Properties.class) {
                SimpleType simpleType = f15919u;
                javaType = MapType.construct(cls, typeBindings, javaType2, javaTypeArr, simpleType, simpleType);
            } else if (javaType2 != null) {
                javaType = javaType2.refine(cls, typeBindings, javaType2, javaTypeArr);
            }
            r9 = (javaType == null && (javaType = n(b10, cls, typeBindings, javaType2, javaTypeArr)) == null && (javaType = o(b10, cls, typeBindings, javaType2, javaTypeArr)) == null) ? r(cls, typeBindings, javaType2, javaTypeArr) : javaType;
        }
        b10.d(r9);
        if (!r9.hasHandlers()) {
            this.f15925a.putIfAbsent(asKey, r9);
        }
        return r9;
    }

    protected JavaType l(a aVar, ParameterizedType parameterizedType, TypeBindings typeBindings) {
        TypeBindings create;
        Class<?> cls = (Class) parameterizedType.getRawType();
        if (cls == f15911m) {
            return f15922x;
        }
        if (cls == f15909k) {
            return f15921w;
        }
        if (cls == f15910l) {
            return f15923y;
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        int length = actualTypeArguments == null ? 0 : actualTypeArguments.length;
        if (length == 0) {
            create = f15906h;
        } else {
            JavaType[] javaTypeArr = new JavaType[length];
            for (int i4 = 0; i4 < length; i4++) {
                javaTypeArr[i4] = i(aVar, actualTypeArguments[i4], typeBindings);
            }
            create = TypeBindings.create(cls, javaTypeArr);
        }
        return k(aVar, cls, create);
    }

    protected JavaType m(a aVar, TypeVariable<?> typeVariable, TypeBindings typeBindings) {
        Type[] bounds;
        String name = typeVariable.getName();
        if (typeBindings != null) {
            JavaType findBoundType = typeBindings.findBoundType(name);
            if (findBoundType != null) {
                return findBoundType;
            }
            if (typeBindings.hasUnbound(name)) {
                return f15920v;
            }
            TypeBindings withUnboundVariable = typeBindings.withUnboundVariable(name);
            synchronized (typeVariable) {
                bounds = typeVariable.getBounds();
            }
            return i(aVar, bounds[0], withUnboundVariable);
        }
        throw new IllegalArgumentException("Null `bindings` passed (type variable \"" + name + "\")");
    }

    public JavaType moreSpecificType(JavaType javaType, JavaType javaType2) {
        Class<?> rawClass;
        Class<?> rawClass2;
        return javaType == null ? javaType2 : (javaType2 == null || (rawClass = javaType.getRawClass()) == (rawClass2 = javaType2.getRawClass()) || !rawClass.isAssignableFrom(rawClass2)) ? javaType : javaType2;
    }

    protected JavaType n(a aVar, Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        if (typeBindings == null) {
            typeBindings = f15906h;
        }
        if (cls == Map.class) {
            return q(cls, typeBindings, javaType, javaTypeArr);
        }
        if (cls == Collection.class) {
            return c(cls, typeBindings, javaType, javaTypeArr);
        }
        if (cls == AtomicReference.class) {
            return s(cls, typeBindings, javaType, javaTypeArr);
        }
        return null;
    }

    protected JavaType o(a aVar, Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        for (JavaType javaType2 : javaTypeArr) {
            JavaType refine = javaType2.refine(cls, typeBindings, javaType, javaTypeArr);
            if (refine != null) {
                return refine;
            }
        }
        return null;
    }

    protected JavaType p(a aVar, WildcardType wildcardType, TypeBindings typeBindings) {
        return i(aVar, wildcardType.getUpperBounds()[0], typeBindings);
    }

    protected JavaType r(Class<?> cls, TypeBindings typeBindings, JavaType javaType, JavaType[] javaTypeArr) {
        return new SimpleType(cls, typeBindings, javaType, javaTypeArr);
    }

    public JavaType resolveMemberType(Type type, TypeBindings typeBindings) {
        return i(null, type, typeBindings);
    }

    protected JavaType t(a aVar, Class<?> cls, TypeBindings typeBindings) {
        Type L = g.L(cls);
        if (L == null) {
            return null;
        }
        return i(aVar, L, typeBindings);
    }

    protected JavaType[] u(a aVar, Class<?> cls, TypeBindings typeBindings) {
        Type[] K = g.K(cls);
        if (K != null && K.length != 0) {
            int length = K.length;
            JavaType[] javaTypeArr = new JavaType[length];
            for (int i4 = 0; i4 < length; i4++) {
                javaTypeArr[i4] = i(aVar, K[i4], typeBindings);
            }
            return javaTypeArr;
        }
        return f15904f;
    }

    @Deprecated
    public JavaType uncheckedSimpleType(Class<?> cls) {
        return d(cls, f15906h, null, null);
    }

    protected JavaType w() {
        return f15920v;
    }

    @Deprecated
    public TypeFactory withCache(LRUMap<Object, JavaType> lRUMap) {
        return new TypeFactory(lRUMap, this.f15927c, this.f15926b, this.f15928d);
    }

    public TypeFactory withClassLoader(ClassLoader classLoader) {
        return new TypeFactory(this.f15925a, this.f15927c, this.f15926b, classLoader);
    }

    public TypeFactory withModifier(b bVar) {
        m<Object, JavaType> mVar = this.f15925a;
        b[] bVarArr = null;
        if (bVar == null) {
            mVar = null;
        } else {
            b[] bVarArr2 = this.f15926b;
            if (bVarArr2 == null) {
                bVarArr = new b[]{bVar};
                mVar = null;
            } else {
                bVarArr = (b[]) com.fasterxml.jackson.databind.util.b.j(bVarArr2, bVar);
            }
        }
        return new TypeFactory(mVar, this.f15927c, bVarArr, this.f15928d);
    }

    protected Class<?> y(String str) throws ClassNotFoundException {
        return Class.forName(str);
    }

    protected Class<?> z(String str, boolean z9, ClassLoader classLoader) throws ClassNotFoundException {
        return Class.forName(str, true, classLoader);
    }

    @Deprecated
    protected TypeFactory(LRUMap<Object, JavaType> lRUMap) {
        this((m<Object, JavaType>) lRUMap);
    }

    public ArrayType constructArrayType(JavaType javaType) {
        return ArrayType.construct(javaType, null);
    }

    @Deprecated
    public JavaType constructParametrizedType(Class<?> cls, Class<?> cls2, Class<?>... clsArr) {
        return constructParametricType(cls, clsArr);
    }

    @Deprecated
    public JavaType constructSimpleType(Class<?> cls, Class<?> cls2, JavaType[] javaTypeArr) {
        return constructSimpleType(cls, javaTypeArr);
    }

    public JavaType constructSpecializedType(JavaType javaType, Class<?> cls, boolean z9) throws IllegalArgumentException {
        JavaType k10;
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass == cls) {
            return javaType;
        }
        if (rawClass == Object.class) {
            k10 = k(null, cls, f15906h);
        } else if (rawClass.isAssignableFrom(cls)) {
            if (javaType.isContainerType()) {
                if (javaType.isMapLikeType()) {
                    if (cls == HashMap.class || cls == LinkedHashMap.class || cls == EnumMap.class || cls == TreeMap.class) {
                        k10 = k(null, cls, TypeBindings.create(cls, javaType.getKeyType(), javaType.getContentType()));
                    }
                } else if (javaType.isCollectionLikeType()) {
                    if (cls != ArrayList.class && cls != LinkedList.class && cls != HashSet.class && cls != TreeSet.class) {
                        if (rawClass == EnumSet.class) {
                            return javaType;
                        }
                    } else {
                        k10 = k(null, cls, TypeBindings.create(cls, javaType.getContentType()));
                    }
                }
            }
            if (javaType.getBindings().isEmpty()) {
                k10 = k(null, cls, f15906h);
            } else {
                int length = cls.getTypeParameters().length;
                if (length == 0) {
                    k10 = k(null, cls, f15906h);
                } else {
                    k10 = k(null, cls, b(javaType, length, cls, z9));
                }
            }
        } else {
            throw new IllegalArgumentException(String.format("Class %s not subtype of %s", g.j0(cls), g.P(javaType)));
        }
        return k10.withHandlersFrom(javaType);
    }

    public JavaType constructType(com.fasterxml.jackson.core.type.b<?> bVar) {
        return i(null, bVar.b(), f15906h);
    }

    public TypeFactory withCache(m<Object, JavaType> mVar) {
        return new TypeFactory(mVar, this.f15927c, this.f15926b, this.f15928d);
    }

    protected TypeFactory(m<Object, JavaType> mVar) {
        this.f15925a = mVar == null ? new LRUMap<>(16, 200) : mVar;
        this.f15927c = new TypeParser(this);
        this.f15926b = null;
        this.f15928d = null;
    }

    @Deprecated
    public JavaType constructType(Type type, TypeBindings typeBindings) {
        if (type instanceof Class) {
            return a(type, k(null, (Class) type, typeBindings));
        }
        return i(null, type, typeBindings);
    }

    public CollectionLikeType constructCollectionLikeType(Class<?> cls, JavaType javaType) {
        JavaType k10 = k(null, cls, TypeBindings.createIfNeeded(cls, javaType));
        if (k10 instanceof CollectionLikeType) {
            return (CollectionLikeType) k10;
        }
        return CollectionLikeType.upgradeFrom(k10, javaType);
    }

    public CollectionType constructCollectionType(Class<? extends Collection> cls, JavaType javaType) {
        TypeBindings createIfNeeded = TypeBindings.createIfNeeded(cls, javaType);
        CollectionType collectionType = (CollectionType) k(null, cls, createIfNeeded);
        if (createIfNeeded.isEmpty() && javaType != null) {
            JavaType contentType = collectionType.findSuperType(Collection.class).getContentType();
            if (!contentType.equals(javaType)) {
                throw new IllegalArgumentException(String.format("Non-generic Collection class %s did not resolve to something with element type %s but %s ", g.j0(cls), javaType, contentType));
            }
        }
        return collectionType;
    }

    @Deprecated
    public JavaType[] findTypeParameters(Class<?> cls, Class<?> cls2, TypeBindings typeBindings) {
        return findTypeParameters(constructType(cls, typeBindings), cls2);
    }

    public MapLikeType constructMapLikeType(Class<?> cls, JavaType javaType, JavaType javaType2) {
        JavaType k10 = k(null, cls, TypeBindings.createIfNeeded(cls, new JavaType[]{javaType, javaType2}));
        if (k10 instanceof MapLikeType) {
            return (MapLikeType) k10;
        }
        return MapLikeType.upgradeFrom(k10, javaType, javaType2);
    }

    public JavaType constructParametricType(Class<?> cls, JavaType... javaTypeArr) {
        return constructParametricType(cls, TypeBindings.create(cls, javaTypeArr));
    }

    @Deprecated
    public JavaType[] findTypeParameters(Class<?> cls, Class<?> cls2) {
        return findTypeParameters(constructType(cls), cls2);
    }

    public MapType constructMapType(Class<? extends Map> cls, JavaType javaType, JavaType javaType2) {
        TypeBindings createIfNeeded = TypeBindings.createIfNeeded(cls, new JavaType[]{javaType, javaType2});
        MapType mapType = (MapType) k(null, cls, createIfNeeded);
        if (createIfNeeded.isEmpty()) {
            JavaType findSuperType = mapType.findSuperType(Map.class);
            JavaType keyType = findSuperType.getKeyType();
            if (keyType.equals(javaType)) {
                JavaType contentType = findSuperType.getContentType();
                if (!contentType.equals(javaType2)) {
                    throw new IllegalArgumentException(String.format("Non-generic Map class %s did not resolve to something with value type %s but %s ", g.j0(cls), javaType2, contentType));
                }
            } else {
                throw new IllegalArgumentException(String.format("Non-generic Map class %s did not resolve to something with key type %s but %s ", g.j0(cls), javaType, keyType));
            }
        }
        return mapType;
    }

    public JavaType constructParametricType(Class<?> cls, TypeBindings typeBindings) {
        return a(cls, k(null, cls, typeBindings));
    }

    @Deprecated
    public JavaType constructType(Type type, Class<?> cls) {
        return constructType(type, cls == null ? null : constructType(cls));
    }

    @Deprecated
    protected TypeFactory(LRUMap<Object, JavaType> lRUMap, TypeParser typeParser, b[] bVarArr, ClassLoader classLoader) {
        this((m<Object, JavaType>) lRUMap, typeParser, bVarArr, classLoader);
    }

    @Deprecated
    public JavaType constructType(Type type, JavaType javaType) {
        TypeBindings typeBindings;
        if (javaType == null) {
            typeBindings = f15906h;
        } else {
            TypeBindings bindings = javaType.getBindings();
            if (type.getClass() != Class.class) {
                JavaType javaType2 = javaType;
                typeBindings = bindings;
                while (typeBindings.isEmpty() && (javaType2 = javaType2.getSuperClass()) != null) {
                    typeBindings = javaType2.getBindings();
                }
            } else {
                typeBindings = bindings;
            }
        }
        return i(null, type, typeBindings);
    }

    protected TypeFactory(m<Object, JavaType> mVar, TypeParser typeParser, b[] bVarArr, ClassLoader classLoader) {
        this.f15925a = mVar == null ? new LRUMap<>(16, 200) : mVar;
        this.f15927c = typeParser.withFactory(this);
        this.f15926b = bVarArr;
        this.f15928d = classLoader;
    }
}
