package com.fasterxml.jackson.databind.introspect;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class AnnotationCollector {

    /* renamed from: b  reason: collision with root package name */
    protected static final com.fasterxml.jackson.databind.util.a f15174b = new NoAnnotations();

    /* renamed from: a  reason: collision with root package name */
    protected final Object f15175a;

    /* loaded from: classes.dex */
    public static class NoAnnotations implements com.fasterxml.jackson.databind.util.a, Serializable {

        /* renamed from: a  reason: collision with root package name */
        private static final long f15176a = 1;

        NoAnnotations() {
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public <A extends Annotation> A get(Class<A> cls) {
            return null;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public boolean has(Class<?> cls) {
            return false;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
            return false;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public int size() {
            return 0;
        }
    }

    /* loaded from: classes.dex */
    public static class OneAnnotation implements com.fasterxml.jackson.databind.util.a, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f15177c = 1;

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f15178a;

        /* renamed from: b  reason: collision with root package name */
        private final Annotation f15179b;

        public OneAnnotation(Class<?> cls, Annotation annotation) {
            this.f15178a = cls;
            this.f15179b = annotation;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public <A extends Annotation> A get(Class<A> cls) {
            if (this.f15178a == cls) {
                return (A) this.f15179b;
            }
            return null;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public boolean has(Class<?> cls) {
            return this.f15178a == cls;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
            for (Class<? extends Annotation> cls : clsArr) {
                if (cls == this.f15178a) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public int size() {
            return 1;
        }
    }

    /* loaded from: classes.dex */
    public static class TwoAnnotations implements com.fasterxml.jackson.databind.util.a, Serializable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f15180e = 1;

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f15181a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<?> f15182b;

        /* renamed from: c  reason: collision with root package name */
        private final Annotation f15183c;

        /* renamed from: d  reason: collision with root package name */
        private final Annotation f15184d;

        public TwoAnnotations(Class<?> cls, Annotation annotation, Class<?> cls2, Annotation annotation2) {
            this.f15181a = cls;
            this.f15183c = annotation;
            this.f15182b = cls2;
            this.f15184d = annotation2;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public <A extends Annotation> A get(Class<A> cls) {
            if (this.f15181a == cls) {
                return (A) this.f15183c;
            }
            if (this.f15182b == cls) {
                return (A) this.f15184d;
            }
            return null;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public boolean has(Class<?> cls) {
            return this.f15181a == cls || this.f15182b == cls;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public boolean hasOneOf(Class<? extends Annotation>[] clsArr) {
            for (Class<? extends Annotation> cls : clsArr) {
                if (cls == this.f15181a || cls == this.f15182b) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.fasterxml.jackson.databind.util.a
        public int size() {
            return 2;
        }
    }

    /* loaded from: classes.dex */
    static class a extends AnnotationCollector {

        /* renamed from: c  reason: collision with root package name */
        public static final a f15185c = new a(null);

        a(Object obj) {
            super(obj);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public AnnotationCollector a(Annotation annotation) {
            return new c(this.f15175a, annotation.annotationType(), annotation);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public i b() {
            return new i();
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public com.fasterxml.jackson.databind.util.a c() {
            return AnnotationCollector.f15174b;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public boolean h(Annotation annotation) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    static class b extends AnnotationCollector {

        /* renamed from: c  reason: collision with root package name */
        protected final HashMap<Class<?>, Annotation> f15186c;

        public b(Object obj, Class<?> cls, Annotation annotation, Class<?> cls2, Annotation annotation2) {
            super(obj);
            HashMap<Class<?>, Annotation> hashMap = new HashMap<>();
            this.f15186c = hashMap;
            hashMap.put(cls, annotation);
            hashMap.put(cls2, annotation2);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public AnnotationCollector a(Annotation annotation) {
            this.f15186c.put(annotation.annotationType(), annotation);
            return this;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public i b() {
            i iVar = new i();
            for (Annotation annotation : this.f15186c.values()) {
                iVar.b(annotation);
            }
            return iVar;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public com.fasterxml.jackson.databind.util.a c() {
            if (this.f15186c.size() == 2) {
                Iterator<Map.Entry<Class<?>, Annotation>> it = this.f15186c.entrySet().iterator();
                Map.Entry<Class<?>, Annotation> next = it.next();
                Map.Entry<Class<?>, Annotation> next2 = it.next();
                return new TwoAnnotations(next.getKey(), next.getValue(), next2.getKey(), next2.getValue());
            }
            return new i(this.f15186c);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public boolean h(Annotation annotation) {
            return this.f15186c.containsKey(annotation.annotationType());
        }
    }

    /* loaded from: classes.dex */
    static class c extends AnnotationCollector {

        /* renamed from: c  reason: collision with root package name */
        private Class<?> f15187c;

        /* renamed from: d  reason: collision with root package name */
        private Annotation f15188d;

        public c(Object obj, Class<?> cls, Annotation annotation) {
            super(obj);
            this.f15187c = cls;
            this.f15188d = annotation;
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public AnnotationCollector a(Annotation annotation) {
            Class<? extends Annotation> annotationType = annotation.annotationType();
            Class<?> cls = this.f15187c;
            if (cls == annotationType) {
                this.f15188d = annotation;
                return this;
            }
            return new b(this.f15175a, cls, this.f15188d, annotationType, annotation);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public i b() {
            return i.f(this.f15187c, this.f15188d);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public com.fasterxml.jackson.databind.util.a c() {
            return new OneAnnotation(this.f15187c, this.f15188d);
        }

        @Override // com.fasterxml.jackson.databind.introspect.AnnotationCollector
        public boolean h(Annotation annotation) {
            return annotation.annotationType() == this.f15187c;
        }
    }

    protected AnnotationCollector(Object obj) {
        this.f15175a = obj;
    }

    public static com.fasterxml.jackson.databind.util.a d() {
        return f15174b;
    }

    public static AnnotationCollector e() {
        return a.f15185c;
    }

    public static AnnotationCollector f(Object obj) {
        return new a(obj);
    }

    public abstract AnnotationCollector a(Annotation annotation);

    public abstract i b();

    public abstract com.fasterxml.jackson.databind.util.a c();

    public Object g() {
        return this.f15175a;
    }

    public abstract boolean h(Annotation annotation);
}
