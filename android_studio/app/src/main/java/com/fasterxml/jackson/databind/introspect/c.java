package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.AnnotationCollector;
import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.List;

/* compiled from: AnnotatedClass.java */
/* loaded from: classes.dex */
public final class c extends com.fasterxml.jackson.databind.introspect.a implements t {

    /* renamed from: o  reason: collision with root package name */
    private static final a f15247o = new a(null, Collections.emptyList(), Collections.emptyList());

    /* renamed from: a  reason: collision with root package name */
    protected final JavaType f15248a;

    /* renamed from: b  reason: collision with root package name */
    protected final Class<?> f15249b;

    /* renamed from: c  reason: collision with root package name */
    protected final TypeBindings f15250c;

    /* renamed from: d  reason: collision with root package name */
    protected final List<JavaType> f15251d;

    /* renamed from: e  reason: collision with root package name */
    protected final AnnotationIntrospector f15252e;

    /* renamed from: f  reason: collision with root package name */
    protected final TypeFactory f15253f;

    /* renamed from: g  reason: collision with root package name */
    protected final l.a f15254g;

    /* renamed from: h  reason: collision with root package name */
    protected final Class<?> f15255h;

    /* renamed from: i  reason: collision with root package name */
    protected final boolean f15256i;

    /* renamed from: j  reason: collision with root package name */
    protected final com.fasterxml.jackson.databind.util.a f15257j;

    /* renamed from: k  reason: collision with root package name */
    protected a f15258k;

    /* renamed from: l  reason: collision with root package name */
    protected h f15259l;

    /* renamed from: m  reason: collision with root package name */
    protected List<AnnotatedField> f15260m;

    /* renamed from: n  reason: collision with root package name */
    protected transient Boolean f15261n;

    /* compiled from: AnnotatedClass.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final AnnotatedConstructor f15262a;

        /* renamed from: b  reason: collision with root package name */
        public final List<AnnotatedConstructor> f15263b;

        /* renamed from: c  reason: collision with root package name */
        public final List<AnnotatedMethod> f15264c;

