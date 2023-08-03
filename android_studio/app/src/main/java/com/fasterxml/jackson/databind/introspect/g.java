package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.introspect.t;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: AnnotatedMethodCollector.java */
/* loaded from: classes.dex */
public class g extends m {

    /* renamed from: d  reason: collision with root package name */
    private final l.a f15287d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f15288e;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnnotatedMethodCollector.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public t f15289a;

        /* renamed from: b  reason: collision with root package name */
        public Method f15290b;

        /* renamed from: c  reason: collision with root package name */
        public AnnotationCollector f15291c;

        public a(t tVar, Method method, AnnotationCollector annotationCollector) {
            this.f15289a = tVar;
            this.f15290b = method;
            this.f15291c = annotationCollector;
        }

        public AnnotatedMethod a() {
            Method method = this.f15290b;
            if (method == null) {
                return null;
            }
            return new AnnotatedMethod(this.f15289a, method, this.f15291c.b(), null);
        }
    }

    g(AnnotationIntrospector annotationIntrospector, l.a aVar, boolean z9) {
        super(annotationIntrospector);
        this.f15287d = annotationIntrospector == null ? null : aVar;
        this.f15288e = z9;
    }

    private void i(t tVar, Class<?> cls, Map<n, a> map, Class<?> cls2) {
        Method[] E;
        if (cls2 != null) {
            j(tVar, cls, map, cls2);
        }
        if (cls == null) {
            return;
        }
        for (Method method : com.fasterxml.jackson.databind.util.g.E(cls)) {
            if (k(method)) {
                n nVar = new n(method);
                a aVar = map.get(nVar);
                if (aVar == null) {
                    map.put(nVar, new a(tVar, method, this.f15306a == null ? AnnotationCollector.e() : e(method.getDeclaredAnnotations())));
                } else {
                    if (this.f15288e) {
                        aVar.f15291c = f(aVar.f15291c, method.getDeclaredAnnotations());
                    }
                    Method method2 = aVar.f15290b;
                    if (method2 == null) {
                        aVar.f15290b = method;
                    } else if (Modifier.isAbstract(method2.getModifiers()) && !Modifier.isAbstract(method.getModifiers())) {
                        aVar.f15290b = method;
                        aVar.f15289a = tVar;
                    }
                }
            }
        }
    }

    private static boolean k(Method method) {
        return (Modifier.isStatic(method.getModifiers()) || method.isSynthetic() || method.isBridge() || method.getParameterTypes().length > 2) ? false : true;
    }

    public static h m(AnnotationIntrospector annotationIntrospector, t tVar, l.a aVar, TypeFactory typeFactory, JavaType javaType, List<JavaType> list, Class<?> cls, boolean z9) {
        return new g(annotationIntrospector, aVar, z9).l(typeFactory, tVar, javaType, list, cls);
    }

    protected void j(t tVar, Class<?> cls, Map<n, a> map, Class<?> cls2) {
        Method[] declaredMethods;
        if (this.f15306a == null) {
            return;
        }
        for (Class<?> cls3 : com.fasterxml.jackson.databind.util.g.y(cls2, cls, true)) {
            for (Method method : cls3.getDeclaredMethods()) {
                if (k(method)) {
                    n nVar = new n(method);
                    a aVar = map.get(nVar);
                    Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
                    if (aVar == null) {
                        map.put(nVar, new a(tVar, null, e(declaredAnnotations)));
                    } else {
                        aVar.f15291c = f(aVar.f15291c, declaredAnnotations);
                    }
                }
            }
        }
    }

    h l(TypeFactory typeFactory, t tVar, JavaType javaType, List<JavaType> list, Class<?> cls) {
        boolean z9;
        Class<?> findMixInClassFor;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        i(tVar, javaType.getRawClass(), linkedHashMap, cls);
        for (JavaType javaType2 : list) {
            l.a aVar = this.f15287d;
            i(new t.a(typeFactory, javaType2.getBindings()), javaType2.getRawClass(), linkedHashMap, aVar == null ? null : aVar.findMixInClassFor(javaType2.getRawClass()));
        }
        l.a aVar2 = this.f15287d;
        if (aVar2 == null || (findMixInClassFor = aVar2.findMixInClassFor(Object.class)) == null) {
            z9 = false;
        } else {
            j(tVar, javaType.getRawClass(), linkedHashMap, findMixInClassFor);
            z9 = true;
        }
        if (z9 && this.f15306a != null && !linkedHashMap.isEmpty()) {
            for (Map.Entry<n, a> entry : linkedHashMap.entrySet()) {
                n key = entry.getKey();
                if ("hashCode".equals(key.b()) && key.a() == 0) {
                    try {
                        Method declaredMethod = Object.class.getDeclaredMethod(key.b(), new Class[0]);
                        if (declaredMethod != null) {
                            a value = entry.getValue();
                            value.f15291c = f(value.f15291c, declaredMethod.getDeclaredAnnotations());
                            value.f15290b = declaredMethod;
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        if (linkedHashMap.isEmpty()) {
            return new h();
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap.size());
        for (Map.Entry<n, a> entry2 : linkedHashMap.entrySet()) {
            AnnotatedMethod a10 = entry2.getValue().a();
            if (a10 != null) {
                linkedHashMap2.put(entry2.getKey(), a10);
            }
        }
        return new h(linkedHashMap2);
    }
}
