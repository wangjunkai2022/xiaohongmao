package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Component.java */
/* loaded from: classes2.dex */
public final class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Class<? super T>> f35426a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<t> f35427b;

    /* renamed from: c  reason: collision with root package name */
    private final int f35428c;

    /* renamed from: d  reason: collision with root package name */
    private final int f35429d;

    /* renamed from: e  reason: collision with root package name */
    private final j<T> f35430e;

    /* renamed from: f  reason: collision with root package name */
    private final Set<Class<?>> f35431f;

    /* compiled from: Component.java */
    /* loaded from: classes2.dex */
    public static class b<T> {

        /* renamed from: a  reason: collision with root package name */
        private final Set<Class<? super T>> f35432a;

        /* renamed from: b  reason: collision with root package name */
        private final Set<t> f35433b;

        /* renamed from: c  reason: collision with root package name */
        private int f35434c;

        /* renamed from: d  reason: collision with root package name */
        private int f35435d;

        /* renamed from: e  reason: collision with root package name */
        private j<T> f35436e;

        /* renamed from: f  reason: collision with root package name */
        private Set<Class<?>> f35437f;

        /* JADX INFO: Access modifiers changed from: private */
        public b<T> g() {
            this.f35435d = 1;
            return this;
        }

        private b<T> i(int i4) {
            c0.d(this.f35434c == 0, "Instantiation type has already been set.");
            this.f35434c = i4;
            return this;
        }

        private void j(Class<?> cls) {
            c0.a(!this.f35432a.contains(cls), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b<T> b(t tVar) {
            c0.c(tVar, "Null dependency");
            j(tVar.c());
            this.f35433b.add(tVar);
            return this;
        }

        public b<T> c() {
            return i(1);
        }

        public f<T> d() {
            c0.d(this.f35436e != null, "Missing required property: factory.");
            return new f<>(new HashSet(this.f35432a), new HashSet(this.f35433b), this.f35434c, this.f35435d, this.f35436e, this.f35437f);
        }

        public b<T> e() {
            return i(2);
        }

        public b<T> f(j<T> jVar) {
            this.f35436e = (j) c0.c(jVar, "Null factory");
            return this;
        }

        public b<T> h(Class<?> cls) {
            this.f35437f.add(cls);
            return this;
        }

        @SafeVarargs
        private b(Class<T> cls, Class<? super T>... clsArr) {
            HashSet hashSet = new HashSet();
            this.f35432a = hashSet;
            this.f35433b = new HashSet();
            this.f35434c = 0;
            this.f35435d = 0;
            this.f35437f = new HashSet();
            c0.c(cls, "Null interface");
            hashSet.add(cls);
            for (Class<? super T> cls2 : clsArr) {
                c0.c(cls2, "Null interface");
            }
            Collections.addAll(this.f35432a, clsArr);
        }
    }

    public static <T> b<T> a(Class<T> cls) {
        return new b<>(cls, new Class[0]);
    }

    @SafeVarargs
    public static <T> b<T> b(Class<T> cls, Class<? super T>... clsArr) {
        return new b<>(cls, clsArr);
    }

    public static <T> f<T> g(T t9, Class<T> cls) {
        return h(cls).f(e.b(t9)).d();
    }

    public static <T> b<T> h(Class<T> cls) {
        return a(cls).g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object m(Object obj, g gVar) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object n(Object obj, g gVar) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object o(Object obj, g gVar) {
        return obj;
    }

    @Deprecated
    public static <T> f<T> p(Class<T> cls, T t9) {
        return a(cls).f(c.b(t9)).d();
    }

    @SafeVarargs
    public static <T> f<T> q(T t9, Class<T> cls, Class<? super T>... clsArr) {
        return b(cls, clsArr).f(d.b(t9)).d();
    }

    public Set<t> c() {
        return this.f35427b;
    }

    public j<T> d() {
        return this.f35430e;
    }

    public Set<Class<? super T>> e() {
        return this.f35426a;
    }

    public Set<Class<?>> f() {
        return this.f35431f;
    }

    public boolean i() {
        return this.f35428c == 1;
    }

    public boolean j() {
        return this.f35428c == 2;
    }

    public boolean k() {
        return this.f35428c == 0;
    }

    public boolean l() {
        return this.f35429d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f35426a.toArray()) + ">{" + this.f35428c + ", type=" + this.f35429d + ", deps=" + Arrays.toString(this.f35427b.toArray()) + com.alipay.sdk.util.i.f6967d;
    }

    private f(Set<Class<? super T>> set, Set<t> set2, int i4, int i10, j<T> jVar, Set<Class<?>> set3) {
        this.f35426a = Collections.unmodifiableSet(set);
        this.f35427b = Collections.unmodifiableSet(set2);
        this.f35428c = i4;
        this.f35429d = i10;
        this.f35430e = jVar;
        this.f35431f = Collections.unmodifiableSet(set3);
    }
}
