package com.google.common.base;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Predicates.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class c0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Predicates.java */
    /* loaded from: classes2.dex */
    public static class b<T> implements b0<T>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32120b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final List<? extends b0<? super T>> f32121a;

        @Override // com.google.common.base.b0
        public boolean apply(@NullableDecl T t9) {
            for (int i4 = 0; i4 < this.f32121a.size(); i4++) {
                if (!this.f32121a.get(i4).apply(t9)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof b) {
                return this.f32121a.equals(((b) obj).f32121a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32121a.hashCode() + 306654252;
        }

        public String toString() {
            return c0.w("and", this.f32121a);
        }

        private b(List<? extends b0<? super T>> list) {
            this.f32121a = list;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Predicates.java */
    /* loaded from: classes2.dex */
    public static class c<A, B> implements b0<A>, Serializable {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32122c = 0;

        /* renamed from: a  reason: collision with root package name */
        final b0<B> f32123a;

        /* renamed from: b  reason: collision with root package name */
        final q<A, ? extends B> f32124b;

        @Override // com.google.common.base.b0
        public boolean apply(@NullableDecl A a10) {
            return this.f32123a.apply(this.f32124b.apply(a10));
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f32124b.equals(cVar.f32124b) && this.f32123a.equals(cVar.f32123a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32124b.hashCode() ^ this.f32123a.hashCode();
        }

        public String toString() {
            return this.f32123a + "(" + this.f32124b + ")";
        }

        private c(b0<B> b0Var, q<A, ? extends B> qVar) {
            this.f32123a = (b0) a0.E(b0Var);
            this.f32124b = (q) a0.E(qVar);
        }
    }

    /* compiled from: Predicates.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static class d extends e {

        /* renamed from: c  reason: collision with root package name */
        private static final long f32125c = 0;

        d(String str) {
            super(z.a(str));
        }

        @Override // com.google.common.base.c0.e
        public String toString() {
            return "Predicates.containsPattern(" + this.f32127a.e() + ")";
        }
    }

    /* compiled from: Predicates.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static class e implements b0<CharSequence>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32126b = 0;

        /* renamed from: a  reason: collision with root package name */
        final com.google.common.base.g f32127a;

        e(com.google.common.base.g gVar) {
            this.f32127a = (com.google.common.base.g) a0.E(gVar);
        }

        @Override // com.google.common.base.b0
        /* renamed from: a */
        public boolean apply(CharSequence charSequence) {
            return this.f32127a.d(charSequence).b();
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                return w.a(this.f32127a.e(), eVar.f32127a.e()) && this.f32127a.b() == eVar.f32127a.b();
            }
            return false;
        }

        public int hashCode() {
            return w.b(this.f32127a.e(), Integer.valueOf(this.f32127a.b()));
        }

        public String toString() {
            String bVar = v.c(this.f32127a).f("pattern", this.f32127a.e()).d("pattern.flags", this.f32127a.b()).toString();
            return "Predicates.contains(" + bVar + ")";
        }
    }

    /* compiled from: Predicates.java */
    /* loaded from: classes2.dex */
    private static class f<T> implements b0<T>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32128b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Collection<?> f32129a;

        @Override // com.google.common.base.b0
        public boolean apply(@NullableDecl T t9) {
            try {
                return this.f32129a.contains(t9);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof f) {
                return this.f32129a.equals(((f) obj).f32129a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32129a.hashCode();
        }

        public String toString() {
            return "Predicates.in(" + this.f32129a + ")";
        }

        private f(Collection<?> collection) {
            this.f32129a = (Collection) a0.E(collection);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Predicates.java */
    @h3.c
    /* loaded from: classes2.dex */
    public static class g implements b0<Object>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32130b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f32131a;

        @Override // com.google.common.base.b0
        public boolean apply(@NullableDecl Object obj) {
            return this.f32131a.isInstance(obj);
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            return (obj instanceof g) && this.f32131a == ((g) obj).f32131a;
        }

        public int hashCode() {
            return this.f32131a.hashCode();
        }

        public String toString() {
            return "Predicates.instanceOf(" + this.f32131a.getName() + ")";
        }

        private g(Class<?> cls) {
            this.f32131a = (Class) a0.E(cls);
        }
    }

    /* compiled from: Predicates.java */
    /* loaded from: classes2.dex */
    private static class h<T> implements b0<T>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32132b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final T f32133a;

        @Override // com.google.common.base.b0
        public boolean apply(T t9) {
            return this.f32133a.equals(t9);
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof h) {
                return this.f32133a.equals(((h) obj).f32133a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32133a.hashCode();
        }

        public String toString() {
            return "Predicates.equalTo(" + this.f32133a + ")";
        }

        private h(T t9) {
            this.f32133a = t9;
        }
    }

    /* compiled from: Predicates.java */
    /* loaded from: classes2.dex */
    private static class i<T> implements b0<T>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32134b = 0;

        /* renamed from: a  reason: collision with root package name */
        final b0<T> f32135a;

        i(b0<T> b0Var) {
            this.f32135a = (b0) a0.E(b0Var);
        }

        @Override // com.google.common.base.b0
        public boolean apply(@NullableDecl T t9) {
            return !this.f32135a.apply(t9);
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof i) {
                return this.f32135a.equals(((i) obj).f32135a);
            }
            return false;
        }

        public int hashCode() {
            return ~this.f32135a.hashCode();
        }

        public String toString() {
            return "Predicates.not(" + this.f32135a + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Predicates.java */
    /* loaded from: classes2.dex */
    public static abstract class j implements b0<Object> {

        /* renamed from: a  reason: collision with root package name */
        public static final j f32136a;

        /* renamed from: b  reason: collision with root package name */
        public static final j f32137b;

        /* renamed from: c  reason: collision with root package name */
        public static final j f32138c;

        /* renamed from: d  reason: collision with root package name */
        public static final j f32139d;

        /* renamed from: e  reason: collision with root package name */
        private static final /* synthetic */ j[] f32140e;

        /* compiled from: Predicates.java */
        /* loaded from: classes2.dex */
        enum a extends j {
            a(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.base.b0
            public boolean apply(@NullableDecl Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysTrue()";
            }
        }

        /* compiled from: Predicates.java */
        /* loaded from: classes2.dex */
        enum b extends j {
            b(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.base.b0
            public boolean apply(@NullableDecl Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.alwaysFalse()";
            }
        }

        /* compiled from: Predicates.java */
        /* loaded from: classes2.dex */
        enum c extends j {
            c(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.base.b0
            public boolean apply(@NullableDecl Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.isNull()";
            }
        }

        /* compiled from: Predicates.java */
        /* loaded from: classes2.dex */
        enum d extends j {
            d(String str, int i4) {
                super(str, i4);
            }

            @Override // com.google.common.base.b0
            public boolean apply(@NullableDecl Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Predicates.notNull()";
            }
        }

        static {
            a aVar = new a("ALWAYS_TRUE", 0);
            f32136a = aVar;
            b bVar = new b("ALWAYS_FALSE", 1);
            f32137b = bVar;
            c cVar = new c("IS_NULL", 2);
            f32138c = cVar;
            d dVar = new d("NOT_NULL", 3);
            f32139d = dVar;
            f32140e = new j[]{aVar, bVar, cVar, dVar};
        }

        private j(String str, int i4) {
        }

        public static j valueOf(String str) {
            return (j) Enum.valueOf(j.class, str);
        }

        public static j[] values() {
            return (j[]) f32140e.clone();
        }

        <T> b0<T> a() {
            return this;
        }
    }

    /* compiled from: Predicates.java */
    /* loaded from: classes2.dex */
    private static class k<T> implements b0<T>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32141b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final List<? extends b0<? super T>> f32142a;

        @Override // com.google.common.base.b0
        public boolean apply(@NullableDecl T t9) {
            for (int i4 = 0; i4 < this.f32142a.size(); i4++) {
                if (this.f32142a.get(i4).apply(t9)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            if (obj instanceof k) {
                return this.f32142a.equals(((k) obj).f32142a);
            }
            return false;
        }

        public int hashCode() {
            return this.f32142a.hashCode() + 87855567;
        }

        public String toString() {
            return c0.w("or", this.f32142a);
        }

        private k(List<? extends b0<? super T>> list) {
            this.f32142a = list;
        }
    }

    /* compiled from: Predicates.java */
    @h3.c
    /* loaded from: classes2.dex */
    private static class l implements b0<Class<?>>, Serializable {

        /* renamed from: b  reason: collision with root package name */
        private static final long f32143b = 0;

        /* renamed from: a  reason: collision with root package name */
        private final Class<?> f32144a;

        @Override // com.google.common.base.b0
        /* renamed from: a */
        public boolean apply(Class<?> cls) {
            return this.f32144a.isAssignableFrom(cls);
        }

        @Override // com.google.common.base.b0
        public boolean equals(@NullableDecl Object obj) {
            return (obj instanceof l) && this.f32144a == ((l) obj).f32144a;
        }

        public int hashCode() {
            return this.f32144a.hashCode();
        }

        public String toString() {
            return "Predicates.subtypeOf(" + this.f32144a.getName() + ")";
        }

        private l(Class<?> cls) {
            this.f32144a = (Class) a0.E(cls);
        }
    }

    private c0() {
    }

    @h3.b(serializable = true)
    public static <T> b0<T> b() {
        return j.f32137b.a();
    }

    @h3.b(serializable = true)
    public static <T> b0<T> c() {
        return j.f32136a.a();
    }

    public static <T> b0<T> d(b0<? super T> b0Var, b0<? super T> b0Var2) {
        return new b(g((b0) a0.E(b0Var), (b0) a0.E(b0Var2)));
    }

    public static <T> b0<T> e(Iterable<? extends b0<? super T>> iterable) {
        return new b(k(iterable));
    }

    @SafeVarargs
    public static <T> b0<T> f(b0<? super T>... b0VarArr) {
        return new b(l(b0VarArr));
    }

    private static <T> List<b0<? super T>> g(b0<? super T> b0Var, b0<? super T> b0Var2) {
        return Arrays.asList(b0Var, b0Var2);
    }

    public static <A, B> b0<A> h(b0<B> b0Var, q<A, ? extends B> qVar) {
        return new c(b0Var, qVar);
    }

    @h3.c("java.util.regex.Pattern")
    public static b0<CharSequence> i(Pattern pattern) {
        return new e(new t(pattern));
    }

    @h3.c
    public static b0<CharSequence> j(String str) {
        return new d(str);
    }

    static <T> List<T> k(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        for (T t9 : iterable) {
            arrayList.add(a0.E(t9));
        }
        return arrayList;
    }

    private static <T> List<T> l(T... tArr) {
        return k(Arrays.asList(tArr));
    }

    public static <T> b0<T> m(@NullableDecl T t9) {
        return t9 == null ? p() : new h(t9);
    }

    public static <T> b0<T> n(Collection<? extends T> collection) {
        return new f(collection);
    }

    @h3.c
    public static b0<Object> o(Class<?> cls) {
        return new g(cls);
    }

    @h3.b(serializable = true)
    public static <T> b0<T> p() {
        return j.f32138c.a();
    }

    public static <T> b0<T> q(b0<T> b0Var) {
        return new i(b0Var);
    }

    @h3.b(serializable = true)
    public static <T> b0<T> r() {
        return j.f32139d.a();
    }

    public static <T> b0<T> s(b0<? super T> b0Var, b0<? super T> b0Var2) {
        return new k(g((b0) a0.E(b0Var), (b0) a0.E(b0Var2)));
    }

    public static <T> b0<T> t(Iterable<? extends b0<? super T>> iterable) {
        return new k(k(iterable));
    }

    @SafeVarargs
    public static <T> b0<T> u(b0<? super T>... b0VarArr) {
        return new k(l(b0VarArr));
    }

    @h3.c
    @h3.a
    public static b0<Class<?>> v(Class<?> cls) {
        return new l(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String w(String str, Iterable<?> iterable) {
        StringBuilder sb = new StringBuilder("Predicates.");
        sb.append(str);
        sb.append('(');
        boolean z9 = true;
        for (Object obj : iterable) {
            if (!z9) {
                sb.append(',');
            }
            sb.append(obj);
            z9 = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
