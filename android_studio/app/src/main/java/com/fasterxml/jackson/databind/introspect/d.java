package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.type.TypeBindings;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: AnnotatedClassResolver.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: i  reason: collision with root package name */
    private static final com.fasterxml.jackson.databind.util.a f15265i = AnnotationCollector.d();

    /* renamed from: j  reason: collision with root package name */
    private static final Class<?> f15266j = Object.class;

    /* renamed from: k  reason: collision with root package name */
    private static final Class<?> f15267k = Enum.class;

    /* renamed from: l  reason: collision with root package name */
    private static final Class<?> f15268l = List.class;

    /* renamed from: m  reason: collision with root package name */
    private static final Class<?> f15269m = Map.class;

    /* renamed from: a  reason: collision with root package name */
    private final MapperConfig<?> f15270a;

    /* renamed from: b  reason: collision with root package name */
    private final AnnotationIntrospector f15271b;

    /* renamed from: c  reason: collision with root package name */
    private final l.a f15272c;

    /* renamed from: d  reason: collision with root package name */
    private final TypeBindings f15273d;

    /* renamed from: e  reason: collision with root package name */
    private final JavaType f15274e;

    /* renamed from: f  reason: collision with root package name */
    private final Class<?> f15275f;

    /* renamed from: g  reason: collision with root package name */
    private final Class<?> f15276g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f15277h;

    d(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar) {
        this.f15270a = mapperConfig;
        this.f15274e = javaType;
        Class<?> rawClass = javaType.getRawClass();
        this.f15275f = rawClass;
        this.f15272c = aVar;
        this.f15273d = javaType.getBindings();
        AnnotationIntrospector annotationIntrospector = mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null;
        this.f15271b = annotationIntrospector;
        this.f15276g = aVar != null ? aVar.findMixInClassFor(rawClass) : null;
        this.f15277h = (annotationIntrospector == null || (com.fasterxml.jackson.databind.util.g.Y(rawClass) && javaType.isContainerType())) ? false : true;
    }

    private AnnotationCollector a(AnnotationCollector annotationCollector, Annotation[] annotationArr) {
        if (annotationArr != null) {
            for (Annotation annotation : annotationArr) {
                if (!annotationCollector.h(annotation)) {
                    annotationCollector = annotationCollector.a(annotation);
                    if (this.f15271b.isAnnotationBundle(annotation)) {
                        annotationCollector = c(annotationCollector, annotation);
                    }
                }
            }
        }
        return annotationCollector;
    }

    private AnnotationCollector b(AnnotationCollector annotationCollector, Class<?> cls, Class<?> cls2) {
        if (cls2 != null) {
            annotationCollector = a(annotationCollector, com.fasterxml.jackson.databind.util.g.r(cls2));
            for (Class<?> cls3 : com.fasterxml.jackson.databind.util.g.z(cls2, cls, false)) {
                annotationCollector = a(annotationCollector, com.fasterxml.jackson.databind.util.g.r(cls3));
            }
        }
        return annotationCollector;
    }

    private AnnotationCollector c(AnnotationCollector annotationCollector, Annotation annotation) {
        Annotation[] r9;
        for (Annotation annotation2 : com.fasterxml.jackson.databind.util.g.r(annotation.annotationType())) {
            if (!(annotation2 instanceof Target) && !(annotation2 instanceof Retention) && !annotationCollector.h(annotation2)) {
                annotationCollector = annotationCollector.a(annotation2);
                if (this.f15271b.isAnnotationBundle(annotation2)) {
                    annotationCollector = c(annotationCollector, annotation2);
                }
            }
        }
        return annotationCollector;
    }

    private static void d(JavaType javaType, List<JavaType> list, boolean z9) {
        Class<?> rawClass = javaType.getRawClass();
        if (z9) {
            if (f(list, rawClass)) {
                return;
            }
            list.add(javaType);
            if (rawClass == f15268l || rawClass == f15269m) {
                return;
            }
        }
        for (JavaType javaType2 : javaType.getInterfaces()) {
            d(javaType2, list, true);
        }
    }

    private static void e(JavaType javaType, List<JavaType> list, boolean z9) {
        Class<?> rawClass = javaType.getRawClass();
        if (rawClass == f15266j || rawClass == f15267k) {
            return;
        }
        if (z9) {
            if (f(list, rawClass)) {
                return;
            }
            list.add(javaType);
        }
        for (JavaType javaType2 : javaType.getInterfaces()) {
            d(javaType2, list, true);
        }
        JavaType superClass = javaType.getSuperClass();
        if (superClass != null) {
            e(superClass, list, true);
        }
    }

    private static boolean f(List<JavaType> list, Class<?> cls) {
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (list.get(i4).getRawClass() == cls) {
                return true;
            }
        }
        return false;
    }

    static c g(MapperConfig<?> mapperConfig, Class<?> cls) {
        return new c(cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c h(Class<?> cls) {
        return new c(cls);
    }

    public static c i(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar) {
        if (javaType.isArrayType() && p(mapperConfig, javaType.getRawClass())) {
            return g(mapperConfig, javaType.getRawClass());
        }
        return new d(mapperConfig, javaType, aVar).k();
    }

    private com.fasterxml.jackson.databind.util.a j(List<JavaType> list) {
        if (this.f15271b == null) {
            return f15265i;
        }
        l.a aVar = this.f15272c;
        boolean z9 = aVar != null && (!(aVar instanceof SimpleMixInResolver) || ((SimpleMixInResolver) aVar).hasMixIns());
        if (!z9 && !this.f15277h) {
            return f15265i;
        }
        AnnotationCollector e4 = AnnotationCollector.e();
        Class<?> cls = this.f15276g;
        if (cls != null) {
            e4 = b(e4, this.f15275f, cls);
        }
        if (this.f15277h) {
            e4 = a(e4, com.fasterxml.jackson.databind.util.g.r(this.f15275f));
        }
        for (JavaType javaType : list) {
            if (z9) {
                Class<?> rawClass = javaType.getRawClass();
                e4 = b(e4, rawClass, this.f15272c.findMixInClassFor(rawClass));
            }
            if (this.f15277h) {
                e4 = a(e4, com.fasterxml.jackson.databind.util.g.r(javaType.getRawClass()));
            }
        }
        if (z9) {
            e4 = b(e4, Object.class, this.f15272c.findMixInClassFor(Object.class));
        }
        return e4.c();
    }

    public static c m(MapperConfig<?> mapperConfig, JavaType javaType, l.a aVar) {
        if (javaType.isArrayType() && p(mapperConfig, javaType.getRawClass())) {
            return g(mapperConfig, javaType.getRawClass());
        }
        return new d(mapperConfig, javaType, aVar).l();
    }

    public static c n(MapperConfig<?> mapperConfig, Class<?> cls) {
        return o(mapperConfig, cls, mapperConfig);
    }

    public static c o(MapperConfig<?> mapperConfig, Class<?> cls, l.a aVar) {
        if (cls.isArray() && p(mapperConfig, cls)) {
            return g(mapperConfig, cls);
        }
        return new d(mapperConfig, cls, aVar).l();
    }

    private static boolean p(MapperConfig<?> mapperConfig, Class<?> cls) {
        return mapperConfig == null || mapperConfig.findMixInClassFor(cls) == null;
    }

    c k() {
        ArrayList arrayList = new ArrayList(8);
        if (!this.f15274e.hasRawClass(Object.class)) {
            if (this.f15274e.isInterface()) {
                d(this.f15274e, arrayList, false);
            } else {
                e(this.f15274e, arrayList, false);
            }
        }
        return new c(this.f15274e, this.f15275f, arrayList, this.f15276g, j(arrayList), this.f15273d, this.f15271b, this.f15272c, this.f15270a.getTypeFactory(), this.f15277h);
    }

    c l() {
        List<JavaType> emptyList = Collections.emptyList();
        return new c(null, this.f15275f, emptyList, this.f15276g, j(emptyList), this.f15273d, this.f15271b, this.f15272c, this.f15270a.getTypeFactory(), this.f15277h);
    }

    d(MapperConfig<?> mapperConfig, Class<?> cls, l.a aVar) {
        this.f15270a = mapperConfig;
        this.f15274e = null;
        this.f15275f = cls;
        this.f15272c = aVar;
        this.f15273d = TypeBindings.emptyBindings();
        if (mapperConfig == null) {
            this.f15271b = null;
            this.f15276g = null;
        } else {
            this.f15271b = mapperConfig.isAnnotationProcessingEnabled() ? mapperConfig.getAnnotationIntrospector() : null;
            this.f15276g = aVar != null ? aVar.findMixInClassFor(cls) : null;
        }
        this.f15277h = this.f15271b != null;
    }
}