        public a(AnnotatedConstructor annotatedConstructor, List<AnnotatedConstructor> list, List<AnnotatedMethod> list2) {
            this.f15262a = annotatedConstructor;
            this.f15263b = list;
            this.f15264c = list2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(JavaType javaType, Class<?> cls, List<JavaType> list, Class<?> cls2, com.fasterxml.jackson.databind.util.a aVar, TypeBindings typeBindings, AnnotationIntrospector annotationIntrospector, l.a aVar2, TypeFactory typeFactory, boolean z9) {
        this.f15248a = javaType;
        this.f15249b = cls;
        this.f15251d = list;
        this.f15255h = cls2;
        this.f15257j = aVar;
        this.f15250c = typeBindings;
        this.f15252e = annotationIntrospector;
        this.f15254g = aVar2;
        this.f15253f = typeFactory;
        this.f15256i = z9;
    }

    private final a b() {
        a aVar = this.f15258k;
        if (aVar == null) {
            JavaType javaType = this.f15248a;
            if (javaType == null) {
                aVar = f15247o;
            } else {
                aVar = e.p(this.f15252e, this.f15253f, this, javaType, this.f15255h, this.f15256i);
            }
            this.f15258k = aVar;
        }
        return aVar;
    }

    private final List<AnnotatedField> c() {
        List<AnnotatedField> list = this.f15260m;
        if (list == null) {
            JavaType javaType = this.f15248a;
            if (javaType == null) {
                list = Collections.emptyList();
            } else {
                list = f.m(this.f15252e, this, this.f15254g, this.f15253f, javaType, this.f15256i);
            }
            this.f15260m = list;
        }
        return list;
    }

    private final h d() {
        h hVar = this.f15259l;
        if (hVar == null) {
            JavaType javaType = this.f15248a;
            if (javaType == null) {
                hVar = new h();
            } else {
                hVar = g.m(this.f15252e, this, this.f15254g, this.f15253f, javaType, this.f15251d, this.f15255h, this.f15256i);
            }
            this.f15259l = hVar;
        }
        return hVar;
    }

    @Deprecated
    public static c e(JavaType javaType, MapperConfig<?> mapperConfig) {
        return h(javaType, mapperConfig, mapperConfig);
    }

    @Deprecated
    public static c h(JavaType javaType, MapperConfig<?> mapperConfig, l.a aVar) {
        return d.i(mapperConfig, javaType, aVar);
    }

    @Deprecated
    public static c i(Class<?> cls, MapperConfig<?> mapperConfig) {
        return j(cls, mapperConfig, mapperConfig);
    }

    @Deprecated
    public static c j(Class<?> cls, MapperConfig<?> mapperConfig, l.a aVar) {
        return d.o(mapperConfig, cls, aVar);
    }

    @Override // com.fasterxml.jackson.databind.introspect.t
    public JavaType a(Type type) {
        return this.f15253f.resolveMemberType(type, this.f15250c);
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    @Deprecated
    public Iterable<Annotation> annotations() {
        com.fasterxml.jackson.databind.util.a aVar = this.f15257j;
        if (aVar instanceof i) {
            return ((i) aVar).d();
        }
        if (!(aVar instanceof AnnotationCollector.OneAnnotation) && !(aVar instanceof AnnotationCollector.TwoAnnotations)) {
            return Collections.emptyList();
        }
        throw new UnsupportedOperationException("please use getAnnotations/ hasAnnotation to check for Annotations");
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return com.fasterxml.jackson.databind.util.g.Q(obj, c.class) && ((c) obj).f15249b == this.f15249b;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f15257j.get(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int getModifiers() {
        return this.f15249b.getModifiers();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String getName() {
        return this.f15249b.getName();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public Class<?> getRawType() {
        return this.f15249b;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public JavaType getType() {
        return this.f15248a;
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public boolean hasAnnotation(Class<?> cls) {
        return this.f15257j.has(cls);
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
        return this.f15257j.hasOneOf(clsArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public int hashCode() {
        return this.f15249b.getName().hashCode();
    }

    public Iterable<AnnotatedField> k() {
        return c();
    }

    public AnnotatedMethod l(String str, Class<?>[] clsArr) {
        return d().a(str, clsArr);
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    /* renamed from: m */
    public Class<?> getAnnotated() {
        return this.f15249b;
    }

    public com.fasterxml.jackson.databind.util.a n() {
        return this.f15257j;
    }

    public List<AnnotatedConstructor> o() {
        return b().f15263b;
    }

    public AnnotatedConstructor p() {
        return b().f15262a;
    }

    public List<AnnotatedMethod> q() {
        return b().f15264c;
    }

    public int r() {
        return c().size();
    }

    public int s() {
        return d().size();
    }

    @Deprecated
    public List<AnnotatedMethod> t() {
        return q();
    }

    @Override // com.fasterxml.jackson.databind.introspect.a
    public String toString() {
        return "[AnnotedClass " + this.f15249b.getName() + "]";
    }

    public boolean u() {
        return this.f15257j.size() > 0;
    }

    public boolean v() {
        Boolean bool = this.f15261n;
        if (bool == null) {
            bool = Boolean.valueOf(com.fasterxml.jackson.databind.util.g.c0(this.f15249b));
            this.f15261n = bool;
        }
        return bool.booleanValue();
    }

    public Iterable<AnnotatedMethod> w() {
        return d();
    }

    @Deprecated
    c(JavaType javaType, Class<?> cls, List<JavaType> list, Class<?> cls2, com.fasterxml.jackson.databind.util.a aVar, TypeBindings typeBindings, AnnotationIntrospector annotationIntrospector, l.a aVar2, TypeFactory typeFactory) {
        this(javaType, cls, list, cls2, aVar, typeBindings, annotationIntrospector, aVar2, typeFactory, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Class<?> cls) {
        this.f15248a = null;
        this.f15249b = cls;
        this.f15251d = Collections.emptyList();
        this.f15255h = null;
        this.f15257j = AnnotationCollector.d();
        this.f15250c = TypeBindings.emptyBindings();
        this.f15252e = null;
        this.f15254g = null;
        this.f15253f = null;
        this.f15256i = false;
    }
}
