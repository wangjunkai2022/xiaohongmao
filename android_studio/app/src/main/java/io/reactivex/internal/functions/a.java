package io.reactivex.internal.functions;

import io.reactivex.exceptions.OnErrorNotImplementedException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Functions.java */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final n7.o<Object, Object> f71127a = new x();

    /* renamed from: b  reason: collision with root package name */
    public static final Runnable f71128b = new r();

    /* renamed from: c  reason: collision with root package name */
    public static final n7.a f71129c = new o();

    /* renamed from: d  reason: collision with root package name */
    static final n7.g<Object> f71130d = new p();

    /* renamed from: e  reason: collision with root package name */
    public static final n7.g<Throwable> f71131e = new t();

    /* renamed from: f  reason: collision with root package name */
    public static final n7.g<Throwable> f71132f = new h0();

    /* renamed from: g  reason: collision with root package name */
    public static final n7.q f71133g = new q();

    /* renamed from: h  reason: collision with root package name */
    static final n7.r<Object> f71134h = new m0();

    /* renamed from: i  reason: collision with root package name */
    static final n7.r<Object> f71135i = new u();

    /* renamed from: j  reason: collision with root package name */
    static final Callable<Object> f71136j = new g0();

    /* renamed from: k  reason: collision with root package name */
    static final Comparator<Object> f71137k = new c0();

    /* renamed from: l  reason: collision with root package name */
    public static final n7.g<org.reactivestreams.e> f71138l = new a0();

    /* compiled from: Functions.java */
    /* renamed from: io.reactivex.internal.functions.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0540a<T> implements n7.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final n7.a f71139a;

        C0540a(n7.a aVar) {
            this.f71139a = aVar;
        }

        @Override // n7.g
        public void accept(T t9) throws Exception {
            this.f71139a.run();
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class a0 implements n7.g<org.reactivestreams.e> {
        a0() {
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(org.reactivestreams.e eVar) throws Exception {
            eVar.request(Long.MAX_VALUE);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class b<T1, T2, R> implements n7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final n7.c<? super T1, ? super T2, ? extends R> f71140a;

        b(n7.c<? super T1, ? super T2, ? extends R> cVar) {
            this.f71140a = cVar;
        }

        @Override // n7.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 2) {
                return this.f71140a.apply(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + objArr.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    enum b0 implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class c<T1, T2, T3, R> implements n7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final n7.h<T1, T2, T3, R> f71143a;

        c(n7.h<T1, T2, T3, R> hVar) {
            this.f71143a = hVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // n7.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 3) {
                return (R) this.f71143a.a(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + objArr.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class c0 implements Comparator<Object> {
        c0() {
        }

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class d<T1, T2, T3, T4, R> implements n7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final n7.i<T1, T2, T3, T4, R> f71144a;

        d(n7.i<T1, T2, T3, T4, R> iVar) {
            this.f71144a = iVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // n7.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 4) {
                return (R) this.f71144a.a(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + objArr.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class d0<T> implements n7.a {

        /* renamed from: a  reason: collision with root package name */
        final n7.g<? super io.reactivex.y<T>> f71145a;

        d0(n7.g<? super io.reactivex.y<T>> gVar) {
            this.f71145a = gVar;
        }

        @Override // n7.a
        public void run() throws Exception {
            this.f71145a.accept(io.reactivex.y.a());
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class e<T1, T2, T3, T4, T5, R> implements n7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.j<T1, T2, T3, T4, T5, R> f71146a;

        e(n7.j<T1, T2, T3, T4, T5, R> jVar) {
            this.f71146a = jVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // n7.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 5) {
                return (R) this.f71146a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + objArr.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class e0<T> implements n7.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final n7.g<? super io.reactivex.y<T>> f71147a;

        e0(n7.g<? super io.reactivex.y<T>> gVar) {
            this.f71147a = gVar;
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.f71147a.accept(io.reactivex.y.b(th));
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class f<T1, T2, T3, T4, T5, T6, R> implements n7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final n7.k<T1, T2, T3, T4, T5, T6, R> f71148a;

        f(n7.k<T1, T2, T3, T4, T5, T6, R> kVar) {
            this.f71148a = kVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // n7.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 6) {
                return (R) this.f71148a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + objArr.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class f0<T> implements n7.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final n7.g<? super io.reactivex.y<T>> f71149a;

        f0(n7.g<? super io.reactivex.y<T>> gVar) {
            this.f71149a = gVar;
        }

        @Override // n7.g
        public void accept(T t9) throws Exception {
            this.f71149a.accept(io.reactivex.y.c(t9));
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class g<T1, T2, T3, T4, T5, T6, T7, R> implements n7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final n7.l<T1, T2, T3, T4, T5, T6, T7, R> f71150a;

        g(n7.l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
            this.f71150a = lVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // n7.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 7) {
                return (R) this.f71150a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + objArr.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class g0 implements Callable<Object> {
        g0() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return null;
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class h<T1, T2, T3, T4, T5, T6, T7, T8, R> implements n7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final n7.m<T1, T2, T3, T4, T5, T6, T7, T8, R> f71151a;

        h(n7.m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
            this.f71151a = mVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // n7.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 8) {
                return (R) this.f71151a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + objArr.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class h0 implements n7.g<Throwable> {
        h0() {
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(Throwable th) {
            io.reactivex.plugins.a.Y(new OnErrorNotImplementedException(th));
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class i<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements n7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final n7.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f71152a;

        i(n7.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
            this.f71152a = nVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // n7.o
        /* renamed from: a */
        public R apply(Object[] objArr) throws Exception {
            if (objArr.length == 9) {
                return (R) this.f71152a.a(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + objArr.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class i0<T> implements n7.o<T, io.reactivex.schedulers.d<T>> {

        /* renamed from: a  reason: collision with root package name */
        final TimeUnit f71153a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.h0 f71154b;

        i0(TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f71153a = timeUnit;
            this.f71154b = h0Var;
        }

        @Override // n7.o
        /* renamed from: a */
        public io.reactivex.schedulers.d<T> apply(T t9) throws Exception {
            return new io.reactivex.schedulers.d<>(t9, this.f71154b.e(this.f71153a), this.f71153a);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class j<T> implements Callable<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final int f71155a;

        j(int i4) {
            this.f71155a = i4;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public List<T> call() throws Exception {
            return new ArrayList(this.f71155a);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class j0<K, T> implements n7.b<Map<K, T>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.o<? super T, ? extends K> f71156a;

        j0(n7.o<? super T, ? extends K> oVar) {
            this.f71156a = oVar;
        }

        @Override // n7.b
        /* renamed from: a */
        public void accept(Map<K, T> map, T t9) throws Exception {
            map.put(this.f71156a.apply(t9), t9);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class k<T> implements n7.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final n7.e f71157a;

        k(n7.e eVar) {
            this.f71157a = eVar;
        }

        @Override // n7.r
        public boolean test(T t9) throws Exception {
            return !this.f71157a.a();
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class k0<K, V, T> implements n7.b<Map<K, V>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.o<? super T, ? extends V> f71158a;

        /* renamed from: b  reason: collision with root package name */
        private final n7.o<? super T, ? extends K> f71159b;

        k0(n7.o<? super T, ? extends V> oVar, n7.o<? super T, ? extends K> oVar2) {
            this.f71158a = oVar;
            this.f71159b = oVar2;
        }

        @Override // n7.b
        /* renamed from: a */
        public void accept(Map<K, V> map, T t9) throws Exception {
            map.put(this.f71159b.apply(t9), this.f71158a.apply(t9));
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    public static class l implements n7.g<org.reactivestreams.e> {

        /* renamed from: a  reason: collision with root package name */
        final int f71160a;

        l(int i4) {
            this.f71160a = i4;
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(org.reactivestreams.e eVar) throws Exception {
            eVar.request(this.f71160a);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class l0<K, V, T> implements n7.b<Map<K, Collection<V>>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final n7.o<? super K, ? extends Collection<? super V>> f71161a;

        /* renamed from: b  reason: collision with root package name */
        private final n7.o<? super T, ? extends V> f71162b;

        /* renamed from: c  reason: collision with root package name */
        private final n7.o<? super T, ? extends K> f71163c;

        l0(n7.o<? super K, ? extends Collection<? super V>> oVar, n7.o<? super T, ? extends V> oVar2, n7.o<? super T, ? extends K> oVar3) {
            this.f71161a = oVar;
            this.f71162b = oVar2;
            this.f71163c = oVar3;
        }

        @Override // n7.b
        /* renamed from: a */
        public void accept(Map<K, Collection<V>> map, T t9) throws Exception {
            K apply = this.f71163c.apply(t9);
            Collection<? super V> collection = map.get(apply);
            if (collection == null) {
                collection = this.f71161a.apply(apply);
                map.put(apply, collection);
            }
            collection.add(this.f71162b.apply(t9));
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class m<T, U> implements n7.o<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f71164a;

        m(Class<U> cls) {
            this.f71164a = cls;
        }

        @Override // n7.o
        public U apply(T t9) throws Exception {
            return this.f71164a.cast(t9);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class m0 implements n7.r<Object> {
        m0() {
        }

        @Override // n7.r
        public boolean test(Object obj) {
            return true;
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class n<T, U> implements n7.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f71165a;

        n(Class<U> cls) {
            this.f71165a = cls;
        }

        @Override // n7.r
        public boolean test(T t9) throws Exception {
            return this.f71165a.isInstance(t9);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class o implements n7.a {
        o() {
        }

        @Override // n7.a
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class p implements n7.g<Object> {
        p() {
        }

        @Override // n7.g
        public void accept(Object obj) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class q implements n7.q {
        q() {
        }

        @Override // n7.q
        public void a(long j4) {
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class r implements Runnable {
        r() {
        }

        @Override // java.lang.Runnable
        public void run() {
        }

        public String toString() {
            return "EmptyRunnable";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class s<T> implements n7.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f71166a;

        s(T t9) {
            this.f71166a = t9;
        }

        @Override // n7.r
        public boolean test(T t9) throws Exception {
            return io.reactivex.internal.functions.b.c(t9, this.f71166a);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class t implements n7.g<Throwable> {
        t() {
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(Throwable th) {
            io.reactivex.plugins.a.Y(th);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class u implements n7.r<Object> {
        u() {
        }

        @Override // n7.r
        public boolean test(Object obj) {
            return false;
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class v implements n7.a {

        /* renamed from: a  reason: collision with root package name */
        final Future<?> f71167a;

        v(Future<?> future) {
            this.f71167a = future;
        }

        @Override // n7.a
        public void run() throws Exception {
            this.f71167a.get();
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    enum w implements Callable<Set<Object>> {
        INSTANCE;

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Set<Object> call() throws Exception {
            return new HashSet();
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class x implements n7.o<Object, Object> {
        x() {
        }

        @Override // n7.o
        public Object apply(Object obj) {
            return obj;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class y<T, U> implements Callable<U>, n7.o<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final U f71170a;

        y(U u9) {
            this.f71170a = u9;
        }

        @Override // n7.o
        public U apply(T t9) throws Exception {
            return this.f71170a;
        }

        @Override // java.util.concurrent.Callable
        public U call() throws Exception {
            return this.f71170a;
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes3.dex */
    static final class z<T> implements n7.o<List<T>, List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super T> f71171a;

        z(Comparator<? super T> comparator) {
            this.f71171a = comparator;
        }

        @Override // n7.o
        /* renamed from: a */
        public List<T> apply(List<T> list) {
            Collections.sort(list, this.f71171a);
            return list;
        }
    }

    private a() {
        throw new IllegalStateException("No instances!");
    }

    public static <T1, T2, T3, T4, T5, R> n7.o<Object[], R> A(n7.j<T1, T2, T3, T4, T5, R> jVar) {
        io.reactivex.internal.functions.b.g(jVar, "f is null");
        return new e(jVar);
    }

    public static <T1, T2, T3, T4, T5, T6, R> n7.o<Object[], R> B(n7.k<T1, T2, T3, T4, T5, T6, R> kVar) {
        io.reactivex.internal.functions.b.g(kVar, "f is null");
        return new f(kVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> n7.o<Object[], R> C(n7.l<T1, T2, T3, T4, T5, T6, T7, R> lVar) {
        io.reactivex.internal.functions.b.g(lVar, "f is null");
        return new g(lVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> n7.o<Object[], R> D(n7.m<T1, T2, T3, T4, T5, T6, T7, T8, R> mVar) {
        io.reactivex.internal.functions.b.g(mVar, "f is null");
        return new h(mVar);
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> n7.o<Object[], R> E(n7.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> nVar) {
        io.reactivex.internal.functions.b.g(nVar, "f is null");
        return new i(nVar);
    }

    public static <T, K> n7.b<Map<K, T>, T> F(n7.o<? super T, ? extends K> oVar) {
        return new j0(oVar);
    }

    public static <T, K, V> n7.b<Map<K, V>, T> G(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2) {
        return new k0(oVar2, oVar);
    }

    public static <T, K, V> n7.b<Map<K, Collection<V>>, T> H(n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, n7.o<? super K, ? extends Collection<? super V>> oVar3) {
        return new l0(oVar3, oVar2, oVar);
    }

    public static <T> n7.g<T> a(n7.a aVar) {
        return new C0540a(aVar);
    }

    public static <T> n7.r<T> b() {
        return (n7.r<T>) f71135i;
    }

    public static <T> n7.r<T> c() {
        return (n7.r<T>) f71134h;
    }

    public static <T> n7.g<T> d(int i4) {
        return new l(i4);
    }

    public static <T, U> n7.o<T, U> e(Class<U> cls) {
        return new m(cls);
    }

    public static <T> Callable<List<T>> f(int i4) {
        return new j(i4);
    }

    public static <T> Callable<Set<T>> g() {
        return w.INSTANCE;
    }

    public static <T> n7.g<T> h() {
        return (n7.g<T>) f71130d;
    }

    public static <T> n7.r<T> i(T t9) {
        return new s(t9);
    }

    public static n7.a j(Future<?> future) {
        return new v(future);
    }

    public static <T> n7.o<T, T> k() {
        return (n7.o<T, T>) f71127a;
    }

    public static <T, U> n7.r<T> l(Class<U> cls) {
        return new n(cls);
    }

    public static <T> Callable<T> m(T t9) {
        return new y(t9);
    }

    public static <T, U> n7.o<T, U> n(U u9) {
        return new y(u9);
    }

    public static <T> n7.o<List<T>, List<T>> o(Comparator<? super T> comparator) {
        return new z(comparator);
    }

    public static <T> Comparator<T> p() {
        return b0.INSTANCE;
    }

    public static <T> Comparator<T> q() {
        return (Comparator<T>) f71137k;
    }

    public static <T> n7.a r(n7.g<? super io.reactivex.y<T>> gVar) {
        return new d0(gVar);
    }

    public static <T> n7.g<Throwable> s(n7.g<? super io.reactivex.y<T>> gVar) {
        return new e0(gVar);
    }

    public static <T> n7.g<T> t(n7.g<? super io.reactivex.y<T>> gVar) {
        return new f0(gVar);
    }

    public static <T> Callable<T> u() {
        return (Callable<T>) f71136j;
    }

    public static <T> n7.r<T> v(n7.e eVar) {
        return new k(eVar);
    }

    public static <T> n7.o<T, io.reactivex.schedulers.d<T>> w(TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return new i0(timeUnit, h0Var);
    }

    public static <T1, T2, R> n7.o<Object[], R> x(n7.c<? super T1, ? super T2, ? extends R> cVar) {
        io.reactivex.internal.functions.b.g(cVar, "f is null");
        return new b(cVar);
    }

    public static <T1, T2, T3, R> n7.o<Object[], R> y(n7.h<T1, T2, T3, R> hVar) {
        io.reactivex.internal.functions.b.g(hVar, "f is null");
        return new c(hVar);
    }

    public static <T1, T2, T3, T4, R> n7.o<Object[], R> z(n7.i<T1, T2, T3, T4, R> iVar) {
        io.reactivex.internal.functions.b.g(iVar, "f is null");
        return new d(iVar);
    }
}
