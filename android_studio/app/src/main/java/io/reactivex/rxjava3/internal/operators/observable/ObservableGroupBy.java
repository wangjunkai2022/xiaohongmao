package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.ArrayList;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class ObservableGroupBy<T, K, V> extends io.reactivex.rxjava3.internal.operators.observable.a<T, io.reactivex.rxjava3.observables.b<K, V>> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends K> f79100b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends V> f79101c;

    /* renamed from: d  reason: collision with root package name */
    final int f79102d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f79103e;

    /* loaded from: classes4.dex */
    public static final class GroupByObserver<T, K, V> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: i  reason: collision with root package name */
        private static final long f79104i = -3688291656102519502L;

        /* renamed from: j  reason: collision with root package name */
        static final Object f79105j = new Object();

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.observables.b<K, V>> f79106a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends K> f79107b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends V> f79108c;

        /* renamed from: d  reason: collision with root package name */
        final int f79109d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f79110e;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79112g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f79113h = new AtomicBoolean();

        /* renamed from: f  reason: collision with root package name */
        final Map<Object, a<K, V>> f79111f = new ConcurrentHashMap();

        public GroupByObserver(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.observables.b<K, V>> actual, q7.o<? super T, ? extends K> keySelector, q7.o<? super T, ? extends V> valueSelector, int bufferSize, boolean delayError) {
            this.f79106a = actual;
            this.f79107b = keySelector;
            this.f79108c = valueSelector;
            this.f79109d = bufferSize;
            this.f79110e = delayError;
            lazySet(1);
        }

        public void cancel(K key) {
            if (key == null) {
                key = (K) f79105j;
            }
            this.f79111f.remove(key);
            if (decrementAndGet() == 0) {
                this.f79112g.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79113h.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.f79112g.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79113h.get();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            ArrayList<a> arrayList = new ArrayList(this.f79111f.values());
            this.f79111f.clear();
            for (a aVar : arrayList) {
                aVar.onComplete();
            }
            this.f79106a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            ArrayList<a> arrayList = new ArrayList(this.f79111f.values());
            this.f79111f.clear();
            for (a aVar : arrayList) {
                aVar.onError(t9);
            }
            this.f79106a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            try {
                K apply = this.f79107b.apply(t9);
                Object obj = apply != null ? apply : f79105j;
                a<K, V> aVar = this.f79111f.get(obj);
                boolean z9 = false;
                if (aVar == null) {
                    if (this.f79113h.get()) {
                        return;
                    }
                    aVar = a.B8(apply, this.f79109d, this, this.f79110e);
                    this.f79111f.put(obj, aVar);
                    getAndIncrement();
                    z9 = true;
                }
                try {
                    V apply2 = this.f79108c.apply(t9);
                    Objects.requireNonNull(apply2, "The value supplied is null");
                    aVar.onNext(apply2);
                    if (z9) {
                        this.f79106a.onNext(aVar);
                        if (aVar.f79114b.j()) {
                            cancel(apply);
                            aVar.onComplete();
                        }
                    }
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f79112g.dispose();
                    if (z9) {
                        this.f79106a.onNext(aVar);
                    }
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f79112g.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79112g, d4)) {
                this.f79112g = d4;
                this.f79106a.onSubscribe(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class a<K, T> extends io.reactivex.rxjava3.observables.b<K, T> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, K> f79114b;

        protected a(K key, b<T, K> state) {
            super(key);
            this.f79114b = state;
        }

        public static <T, K> a<K, T> B8(K key, int bufferSize, GroupByObserver<?, K, T> parent, boolean delayError) {
            return new a<>(key, new b(bufferSize, parent, key, delayError));
        }

        @Override // io.reactivex.rxjava3.core.g0
        protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
            this.f79114b.a(observer);
        }

        public void onComplete() {
            this.f79114b.e();
        }

        public void onError(Throwable e4) {
            this.f79114b.h(e4);
        }

        public void onNext(T t9) {
            this.f79114b.i(t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class b<T, K> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f, io.reactivex.rxjava3.core.l0<T> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f79115j = -3852313036005250360L;

        /* renamed from: k  reason: collision with root package name */
        static final int f79116k = 0;

        /* renamed from: l  reason: collision with root package name */
        static final int f79117l = 1;

        /* renamed from: m  reason: collision with root package name */
        static final int f79118m = 2;

        /* renamed from: n  reason: collision with root package name */
        static final int f79119n = 3;

        /* renamed from: a  reason: collision with root package name */
        final K f79120a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<T> f79121b;

        /* renamed from: c  reason: collision with root package name */
        final GroupByObserver<?, K, T> f79122c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f79123d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f79124e;

        /* renamed from: f  reason: collision with root package name */
        Throwable f79125f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f79126g = new AtomicBoolean();

        /* renamed from: h  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.core.n0<? super T>> f79127h = new AtomicReference<>();

        /* renamed from: i  reason: collision with root package name */
        final AtomicInteger f79128i = new AtomicInteger();

        b(int bufferSize, GroupByObserver<?, K, T> parent, K key, boolean delayError) {
            this.f79121b = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
            this.f79122c = parent;
            this.f79120a = key;
            this.f79123d = delayError;
        }

        @Override // io.reactivex.rxjava3.core.l0
        public void a(io.reactivex.rxjava3.core.n0<? super T> observer) {
            int i4;
            do {
                i4 = this.f79128i.get();
                if ((i4 & 1) != 0) {
                    EmptyDisposable.error(new IllegalStateException("Only one Observer allowed!"), observer);
                    return;
                }
            } while (!this.f79128i.compareAndSet(i4, i4 | 1));
            observer.onSubscribe(this);
            this.f79127h.lazySet(observer);
            if (this.f79126g.get()) {
                this.f79127h.lazySet(null);
            } else {
                d();
            }
        }

        void b() {
            if ((this.f79128i.get() & 2) == 0) {
                this.f79122c.cancel(this.f79120a);
            }
        }

        boolean c(boolean d4, boolean empty, io.reactivex.rxjava3.core.n0<? super T> a10, boolean delayError) {
            if (this.f79126g.get()) {
                this.f79121b.clear();
                this.f79127h.lazySet(null);
                b();
                return true;
            } else if (d4) {
                if (delayError) {
                    if (empty) {
                        Throwable th = this.f79125f;
                        this.f79127h.lazySet(null);
                        if (th != null) {
                            a10.onError(th);
                        } else {
                            a10.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f79125f;
                if (th2 != null) {
                    this.f79121b.clear();
                    this.f79127h.lazySet(null);
                    a10.onError(th2);
                    return true;
                } else if (empty) {
                    this.f79127h.lazySet(null);
                    a10.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void d() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f79121b;
            boolean z9 = this.f79123d;
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f79127h.get();
            int i4 = 1;
            while (true) {
                if (n0Var != null) {
                    while (true) {
                        boolean z10 = this.f79124e;
                        Object obj = (T) bVar.poll();
                        boolean z11 = obj == null;
                        if (c(z10, z11, n0Var, z9)) {
                            return;
                        }
                        if (z11) {
                            break;
                        }
                        n0Var.onNext(obj);
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
                if (n0Var == null) {
                    n0Var = this.f79127h.get();
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79126g.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.f79127h.lazySet(null);
                b();
            }
        }

        public void e() {
            this.f79124e = true;
            d();
        }

        public void h(Throwable e4) {
            this.f79125f = e4;
            this.f79124e = true;
            d();
        }

        public void i(T t9) {
            this.f79121b.offer(t9);
            d();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79126g.get();
        }

        boolean j() {
            return this.f79128i.get() == 0 && this.f79128i.compareAndSet(0, 2);
        }
    }

    public ObservableGroupBy(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends K> keySelector, q7.o<? super T, ? extends V> valueSelector, int bufferSize, boolean delayError) {
        super(source);
        this.f79100b = keySelector;
        this.f79101c = valueSelector;
        this.f79102d = bufferSize;
        this.f79103e = delayError;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.observables.b<K, V>> t9) {
        this.f79141a.a(new GroupByObserver(t9, this.f79100b, this.f79101c, this.f79102d, this.f79103e));
    }
}
