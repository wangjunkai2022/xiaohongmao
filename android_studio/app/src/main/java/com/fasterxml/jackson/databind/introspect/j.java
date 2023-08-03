package com.fasterxml.jackson.databind.introspect;

import c2.e;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.h;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: BasicBeanDescription.java */
/* loaded from: classes.dex */
public class j extends com.fasterxml.jackson.databind.b {

    /* renamed from: j  reason: collision with root package name */
    private static final Class<?>[] f15294j = new Class[0];

    /* renamed from: b  reason: collision with root package name */
    protected final q f15295b;

    /* renamed from: c  reason: collision with root package name */
    protected final MapperConfig<?> f15296c;

    /* renamed from: d  reason: collision with root package name */
    protected final AnnotationIntrospector f15297d;

    /* renamed from: e  reason: collision with root package name */
    protected final c f15298e;

    /* renamed from: f  reason: collision with root package name */
    protected Class<?>[] f15299f;

    /* renamed from: g  reason: collision with root package name */
    protected boolean f15300g;

    /* renamed from: h  reason: collision with root package name */
    protected List<k> f15301h;

    /* renamed from: i  reason: collision with root package name */
    protected p f15302i;

    protected j(q qVar, JavaType javaType, c cVar) {
        super(javaType);
        this.f15295b = qVar;
        MapperConfig<?> H = qVar.H();
        this.f15296c = H;
        if (H == null) {
            this.f15297d = null;
        } else {
            this.f15297d = H.getAnnotationIntrospector();
        }
        this.f15298e = cVar;
    }

    public static j T(q qVar) {
        return new j(qVar);
    }

    public static j U(MapperConfig<?> mapperConfig, JavaType javaType, c cVar) {
        return new j(mapperConfig, javaType, cVar, Collections.emptyList());
    }

    public static j V(q qVar) {
        return new j(qVar);
    }

    @Override // com.fasterxml.jackson.databind.b
    public c A() {
        return this.f15298e;
    }

    @Override // com.fasterxml.jackson.databind.b
    public List<AnnotatedConstructor> B() {
        return this.f15298e.o();
    }

