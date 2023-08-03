package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class ObservableGroupBy<T, K, V> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.observables.b<K, V>> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends K> f73790b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends V> f73791c;

    /* renamed from: d  reason: collision with root package name */
    final int f73792d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f73793e;

    /* loaded from: classes3.dex */
    public static final class GroupByObserver<T, K, V> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: i  reason: collision with root package name */
        private static final long f73794i = -3688291656102519502L;

        /* renamed from: j  reason: collision with root package name */
        static final Object f73795j = new Object();

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.observables.b<K, V>> f73796a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends K> f73797b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super T, ? extends V> f73798c;

        /* renamed from: d  reason: collision with root package name */
        final int f73799d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f73800e;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.disposables.c f73802g;

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f73803h = new AtomicBoolean();

        /* renamed from: f  reason: collision with root package name */
        final Map<Object, a<K, V>> f73801f = new ConcurrentHashMap();

        public GroupByObserver(io.reactivex.g0<? super io.reactivex.observables.b<K, V>> g0Var, n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, int i4, boolean z9) {
            this.f73796a = g0Var;
            this.f73797b = oVar;
            this.f73798c = oVar2;
            this.f73799d = i4;
            this.f73800e = z9;
            lazySet(1);
        }

        public void cancel(K k10) {
            if (k10 == null) {
                k10 = (K) f73795j;
            }
            this.f73801f.remove(k10);
            if (decrementAndGet() == 0) {
                this.f73802g.dispose();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f73803h.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.f73802g.dispose();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73803h.get();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            ArrayList<a> arrayList = new ArrayList(this.f73801f.values());
            this.f73801f.clear();
            for (a aVar : arrayList) {
                aVar.onComplete();
            }
            this.f73796a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            ArrayList<a> arrayList = new ArrayList(this.f73801f.values());
            this.f73801f.clear();
            for (a aVar : arrayList) {
                aVar.onError(th);
            }
            this.f73796a.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onNext(T t9) {
            try {
                K apply = this.f73797b.apply(t9);
                Object obj = apply != null ? apply : f73795j;
                a<K, V> aVar = this.f73801f.get(obj);
                if (aVar == null) {
                    if (this.f73803h.get()) {
                        return;
                    }
                    aVar = a.d(apply, this.f73799d, this, this.f73800e);
                    this.f73801f.put(obj, aVar);
                    getAndIncrement();
                    this.f73796a.onNext(aVar);
                }
                try {
                    aVar.onNext(io.reactivex.internal.functions.b.g(this.f73798c.apply(t9), "The value supplied is null"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f73802g.dispose();
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f73802g.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73802g, cVar)) {
                this.f73802g = cVar;
                this.f73796a.onSubscribe(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class a<K, T> extends io.reactivex.observables.b<K, T> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, K> f73804b;

        protected a(K k10, b<T, K> bVar) {
            super(k10);
            this.f73804b = bVar;
        }

        public static <T, K> a<K, T> d(K k10, int i4, GroupByObserver<?, K, T> groupByObserver, boolean z9) {
            return new a<>(k10, new b(i4, groupByObserver, k10, z9));
        }

        public void onComplete() {
            this.f73804b.c();
        }

        public void onError(Throwable th) {
            this.f73804b.d(th);
        }

        public void onNext(T t9) {
            this.f73804b.e(t9);
        }

        @Override // io.reactivex.z
        protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
            this.f73804b.subscribe(g0Var);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class b<T, K> extends AtomicInteger implements io.reactivex.disposables.c, io.reactivex.e0<T> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f73805j = -3852313036005250360L;

        /* renamed from: a  reason: collision with root package name */
        final K f73806a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f73807b;

        /* renamed from: c  reason: collision with root package name */
        final GroupByObserver<?, K, T> f73808c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f73809d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f73810e;

        /* renamed from: f  reason: collision with root package name */
        Throwable f73811f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicBoolean f73812g = new AtomicBoolean();

        /* renamed from: h  reason: collision with root package name */
        final AtomicBoolean f73813h = new AtomicBoolean();

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<io.reactivex.g0<? super T>> f73814i = new AtomicReference<>();

        b(int i4, GroupByObserver<?, K, T> groupByObserver, K k10, boolean z9) {
            this.f73807b = new io.reactivex.internal.queue.b<>(i4);
            this.f73808c = groupByObserver;
            this.f73806a = k10;
            this.f73809d = z9;
        }

        boolean a(boolean z9, boolean z10, io.reactivex.g0<? super T> g0Var, boolean z11) {
            if (this.f73812g.get()) {
                this.f73807b.clear();
                this.f73808c.cancel(this.f73806a);
                this.f73814i.lazySet(null);
                return true;
            } else if (z9) {
                if (z11) {
                    if (z10) {
                        Throwable th = this.f73811f;
                        this.f73814i.lazySet(null);
                        if (th != null) {
                            g0Var.onError(th);
                        } else {
                            g0Var.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f73811f;
                if (th2 != null) {
                    this.f73807b.clear();
                    this.f73814i.lazySet(null);
                    g0Var.onError(th2);
                    return true;
                } else if (z10) {
                    this.f73814i.lazySet(null);
                    g0Var.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<T> bVar = this.f73807b;
            boolean z9 = this.f73809d;
            io.reactivex.g0<? super T> g0Var = this.f73814i.get();
            int i4 = 1;
            while (true) {
                if (g0Var != null) {
                    while (true) {
                        boolean z10 = this.f73810e;
                        Object obj = (T) bVar.poll();
                        boolean z11 = obj == null;
                        if (a(z10, z11, g0Var, z9)) {
                            return;
                        }
                        if (z11) {
                            break;
                        }
                        g0Var.onNext(obj);
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
                if (g0Var == null) {
                    g0Var = this.f73814i.get();
                }
            }
        }

        public void c() {
            this.f73810e = true;
            b();
        }

        public void d(Throwable th) {
            this.f73811f = th;
            this.f73810e = true;
            b();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f73812g.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.f73814i.lazySet(null);
                this.f73808c.cancel(this.f73806a);
            }
        }

        public void e(T t9) {
            this.f73807b.offer(t9);
            b();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73812g.get();
        }

        @Override // io.reactivex.e0
        public void subscribe(io.reactivex.g0<? super T> g0Var) {
            if (this.f73813h.compareAndSet(false, true)) {
                g0Var.onSubscribe(this);
                this.f73814i.lazySet(g0Var);
                if (this.f73812g.get()) {
                    this.f73814i.lazySet(null);
                    return;
                } else {
                    b();
                    return;
                }
            }
            EmptyDisposable.error(new IllegalStateException("Only one Observer allowed!"), g0Var);
        }
    }

    public ObservableGroupBy(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, int i4, boolean z9) {
        super(e0Var);
        this.f73790b = oVar;
        this.f73791c = oVar2;
        this.f73792d = i4;
        this.f73793e = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super io.reactivex.observables.b<K, V>> g0Var) {
        this.f73827a.subscribe(new GroupByObserver(g0Var, this.f73790b, this.f73791c, this.f73792d, this.f73793e));
    }
}
