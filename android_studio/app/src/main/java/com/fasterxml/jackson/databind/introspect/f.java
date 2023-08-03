package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.l;
import com.fasterxml.jackson.databind.introspect.t;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* compiled from: AnnotatedFieldCollector.java */
/* loaded from: classes.dex */
public class f extends m {

    /* renamed from: d  reason: collision with root package name */
    private final TypeFactory f15281d;

    /* renamed from: e  reason: collision with root package name */
    private final l.a f15282e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f15283f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AnnotatedFieldCollector.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final t f15284a;

        /* renamed from: b  reason: collision with root package name */
        public final Field f15285b;

        /* renamed from: c  reason: collision with root package name */
        public AnnotationCollector f15286c = AnnotationCollector.e();

        public a(t tVar, Field field) {
            this.f15284a = tVar;
            this.f15285b = field;
        }

        public AnnotatedField a() {
            return new AnnotatedField(this.f15284a, this.f15285b, this.f15286c.b());
        }
    }

    f(AnnotationIntrospector annotationIntrospector, TypeFactory typeFactory, l.a aVar, boolean z9) {
        super(annotationIntrospector);
        this.f15281d = typeFactory;
        this.f15282e = annotationIntrospector == null ? null : aVar;
        this.f15283f = z9;
    }

    private void i(Class<?> cls, Class<?> cls2, Map<String, a> map) {
        Field[] declaredFields;
        a aVar;
        for (Class<?> cls3 : com.fasterxml.jackson.databind.util.g.z(cls, cls2, true)) {
            for (Field field : cls3.getDeclaredFields()) {
                if (k(field) && (aVar = map.get(field.getName())) != null) {
                    aVar.f15286c = d(aVar.f15286c, field.getDeclaredAnnotations());
                }
            }
        }
    }

    private Map<String, a> j(t tVar, JavaType javaType, Map<String, a> map) {
        Field[] declaredFields;
        l.a aVar;
        Class<?> findMixInClassFor;
        JavaType superClass = javaType.getSuperClass();
        if (superClass == null) {
            return map;
        }
        Class<?> rawClass = javaType.getRawClass();
        Map<String, a> j4 = j(new t.a(this.f15281d, superClass.getBindings()), superClass, map);
        for (Field field : rawClass.getDeclaredFields()) {
            if (k(field)) {
                if (j4 == null) {
                    j4 = new LinkedHashMap<>();
                }
                a aVar2 = new a(tVar, field);
                if (this.f15283f) {
                    aVar2.f15286c = d(aVar2.f15286c, field.getDeclaredAnnotations());
                }
                j4.put(field.getName(), aVar2);
            }
        }
        if (j4 != null && (aVar = this.f15282e) != null && (findMixInClassFor = aVar.findMixInClassFor(rawClass)) != null) {
            i(findMixInClassFor, rawClass, j4);
        }
        return j4;
    }

    private boolean k(Field field) {
        return (field.isSynthetic() || Modifier.isStatic(field.getModifiers())) ? false : true;
    }

    public static List<AnnotatedField> m(AnnotationIntrospector annotationIntrospector, t tVar, l.a aVar, TypeFactory typeFactory, JavaType javaType, boolean z9) {
        return new f(annotationIntrospector, typeFactory, aVar, z9).l(tVar, javaType);
    }

    List<AnnotatedField> l(t tVar, JavaType javaType) {
        Map<String, a> j4 = j(tVar, javaType, null);
        if (j4 == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(j4.size());
        for (a aVar : j4.values()) {
            arrayList.add(aVar.a());
        }
        return arrayList;
    }
}
