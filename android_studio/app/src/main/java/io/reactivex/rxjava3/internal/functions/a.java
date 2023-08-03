package io.reactivex.rxjava3.internal.functions;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: Functions.java */
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final q7.o<Object, Object> f76180a = new x();

    /* renamed from: b  reason: collision with root package name */
    public static final Runnable f76181b = new r();

    /* renamed from: c  reason: collision with root package name */
    public static final q7.a f76182c = new o();

    /* renamed from: d  reason: collision with root package name */
    static final q7.g<Object> f76183d = new p();

    /* renamed from: e  reason: collision with root package name */
    public static final q7.g<Throwable> f76184e = new t();

    /* renamed from: f  reason: collision with root package name */
    public static final q7.g<Throwable> f76185f = new g0();

    /* renamed from: g  reason: collision with root package name */
    public static final q7.q f76186g = new q();

    /* renamed from: h  reason: collision with root package name */
    static final q7.r<Object> f76187h = new l0();

    /* renamed from: i  reason: collision with root package name */
    static final q7.r<Object> f76188i = new u();

    /* renamed from: j  reason: collision with root package name */
    static final q7.s<Object> f76189j = new f0();

    /* renamed from: k  reason: collision with root package name */
    public static final q7.g<org.reactivestreams.e> f76190k = new a0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* renamed from: io.reactivex.rxjava3.internal.functions.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0617a<T> implements q7.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final q7.a f76191a;

        C0617a(q7.a action) {
            this.f76191a = action;
        }

        @Override // q7.g
        public void accept(T t9) throws Throwable {
            this.f76191a.run();
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class a0 implements q7.g<org.reactivestreams.e> {
        a0() {
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(org.reactivestreams.e t9) {
            t9.request(Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class b<T1, T2, R> implements q7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final q7.c<? super T1, ? super T2, ? extends R> f76192a;

        b(q7.c<? super T1, ? super T2, ? extends R> f10) {
            this.f76192a = f10;
        }

        @Override // q7.o
        /* renamed from: a */
        public R apply(Object[] a10) throws Throwable {
            if (a10.length == 2) {
                return this.f76192a.apply(a10[0], a10[1]);
            }
            throw new IllegalArgumentException("Array of size 2 expected but got " + a10.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public enum b0 implements Comparator<Object> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object o12, Object o22) {
            return ((Comparable) o12).compareTo(o22);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class c<T1, T2, T3, R> implements q7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final q7.h<T1, T2, T3, R> f76195a;

        c(q7.h<T1, T2, T3, R> f10) {
            this.f76195a = f10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // q7.o
        /* renamed from: a */
        public R apply(Object[] a10) throws Throwable {
            if (a10.length == 3) {
                return (R) this.f76195a.a(a10[0], a10[1], a10[2]);
            }
            throw new IllegalArgumentException("Array of size 3 expected but got " + a10.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class c0<T> implements q7.a {

        /* renamed from: a  reason: collision with root package name */
        final q7.g<? super io.reactivex.rxjava3.core.d0<T>> f76196a;

        c0(q7.g<? super io.reactivex.rxjava3.core.d0<T>> onNotification) {
            this.f76196a = onNotification;
        }

        @Override // q7.a
        public void run() throws Throwable {
            this.f76196a.accept(io.reactivex.rxjava3.core.d0.a());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class d<T1, T2, T3, T4, R> implements q7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final q7.i<T1, T2, T3, T4, R> f76197a;

        d(q7.i<T1, T2, T3, T4, R> f10) {
            this.f76197a = f10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // q7.o
        /* renamed from: a */
        public R apply(Object[] a10) throws Throwable {
            if (a10.length == 4) {
                return (R) this.f76197a.a(a10[0], a10[1], a10[2], a10[3]);
            }
            throw new IllegalArgumentException("Array of size 4 expected but got " + a10.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class d0<T> implements q7.g<Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final q7.g<? super io.reactivex.rxjava3.core.d0<T>> f76198a;

        d0(q7.g<? super io.reactivex.rxjava3.core.d0<T>> onNotification) {
            this.f76198a = onNotification;
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(Throwable v9) throws Throwable {
            this.f76198a.accept(io.reactivex.rxjava3.core.d0.b(v9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class e<T1, T2, T3, T4, T5, R> implements q7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.j<T1, T2, T3, T4, T5, R> f76199a;

        e(q7.j<T1, T2, T3, T4, T5, R> f10) {
            this.f76199a = f10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // q7.o
        /* renamed from: a */
        public R apply(Object[] a10) throws Throwable {
            if (a10.length == 5) {
                return (R) this.f76199a.a(a10[0], a10[1], a10[2], a10[3], a10[4]);
            }
            throw new IllegalArgumentException("Array of size 5 expected but got " + a10.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class e0<T> implements q7.g<T> {

        /* renamed from: a  reason: collision with root package name */
        final q7.g<? super io.reactivex.rxjava3.core.d0<T>> f76200a;

        e0(q7.g<? super io.reactivex.rxjava3.core.d0<T>> onNotification) {
            this.f76200a = onNotification;
        }

        @Override // q7.g
        public void accept(T v9) throws Throwable {
            this.f76200a.accept(io.reactivex.rxjava3.core.d0.c(v9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class f<T1, T2, T3, T4, T5, T6, R> implements q7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final q7.k<T1, T2, T3, T4, T5, T6, R> f76201a;

        f(q7.k<T1, T2, T3, T4, T5, T6, R> f10) {
            this.f76201a = f10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // q7.o
        /* renamed from: a */
        public R apply(Object[] a10) throws Throwable {
            if (a10.length == 6) {
                return (R) this.f76201a.a(a10[0], a10[1], a10[2], a10[3], a10[4], a10[5]);
            }
            throw new IllegalArgumentException("Array of size 6 expected but got " + a10.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class f0 implements q7.s<Object> {
        f0() {
        }

        @Override // q7.s
        public Object get() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class g<T1, T2, T3, T4, T5, T6, T7, R> implements q7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final q7.l<T1, T2, T3, T4, T5, T6, T7, R> f76202a;

        g(q7.l<T1, T2, T3, T4, T5, T6, T7, R> f10) {
            this.f76202a = f10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // q7.o
        /* renamed from: a */
        public R apply(Object[] a10) throws Throwable {
            if (a10.length == 7) {
                return (R) this.f76202a.a(a10[0], a10[1], a10[2], a10[3], a10[4], a10[5], a10[6]);
            }
            throw new IllegalArgumentException("Array of size 7 expected but got " + a10.length);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class g0 implements q7.g<Throwable> {
        g0() {
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(Throwable error) {
            io.reactivex.rxjava3.plugins.a.Y(new OnErrorNotImplementedException(error));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class h<T1, T2, T3, T4, T5, T6, T7, T8, R> implements q7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final q7.m<T1, T2, T3, T4, T5, T6, T7, T8, R> f76203a;

        h(q7.m<T1, T2, T3, T4, T5, T6, T7, T8, R> f10) {
            this.f76203a = f10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // q7.o
        /* renamed from: a */
        public R apply(Object[] a10) throws Throwable {
            if (a10.length == 8) {
                return (R) this.f76203a.a(a10[0], a10[1], a10[2], a10[3], a10[4], a10[5], a10[6], a10[7]);
            }
            throw new IllegalArgumentException("Array of size 8 expected but got " + a10.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class h0<T> implements q7.o<T, io.reactivex.rxjava3.schedulers.d<T>> {

        /* renamed from: a  reason: collision with root package name */
        final TimeUnit f76204a;

        /* renamed from: b  reason: collision with root package name */
        final o0 f76205b;

        h0(TimeUnit unit, o0 scheduler) {
            this.f76204a = unit;
            this.f76205b = scheduler;
        }

        @Override // q7.o
        /* renamed from: a */
        public io.reactivex.rxjava3.schedulers.d<T> apply(T t9) {
            return new io.reactivex.rxjava3.schedulers.d<>(t9, this.f76205b.e(this.f76204a), this.f76204a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class i<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> implements q7.o<Object[], R> {

        /* renamed from: a  reason: collision with root package name */
        final q7.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f76206a;

        i(q7.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f10) {
            this.f76206a = f10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // q7.o
        /* renamed from: a */
        public R apply(Object[] a10) throws Throwable {
            if (a10.length == 9) {
                return (R) this.f76206a.a(a10[0], a10[1], a10[2], a10[3], a10[4], a10[5], a10[6], a10[7], a10[8]);
            }
            throw new IllegalArgumentException("Array of size 9 expected but got " + a10.length);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class i0<K, T> implements q7.b<Map<K, T>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.o<? super T, ? extends K> f76207a;

        i0(q7.o<? super T, ? extends K> keySelector) {
            this.f76207a = keySelector;
        }

        @Override // q7.b
        /* renamed from: a */
        public void accept(Map<K, T> m9, T t9) throws Throwable {
            m9.put(this.f76207a.apply(t9), t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class j<T> implements q7.s<List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final int f76208a;

        j(int capacity) {
            this.f76208a = capacity;
        }

        @Override // q7.s
        /* renamed from: a */
        public List<T> get() {
            return new ArrayList(this.f76208a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class j0<K, V, T> implements q7.b<Map<K, V>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.o<? super T, ? extends V> f76209a;

        /* renamed from: b  reason: collision with root package name */
        private final q7.o<? super T, ? extends K> f76210b;

        j0(q7.o<? super T, ? extends V> valueSelector, q7.o<? super T, ? extends K> keySelector) {
            this.f76209a = valueSelector;
            this.f76210b = keySelector;
        }

        @Override // q7.b
        /* renamed from: a */
        public void accept(Map<K, V> m9, T t9) throws Throwable {
            m9.put(this.f76210b.apply(t9), this.f76209a.apply(t9));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class k<T> implements q7.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final q7.e f76211a;

        k(q7.e supplier) {
            this.f76211a = supplier;
        }

        @Override // q7.r
        public boolean test(T t9) throws Throwable {
            return !this.f76211a.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class k0<K, V, T> implements q7.b<Map<K, Collection<V>>, T> {

        /* renamed from: a  reason: collision with root package name */
        private final q7.o<? super K, ? extends Collection<? super V>> f76212a;

        /* renamed from: b  reason: collision with root package name */
        private final q7.o<? super T, ? extends V> f76213b;

        /* renamed from: c  reason: collision with root package name */
        private final q7.o<? super T, ? extends K> f76214c;

        k0(q7.o<? super K, ? extends Collection<? super V>> collectionFactory, q7.o<? super T, ? extends V> valueSelector, q7.o<? super T, ? extends K> keySelector) {
            this.f76212a = collectionFactory;
            this.f76213b = valueSelector;
            this.f76214c = keySelector;
        }

        @Override // q7.b
        /* renamed from: a */
        public void accept(Map<K, Collection<V>> m9, T t9) throws Throwable {
            K apply = this.f76214c.apply(t9);
            Collection<? super V> collection = m9.get(apply);
            if (collection == null) {
                collection = this.f76212a.apply(apply);
                m9.put(apply, collection);
            }
            collection.add(this.f76213b.apply(t9));
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static class l implements q7.g<org.reactivestreams.e> {

        /* renamed from: a  reason: collision with root package name */
        final int f76215a;

        l(int bufferSize) {
            this.f76215a = bufferSize;
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(org.reactivestreams.e s9) {
            s9.request(this.f76215a);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class l0 implements q7.r<Object> {
        l0() {
        }

        @Override // q7.r
        public boolean test(Object o9) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class m<T, U> implements q7.o<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f76216a;

        m(Class<U> clazz) {
            this.f76216a = clazz;
        }

        @Override // q7.o
        public U apply(T t9) {
            return this.f76216a.cast(t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class n<T, U> implements q7.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final Class<U> f76217a;

        n(Class<U> clazz) {
            this.f76217a = clazz;
        }

        @Override // q7.r
        public boolean test(T t9) {
            return this.f76217a.isInstance(t9);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class o implements q7.a {
        o() {
        }

        @Override // q7.a
        public void run() {
        }

        public String toString() {
            return "EmptyAction";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class p implements q7.g<Object> {
        p() {
        }

        @Override // q7.g
        public void accept(Object v9) {
        }

        public String toString() {
            return "EmptyConsumer";
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class q implements q7.q {
        q() {
        }

        @Override // q7.q
        public void a(long v9) {
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class s<T> implements q7.r<T> {

        /* renamed from: a  reason: collision with root package name */
        final T f76218a;

        s(T value) {
            this.f76218a = value;
        }

        @Override // q7.r
        public boolean test(T t9) {
            return Objects.equals(t9, this.f76218a);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class t implements q7.g<Throwable> {
        t() {
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(Throwable error) {
            io.reactivex.rxjava3.plugins.a.Y(error);
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class u implements q7.r<Object> {
        u() {
        }

        @Override // q7.r
        public boolean test(Object o9) {
            return false;
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class v implements q7.a {

        /* renamed from: a  reason: collision with root package name */
        final Future<?> f76219a;

        v(Future<?> future) {
            this.f76219a = future;
        }

        @Override // q7.a
        public void run() throws Exception {
            this.f76219a.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public enum w implements q7.s<Set<Object>> {
        INSTANCE;

        @Override // q7.s
        /* renamed from: a */
        public Set<Object> get() {
            return new HashSet();
        }
    }

    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    static final class x implements q7.o<Object, Object> {
        x() {
        }

        @Override // q7.o
        public Object apply(Object v9) {
            return v9;
        }

        public String toString() {
            return "IdentityFunction";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class y<T, U> implements Callable<U>, q7.s<U>, q7.o<T, U> {

        /* renamed from: a  reason: collision with root package name */
        final U f76222a;

        y(U value) {
            this.f76222a = value;
        }

        @Override // q7.o
        public U apply(T t9) {
            return this.f76222a;
        }

        @Override // java.util.concurrent.Callable
        public U call() {
            return this.f76222a;
        }

        @Override // q7.s
        public U get() {
            return this.f76222a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Functions.java */
    /* loaded from: classes4.dex */
    public static final class z<T> implements q7.o<List<T>, List<T>> {

        /* renamed from: a  reason: collision with root package name */
        final Comparator<? super T> f76223a;

        z(Comparator<? super T> comparator) {
            this.f76223a = comparator;
        }

        @Override // q7.o
        /* renamed from: a */
        public List<T> apply(List<T> v9) {
            Collections.sort(v9, this.f76223a);
            return v9;
        }
    }

    private a() {
        throw new IllegalStateException("No instances!");
    }

    @p7.e
    public static <T1, T2, T3, T4, T5, R> q7.o<Object[], R> A(@p7.e q7.j<T1, T2, T3, T4, T5, R> f10) {
        return new e(f10);
    }

    @p7.e
    public static <T1, T2, T3, T4, T5, T6, R> q7.o<Object[], R> B(@p7.e q7.k<T1, T2, T3, T4, T5, T6, R> f10) {
        return new f(f10);
    }

    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, R> q7.o<Object[], R> C(@p7.e q7.l<T1, T2, T3, T4, T5, T6, T7, R> f10) {
        return new g(f10);
    }

    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> q7.o<Object[], R> D(@p7.e q7.m<T1, T2, T3, T4, T5, T6, T7, T8, R> f10) {
        return new h(f10);
    }

    @p7.e
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> q7.o<Object[], R> E(@p7.e q7.n<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> f10) {
        return new i(f10);
    }

    public static <T, K> q7.b<Map<K, T>, T> F(final q7.o<? super T, ? extends K> keySelector) {
        return new i0(keySelector);
    }

    public static <T, K, V> q7.b<Map<K, V>, T> G(final q7.o<? super T, ? extends K> keySelector, final q7.o<? super T, ? extends V> valueSelector) {
        return new j0(valueSelector, keySelector);
    }

    public static <T, K, V> q7.b<Map<K, Collection<V>>, T> H(final q7.o<? super T, ? extends K> keySelector, final q7.o<? super T, ? extends V> valueSelector, final q7.o<? super K, ? extends Collection<? super V>> collectionFactory) {
        return new k0(collectionFactory, valueSelector, keySelector);
    }

    public static <T> q7.g<T> a(q7.a action) {
        return new C0617a(action);
    }

    @p7.e
    public static <T> q7.r<T> b() {
        return (q7.r<T>) f76188i;
    }

    @p7.e
    public static <T> q7.r<T> c() {
        return (q7.r<T>) f76187h;
    }

    public static <T> q7.g<T> d(int bufferSize) {
        return new l(bufferSize);
    }

    @p7.e
    public static <T, U> q7.o<T, U> e(@p7.e Class<U> target) {
        return new m(target);
    }

    public static <T> q7.s<List<T>> f(int capacity) {
        return new j(capacity);
    }

    public static <T> q7.s<Set<T>> g() {
        return w.INSTANCE;
    }

    public static <T> q7.g<T> h() {
        return (q7.g<T>) f76183d;
    }

    public static <T> q7.r<T> i(T value) {
        return new s(value);
    }

    @p7.e
    public static q7.a j(@p7.e Future<?> future) {
        return new v(future);
    }

    @p7.e
    public static <T> q7.o<T, T> k() {
        return (q7.o<T, T>) f76180a;
    }

    public static <T, U> q7.r<T> l(Class<U> clazz) {
        return new n(clazz);
    }

    @p7.e
    public static <T> Callable<T> m(@p7.e T value) {
        return new y(value);
    }

    @p7.e
    public static <T, U> q7.o<T, U> n(@p7.e U value) {
        return new y(value);
    }

    @p7.e
    public static <T> q7.s<T> o(@p7.e T value) {
        return new y(value);
    }

    public static <T> q7.o<List<T>, List<T>> p(final Comparator<? super T> comparator) {
        return new z(comparator);
    }

    public static <T> Comparator<T> q() {
        return b0.INSTANCE;
    }

    public static <T> q7.a r(q7.g<? super io.reactivex.rxjava3.core.d0<T>> onNotification) {
        return new c0(onNotification);
    }

    public static <T> q7.g<Throwable> s(q7.g<? super io.reactivex.rxjava3.core.d0<T>> onNotification) {
        return new d0(onNotification);
    }

    public static <T> q7.g<T> t(q7.g<? super io.reactivex.rxjava3.core.d0<T>> onNotification) {
        return new e0(onNotification);
    }

    @p7.e
    public static <T> q7.s<T> u() {
        return (q7.s<T>) f76189j;
    }

    public static <T> q7.r<T> v(q7.e supplier) {
        return new k(supplier);
    }

    public static <T> q7.o<T, io.reactivex.rxjava3.schedulers.d<T>> w(TimeUnit unit, o0 scheduler) {
        return new h0(unit, scheduler);
    }

    @p7.e
    public static <T1, T2, R> q7.o<Object[], R> x(@p7.e q7.c<? super T1, ? super T2, ? extends R> f10) {
        return new b(f10);
    }

    @p7.e
    public static <T1, T2, T3, R> q7.o<Object[], R> y(@p7.e q7.h<T1, T2, T3, R> f10) {
        return new c(f10);
    }

    @p7.e
    public static <T1, T2, T3, T4, R> q7.o<Object[], R> z(@p7.e q7.i<T1, T2, T3, T4, R> f10) {
        return new d(f10);
    }
}