    @Override // com.fasterxml.jackson.databind.b
    public List<b<AnnotatedConstructor, JsonCreator.Mode>> C() {
        List<AnnotatedConstructor> o9 = this.f15298e.o();
        if (o9.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (AnnotatedConstructor annotatedConstructor : o9) {
            JsonCreator.Mode findCreatorAnnotation = this.f15297d.findCreatorAnnotation(this.f15296c, annotatedConstructor);
            if (findCreatorAnnotation != JsonCreator.Mode.DISABLED) {
                arrayList.add(b.a(annotatedConstructor, findCreatorAnnotation));
            }
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.b
    public List<AnnotatedMethod> D() {
        List<AnnotatedMethod> q9 = this.f15298e.q();
        if (q9.isEmpty()) {
            return q9;
        }
        ArrayList arrayList = null;
        for (AnnotatedMethod annotatedMethod : q9) {
            if (X(annotatedMethod)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(annotatedMethod);
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    @Override // com.fasterxml.jackson.databind.b
    public List<b<AnnotatedMethod, JsonCreator.Mode>> E() {
        List<AnnotatedMethod> q9 = this.f15298e.q();
        if (q9.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = null;
        for (AnnotatedMethod annotatedMethod : q9) {
            b<AnnotatedMethod, JsonCreator.Mode> R = R(annotatedMethod);
            if (R != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(R);
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    @Override // com.fasterxml.jackson.databind.b
    public Set<String> F() {
        q qVar = this.f15295b;
        Set<String> I = qVar == null ? null : qVar.I();
        return I == null ? Collections.emptySet() : I;
    }

    @Override // com.fasterxml.jackson.databind.b
    public p G() {
        return this.f15302i;
    }

    @Override // com.fasterxml.jackson.databind.b
    public boolean I() {
        return this.f15298e.u();
    }

    @Override // com.fasterxml.jackson.databind.b
    public Object J(boolean z9) {
        AnnotatedConstructor p9 = this.f15298e.p();
        if (p9 == null) {
            return null;
        }
        if (z9) {
            p9.fixAccess(this.f15296c.isEnabled(MapperFeature.OVERRIDE_PUBLIC_ACCESS_MODIFIERS));
        }
        try {
            return p9.call();
        } catch (Exception e4) {
            e = e4;
            while (e.getCause() != null) {
                e = e.getCause();
            }
            com.fasterxml.jackson.databind.util.g.t0(e);
            com.fasterxml.jackson.databind.util.g.v0(e);
            throw new IllegalArgumentException("Failed to instantiate bean of type " + this.f15298e.getAnnotated().getName() + ": (" + e.getClass().getName() + ") " + com.fasterxml.jackson.databind.util.g.q(e), e);
        }
    }

    @Override // com.fasterxml.jackson.databind.b
    @Deprecated
    public JavaType L(Type type) {
        return this.f15296c.getTypeFactory().resolveMemberType(type, this.f14465a.getBindings());
    }

    protected com.fasterxml.jackson.databind.util.h<Object, Object> M(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof com.fasterxml.jackson.databind.util.h) {
            return (com.fasterxml.jackson.databind.util.h) obj;
        }
        if (obj instanceof Class) {
            Class<?> cls = (Class) obj;
            if (cls == h.a.class || com.fasterxml.jackson.databind.util.g.T(cls)) {
                return null;
            }
            if (com.fasterxml.jackson.databind.util.h.class.isAssignableFrom(cls)) {
                com.fasterxml.jackson.databind.cfg.c handlerInstantiator = this.f15296c.getHandlerInstantiator();
                com.fasterxml.jackson.databind.util.h<?, ?> a10 = handlerInstantiator != null ? handlerInstantiator.a(this.f15296c, this.f15298e, cls) : null;
                return a10 == null ? (com.fasterxml.jackson.databind.util.h) com.fasterxml.jackson.databind.util.g.n(cls, this.f15296c.canOverrideAccessModifiers()) : a10;
            }
            throw new IllegalStateException("AnnotationIntrospector returned Class " + cls.getName() + "; expected Class<Converter>");
        }
        throw new IllegalStateException("AnnotationIntrospector returned Converter definition of type " + obj.getClass().getName() + "; expected type Converter or Class<Converter> instead");
    }

    @Deprecated
    protected PropertyName N(AnnotatedParameter annotatedParameter) {
        String findImplicitPropertyName;
        PropertyName findNameForDeserialization = this.f15297d.findNameForDeserialization(annotatedParameter);
        return ((findNameForDeserialization != null && !findNameForDeserialization.isEmpty()) || (findImplicitPropertyName = this.f15297d.findImplicitPropertyName(annotatedParameter)) == null || findImplicitPropertyName.isEmpty()) ? findNameForDeserialization : PropertyName.construct(findImplicitPropertyName);
    }

    @Deprecated
    public LinkedHashMap<String, AnnotatedField> O(Collection<String> collection, boolean z9) {
        LinkedHashMap<String, AnnotatedField> linkedHashMap = new LinkedHashMap<>();
        for (k kVar : P()) {
            AnnotatedField l10 = kVar.l();
            if (l10 != null) {
                String name = kVar.getName();
                if (collection == null || !collection.contains(name)) {
                    linkedHashMap.put(name, l10);
                }
            }
        }
        return linkedHashMap;
    }

    protected List<k> P() {
        if (this.f15301h == null) {
            this.f15301h = this.f15295b.O();
        }
        return this.f15301h;
    }

    public boolean Q(k kVar) {
        if (W(kVar.getFullName())) {
            return false;
        }
        P().add(kVar);
        return true;
    }

    protected b<AnnotatedMethod, JsonCreator.Mode> R(AnnotatedMethod annotatedMethod) {
        Class<?> rawParameterType;
        if (y().isAssignableFrom(annotatedMethod.getRawReturnType())) {
            JsonCreator.Mode findCreatorAnnotation = this.f15297d.findCreatorAnnotation(this.f15296c, annotatedMethod);
            if (findCreatorAnnotation != null) {
                if (findCreatorAnnotation == JsonCreator.Mode.DISABLED) {
                    return null;
                }
                return b.a(annotatedMethod, findCreatorAnnotation);
            }
            String name = annotatedMethod.getName();
            if ("valueOf".equals(name) && annotatedMethod.getParameterCount() == 1) {
                return b.a(annotatedMethod, findCreatorAnnotation);
            }
            if ("fromString".equals(name) && annotatedMethod.getParameterCount() == 1 && ((rawParameterType = annotatedMethod.getRawParameterType(0)) == String.class || CharSequence.class.isAssignableFrom(rawParameterType))) {
                return b.a(annotatedMethod, findCreatorAnnotation);
            }
            return null;
        }
        return null;
    }

    public k S(PropertyName propertyName) {
        for (k kVar : P()) {
            if (kVar.x(propertyName)) {
                return kVar;
            }
        }
        return null;
    }

    public boolean W(PropertyName propertyName) {
        return S(propertyName) != null;
    }

    protected boolean X(AnnotatedMethod annotatedMethod) {
        Class<?> rawParameterType;
        if (y().isAssignableFrom(annotatedMethod.getRawReturnType())) {
            JsonCreator.Mode findCreatorAnnotation = this.f15297d.findCreatorAnnotation(this.f15296c, annotatedMethod);
            if (findCreatorAnnotation == null || findCreatorAnnotation == JsonCreator.Mode.DISABLED) {
                String name = annotatedMethod.getName();
                if ("valueOf".equals(name) && annotatedMethod.getParameterCount() == 1) {
                    return true;
                }
                return "fromString".equals(name) && annotatedMethod.getParameterCount() == 1 && ((rawParameterType = annotatedMethod.getRawParameterType(0)) == String.class || CharSequence.class.isAssignableFrom(rawParameterType));
            }
            return true;
        }
        return false;
    }

    public boolean Y(String str) {
        Iterator<k> it = P().iterator();
        while (it.hasNext()) {
            if (it.next().getName().equals(str)) {
                it.remove();
                return true;
            }
        }
        return false;
    }

    @Override // com.fasterxml.jackson.databind.b
    @Deprecated
    public TypeBindings a() {
        return this.f14465a.getBindings();
    }

    @Override // com.fasterxml.jackson.databind.b
    public AnnotatedMember b() throws IllegalArgumentException {
        q qVar = this.f15295b;
        if (qVar != null) {
            AnnotatedMember D = qVar.D();
            if (D != null) {
                if (Map.class.isAssignableFrom(D.getRawType())) {
                    return D;
                }
                throw new IllegalArgumentException(String.format("Invalid 'any-getter' annotation on method %s(): return type is not instance of java.util.Map", D.getName()));
            }
            AnnotatedMember C = this.f15295b.C();
            if (C != null) {
                if (Map.class.isAssignableFrom(C.getRawType())) {
                    return C;
                }
                throw new IllegalArgumentException(String.format("Invalid 'any-getter' annotation on field '%s': type is not instance of java.util.Map", C.getName()));
            }
            return null;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.b
    public AnnotatedMember d() throws IllegalArgumentException {
        q qVar = this.f15295b;
        if (qVar != null) {
            AnnotatedMethod F = qVar.F();
            if (F != null) {
                Class<?> rawParameterType = F.getRawParameterType(0);
                if (rawParameterType == String.class || rawParameterType == Object.class) {
                    return F;
                }
                throw new IllegalArgumentException(String.format("Invalid 'any-setter' annotation on method '%s()': first argument not of type String or Object, but %s", F.getName(), rawParameterType.getName()));
            }
            AnnotatedMember E = this.f15295b.E();
            if (E != null) {
                if (Map.class.isAssignableFrom(E.getRawType())) {
                    return E;
                }
                throw new IllegalArgumentException(String.format("Invalid 'any-setter' annotation on field '%s': type is not instance of java.util.Map", E.getName()));
            }
            return null;
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.b
    @Deprecated
    public Map<String, AnnotatedMember> f() {
        List<k> g4 = g();
        if (g4 == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        for (k kVar : g4) {
            hashMap.put(kVar.getName(), kVar.o());
        }
        return hashMap;
    }

    @Override // com.fasterxml.jackson.databind.b
    public List<k> g() {
        ArrayList arrayList = null;
        HashSet hashSet = null;
        for (k kVar : P()) {
            AnnotationIntrospector.ReferenceProperty f10 = kVar.f();
            if (f10 != null && f10.d()) {
                String b10 = f10.b();
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    hashSet = new HashSet();
                    hashSet.add(b10);
                } else if (!hashSet.add(b10)) {
                    throw new IllegalArgumentException("Multiple back-reference properties with name " + com.fasterxml.jackson.databind.util.g.h0(b10));
                }
                arrayList.add(kVar);
            }
        }
        return arrayList;
    }

    @Override // com.fasterxml.jackson.databind.b
    public String h() {
        AnnotationIntrospector annotationIntrospector = this.f15297d;
        if (annotationIntrospector == null) {
            return null;
        }
        return annotationIntrospector.findClassDescription(this.f15298e);
    }

    @Override // com.fasterxml.jackson.databind.b
    public AnnotatedConstructor i() {
        return this.f15298e.p();
    }

    @Override // com.fasterxml.jackson.databind.b
    public Class<?>[] j() {
        if (!this.f15300g) {
            this.f15300g = true;
            AnnotationIntrospector annotationIntrospector = this.f15297d;
            Class<?>[] findViews = annotationIntrospector == null ? null : annotationIntrospector.findViews(this.f15298e);
            if (findViews == null && !this.f15296c.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION)) {
                findViews = f15294j;
            }
            this.f15299f = findViews;
        }
        return this.f15299f;
    }

    @Override // com.fasterxml.jackson.databind.b
    public com.fasterxml.jackson.databind.util.h<Object, Object> k() {
        AnnotationIntrospector annotationIntrospector = this.f15297d;
        if (annotationIntrospector == null) {
            return null;
        }
        return M(annotationIntrospector.findDeserializationConverter(this.f15298e));
    }

    @Override // com.fasterxml.jackson.databind.b
    public JsonFormat.Value l(JsonFormat.Value value) {
        JsonFormat.Value findFormat;
        AnnotationIntrospector annotationIntrospector = this.f15297d;
        if (annotationIntrospector != null && (findFormat = annotationIntrospector.findFormat(this.f15298e)) != null) {
            value = value == null ? findFormat : value.withOverrides(findFormat);
        }
        JsonFormat.Value defaultPropertyFormat = this.f15296c.getDefaultPropertyFormat(this.f15298e.getRawType());
        return defaultPropertyFormat != null ? value == null ? defaultPropertyFormat : value.withOverrides(defaultPropertyFormat) : value;
    }

    @Override // com.fasterxml.jackson.databind.b
    @Deprecated
    public Method m(Class<?>... clsArr) {
        for (AnnotatedMethod annotatedMethod : this.f15298e.q()) {
            if (X(annotatedMethod) && annotatedMethod.getParameterCount() == 1) {
                Class<?> rawParameterType = annotatedMethod.getRawParameterType(0);
                for (Class<?> cls : clsArr) {
                    if (rawParameterType.isAssignableFrom(cls)) {
                        return annotatedMethod.getAnnotated();
                    }
                }
                continue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.b
    public Map<Object, AnnotatedMember> n() {
        q qVar = this.f15295b;
        if (qVar != null) {
            return qVar.J();
        }
        return Collections.emptyMap();
    }

    @Override // com.fasterxml.jackson.databind.b
    public AnnotatedMember o() {
        q qVar = this.f15295b;
        if (qVar == null) {
            return null;
        }
        return qVar.K();
    }

    @Override // com.fasterxml.jackson.databind.b
    public AnnotatedMember p() {
        q qVar = this.f15295b;
        if (qVar == null) {
            return null;
        }
        return qVar.L();
    }

    @Override // com.fasterxml.jackson.databind.b
    @Deprecated
    public AnnotatedMethod q() {
        q qVar = this.f15295b;
        if (qVar == null) {
            return null;
        }
        return qVar.M();
    }

    @Override // com.fasterxml.jackson.databind.b
    public AnnotatedMethod r(String str, Class<?>[] clsArr) {
        return this.f15298e.l(str, clsArr);
    }

    @Override // com.fasterxml.jackson.databind.b
    public Class<?> s() {
        AnnotationIntrospector annotationIntrospector = this.f15297d;
        if (annotationIntrospector == null) {
            return null;
        }
        return annotationIntrospector.findPOJOBuilder(this.f15298e);
    }

    @Override // com.fasterxml.jackson.databind.b
    public e.a t() {
        AnnotationIntrospector annotationIntrospector = this.f15297d;
        if (annotationIntrospector == null) {
            return null;
        }
        return annotationIntrospector.findPOJOBuilderConfig(this.f15298e);
    }

    @Override // com.fasterxml.jackson.databind.b
    public List<k> u() {
        return P();
    }

    @Override // com.fasterxml.jackson.databind.b
    public JsonInclude.Value v(JsonInclude.Value value) {
        JsonInclude.Value findPropertyInclusion;
        AnnotationIntrospector annotationIntrospector = this.f15297d;
        return (annotationIntrospector == null || (findPropertyInclusion = annotationIntrospector.findPropertyInclusion(this.f15298e)) == null) ? value : value == null ? findPropertyInclusion : value.withOverrides(findPropertyInclusion);
    }

    @Override // com.fasterxml.jackson.databind.b
    public com.fasterxml.jackson.databind.util.h<Object, Object> w() {
        AnnotationIntrospector annotationIntrospector = this.f15297d;
        if (annotationIntrospector == null) {
            return null;
        }
        return M(annotationIntrospector.findSerializationConverter(this.f15298e));
    }

    @Override // com.fasterxml.jackson.databind.b
    @Deprecated
    public Constructor<?> x(Class<?>... clsArr) {
        for (AnnotatedConstructor annotatedConstructor : this.f15298e.o()) {
            if (annotatedConstructor.getParameterCount() == 1) {
                Class<?> rawParameterType = annotatedConstructor.getRawParameterType(0);
                for (Class<?> cls : clsArr) {
                    if (cls == rawParameterType) {
                        return annotatedConstructor.getAnnotated();
                    }
                }
                continue;
            }
        }
        return null;
    }

    @Override // com.fasterxml.jackson.databind.b
    public com.fasterxml.jackson.databind.util.a z() {
        return this.f15298e.n();
    }

    protected j(MapperConfig<?> mapperConfig, JavaType javaType, c cVar, List<k> list) {
        super(javaType);
        this.f15295b = null;
        this.f15296c = mapperConfig;
        if (mapperConfig == null) {
            this.f15297d = null;
        } else {
            this.f15297d = mapperConfig.getAnnotationIntrospector();
        }
        this.f15298e = cVar;
        this.f15301h = list;
    }

    protected j(q qVar) {
        this(qVar, qVar.Q(), qVar.G());
        this.f15302i = qVar.N();
    }
}
