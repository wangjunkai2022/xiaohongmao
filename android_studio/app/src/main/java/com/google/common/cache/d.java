package com.google.common.cache;

import com.google.common.base.Equivalence;
import com.google.common.base.a0;
import com.google.common.base.i0;
import com.google.common.base.j0;
import com.google.common.base.l0;
import com.google.common.base.v;
import com.google.common.cache.a;
import com.google.common.cache.j;
import com.google.errorprone.annotations.CheckReturnValue;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;

/* compiled from: CacheBuilder.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
public final class d<K, V> {

    /* renamed from: q  reason: collision with root package name */
    private static final int f32347q = 16;

    /* renamed from: r  reason: collision with root package name */
    private static final int f32348r = 4;

    /* renamed from: s  reason: collision with root package name */
    private static final int f32349s = 0;

    /* renamed from: t  reason: collision with root package name */
    private static final int f32350t = 0;

    /* renamed from: u  reason: collision with root package name */
    static final i0<? extends a.b> f32351u = j0.d(new a());

    /* renamed from: v  reason: collision with root package name */
    static final f f32352v = new f(0, 0, 0, 0, 0, 0);

    /* renamed from: w  reason: collision with root package name */
    static final i0<a.b> f32353w = new b();

    /* renamed from: x  reason: collision with root package name */
    static final l0 f32354x = new c();

    /* renamed from: y  reason: collision with root package name */
    private static final Logger f32355y = Logger.getLogger(d.class.getName());

    /* renamed from: z  reason: collision with root package name */
    static final int f32356z = -1;
    @MonotonicNonNullDecl

    /* renamed from: f  reason: collision with root package name */
    r<? super K, ? super V> f32362f;
    @MonotonicNonNullDecl

    /* renamed from: g  reason: collision with root package name */
    j.t f32363g;
    @MonotonicNonNullDecl

    /* renamed from: h  reason: collision with root package name */
    j.t f32364h;
    @MonotonicNonNullDecl

    /* renamed from: l  reason: collision with root package name */
    Equivalence<Object> f32368l;
    @MonotonicNonNullDecl

    /* renamed from: m  reason: collision with root package name */
    Equivalence<Object> f32369m;
    @MonotonicNonNullDecl

    /* renamed from: n  reason: collision with root package name */
    o<? super K, ? super V> f32370n;
    @MonotonicNonNullDecl

    /* renamed from: o  reason: collision with root package name */
    l0 f32371o;

    /* renamed from: a  reason: collision with root package name */
    boolean f32357a = true;

    /* renamed from: b  reason: collision with root package name */
    int f32358b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f32359c = -1;

    /* renamed from: d  reason: collision with root package name */
    long f32360d = -1;

    /* renamed from: e  reason: collision with root package name */
    long f32361e = -1;

    /* renamed from: i  reason: collision with root package name */
    long f32365i = -1;

    /* renamed from: j  reason: collision with root package name */
    long f32366j = -1;

    /* renamed from: k  reason: collision with root package name */
    long f32367k = -1;

    /* renamed from: p  reason: collision with root package name */
    i0<? extends a.b> f32372p = f32351u;

    /* compiled from: CacheBuilder.java */
    /* loaded from: classes2.dex */
    static class a implements a.b {
        a() {
        }

        @Override // com.google.common.cache.a.b
        public void a(int i4) {
        }

        @Override // com.google.common.cache.a.b
        public void b(int i4) {
        }

        @Override // com.google.common.cache.a.b
        public void c() {
        }

        @Override // com.google.common.cache.a.b
        public void d(long j4) {
        }

        @Override // com.google.common.cache.a.b
        public void e(long j4) {
        }

        @Override // com.google.common.cache.a.b
        public f f() {
            return d.f32352v;
        }
    }

    /* compiled from: CacheBuilder.java */
    /* loaded from: classes2.dex */
    static class b implements i0<a.b> {
        b() {
        }

        @Override // com.google.common.base.i0
        /* renamed from: a */
        public a.b get() {
            return new a.C0208a();
        }
    }

    /* compiled from: CacheBuilder.java */
    /* loaded from: classes2.dex */
    static class c extends l0 {
        c() {
        }

        @Override // com.google.common.base.l0
        public long a() {
            return 0L;
        }
    }

    /* compiled from: CacheBuilder.java */
    /* renamed from: com.google.common.cache.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    enum EnumC0209d implements o<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.o
        public void a(RemovalNotification<Object, Object> removalNotification) {
        }
    }

    /* compiled from: CacheBuilder.java */
    /* loaded from: classes2.dex */
    enum e implements r<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.r
        public int a(Object obj, Object obj2) {
            return 1;
        }
    }

    private d() {
    }

    public static d<Object, Object> D() {
        return new d<>();
    }

    private void c() {
        a0.h0(this.f32367k == -1, "refreshAfterWrite requires a LoadingCache");
    }

    private void d() {
        if (this.f32362f == null) {
            a0.h0(this.f32361e == -1, "maximumWeight requires weigher");
        } else if (this.f32357a) {
            a0.h0(this.f32361e != -1, "weigher requires maximumWeight");
        } else if (this.f32361e == -1) {
            f32355y.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
        }
    }

    @h3.c
    public static d<Object, Object> h(com.google.common.cache.e eVar) {
        return eVar.f().A();
    }

    @h3.c
    public static d<Object, Object> i(String str) {
        return h(com.google.common.cache.e.e(str));
    }

    @h3.c
    d<K, V> A() {
        this.f32357a = false;
        return this;
    }

    public d<K, V> B(long j4) {
        long j10 = this.f32360d;
        a0.s0(j10 == -1, "maximum size was already set to %s", j10);
        long j11 = this.f32361e;
        a0.s0(j11 == -1, "maximum weight was already set to %s", j11);
        a0.h0(this.f32362f == null, "maximum size can not be combined with weigher");
        a0.e(j4 >= 0, "maximum size must not be negative");
        this.f32360d = j4;
        return this;
    }

    @h3.c
    public d<K, V> C(long j4) {
        long j10 = this.f32361e;
        a0.s0(j10 == -1, "maximum weight was already set to %s", j10);
        long j11 = this.f32360d;
        a0.s0(j11 == -1, "maximum size was already set to %s", j11);
        this.f32361e = j4;
        a0.e(j4 >= 0, "maximum weight must not be negative");
        return this;
    }

    public d<K, V> E() {
        this.f32372p = f32353w;
        return this;
    }

    @h3.c
    public d<K, V> F(long j4, TimeUnit timeUnit) {
        a0.E(timeUnit);
        long j10 = this.f32367k;
        a0.s0(j10 == -1, "refresh was already set to %s ns", j10);
        a0.t(j4 > 0, "duration must be positive: %s %s", j4, timeUnit);
        this.f32367k = timeUnit.toNanos(j4);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    public <K1 extends K, V1 extends V> d<K1, V1> G(o<? super K1, ? super V1> oVar) {
        a0.g0(this.f32370n == null);
        this.f32370n = (o) a0.E(oVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d<K, V> H(j.t tVar) {
        j.t tVar2 = this.f32363g;
        a0.x0(tVar2 == null, "Key strength was already set to %s", tVar2);
        this.f32363g = (j.t) a0.E(tVar);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d<K, V> I(j.t tVar) {
        j.t tVar2 = this.f32364h;
        a0.x0(tVar2 == null, "Value strength was already set to %s", tVar2);
        this.f32364h = (j.t) a0.E(tVar);
        return this;
    }

    @h3.c
    public d<K, V> J() {
        return I(j.t.f32540b);
    }

    public d<K, V> K(l0 l0Var) {
        a0.g0(this.f32371o == null);
        this.f32371o = (l0) a0.E(l0Var);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public d<K, V> L(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f32369m;
        a0.x0(equivalence2 == null, "value equivalence was already set to %s", equivalence2);
        this.f32369m = (Equivalence) a0.E(equivalence);
        return this;
    }

    @h3.c
    public d<K, V> M() {
        return H(j.t.f32541c);
    }

    @h3.c
    public d<K, V> N() {
        return I(j.t.f32541c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h3.c
    public <K1 extends K, V1 extends V> d<K1, V1> O(r<? super K1, ? super V1> rVar) {
        a0.g0(this.f32362f == null);
        if (this.f32357a) {
            long j4 = this.f32360d;
            a0.s0(j4 == -1, "weigher can not be combined with maximum size", j4);
        }
        this.f32362f = (r) a0.E(rVar);
        return this;
    }

    public <K1 extends K, V1 extends V> com.google.common.cache.c<K1, V1> a() {
        d();
        c();
        return new j.o(this);
    }

    public <K1 extends K, V1 extends V> i<K1, V1> b(CacheLoader<? super K1, V1> cacheLoader) {
        d();
        return new j.n(this, cacheLoader);
    }

    public d<K, V> e(int i4) {
        int i10 = this.f32359c;
        a0.n0(i10 == -1, "concurrency level was already set to %s", i10);
        a0.d(i4 > 0);
        this.f32359c = i4;
        return this;
    }

    public d<K, V> f(long j4, TimeUnit timeUnit) {
        long j10 = this.f32366j;
        a0.s0(j10 == -1, "expireAfterAccess was already set to %s ns", j10);
        a0.t(j4 >= 0, "duration cannot be negative: %s %s", j4, timeUnit);
        this.f32366j = timeUnit.toNanos(j4);
        return this;
    }

    public d<K, V> g(long j4, TimeUnit timeUnit) {
        long j10 = this.f32365i;
        a0.s0(j10 == -1, "expireAfterWrite was already set to %s ns", j10);
        a0.t(j4 >= 0, "duration cannot be negative: %s %s", j4, timeUnit);
        this.f32365i = timeUnit.toNanos(j4);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j() {
        int i4 = this.f32359c;
        if (i4 == -1) {
            return 4;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long k() {
        long j4 = this.f32366j;
        if (j4 == -1) {
            return 0L;
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long l() {
        long j4 = this.f32365i;
        if (j4 == -1) {
            return 0L;
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int m() {
        int i4 = this.f32358b;
        if (i4 == -1) {
            return 16;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> n() {
        return (Equivalence) v.a(this.f32368l, o().a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j.t o() {
        return (j.t) v.a(this.f32363g, j.t.f32539a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long p() {
        if (this.f32365i == 0 || this.f32366j == 0) {
            return 0L;
        }
        return this.f32362f == null ? this.f32360d : this.f32361e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long q() {
        long j4 = this.f32367k;
        if (j4 == -1) {
            return 0L;
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K1 extends K, V1 extends V> o<K1, V1> r() {
        return (o) v.a(this.f32370n, EnumC0209d.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i0<? extends a.b> s() {
        return this.f32372p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l0 t(boolean z9) {
        l0 l0Var = this.f32371o;
        return l0Var != null ? l0Var : z9 ? l0.b() : f32354x;
    }

    public String toString() {
        v.b c10 = v.c(this);
        int i4 = this.f32358b;
        if (i4 != -1) {
            c10.d("initialCapacity", i4);
        }
        int i10 = this.f32359c;
        if (i10 != -1) {
            c10.d("concurrencyLevel", i10);
        }
        long j4 = this.f32360d;
        if (j4 != -1) {
            c10.e("maximumSize", j4);
        }
        long j10 = this.f32361e;
        if (j10 != -1) {
            c10.e("maximumWeight", j10);
        }
        if (this.f32365i != -1) {
            c10.f("expireAfterWrite", this.f32365i + "ns");
        }
        if (this.f32366j != -1) {
            c10.f("expireAfterAccess", this.f32366j + "ns");
        }
        j.t tVar = this.f32363g;
        if (tVar != null) {
            c10.f("keyStrength", com.google.common.base.c.g(tVar.toString()));
        }
        j.t tVar2 = this.f32364h;
        if (tVar2 != null) {
            c10.f("valueStrength", com.google.common.base.c.g(tVar2.toString()));
        }
        if (this.f32368l != null) {
            c10.p("keyEquivalence");
        }
        if (this.f32369m != null) {
            c10.p("valueEquivalence");
        }
        if (this.f32370n != null) {
            c10.p("removalListener");
        }
        return c10.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> u() {
        return (Equivalence) v.a(this.f32369m, v().a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j.t v() {
        return (j.t) v.a(this.f32364h, j.t.f32539a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K1 extends K, V1 extends V> r<K1, V1> w() {
        return (r) v.a(this.f32362f, e.INSTANCE);
    }

    public d<K, V> x(int i4) {
        int i10 = this.f32358b;
        a0.n0(i10 == -1, "initial capacity was already set to %s", i10);
        a0.d(i4 >= 0);
        this.f32358b = i4;
        return this;
    }

    boolean y() {
        return this.f32372p == f32353w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @h3.c
    public d<K, V> z(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f32368l;
        a0.x0(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f32368l = (Equivalence) a0.E(equivalence);
        return this;
    }
}
