package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableBufferBoundary.java */
/* loaded from: classes3.dex */
public final class n<T, U extends Collection<? super T>, Open, Close> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f74454b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.e0<? extends Open> f74455c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super Open, ? extends io.reactivex.e0<? extends Close>> f74456d;

    /* compiled from: ObservableBufferBoundary.java */
    /* loaded from: classes3.dex */
    static final class a<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: m  reason: collision with root package name */
        private static final long f74457m = -8466418554264089604L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super C> f74458a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f74459b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.e0<? extends Open> f74460c;

        /* renamed from: d  reason: collision with root package name */
        final n7.o<? super Open, ? extends io.reactivex.e0<? extends Close>> f74461d;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f74465h;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f74467j;

        /* renamed from: k  reason: collision with root package name */
        long f74468k;

        /* renamed from: i  reason: collision with root package name */
        final io.reactivex.internal.queue.b<C> f74466i = new io.reactivex.internal.queue.b<>(io.reactivex.z.bufferSize());

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.disposables.b f74462e = new io.reactivex.disposables.b();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74463f = new AtomicReference<>();

        /* renamed from: l  reason: collision with root package name */
        Map<Long, C> f74469l = new LinkedHashMap();

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f74464g = new AtomicThrowable();

        /* compiled from: ObservableBufferBoundary.java */
        /* renamed from: io.reactivex.internal.operators.observable.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0593a<Open> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<Open>, io.reactivex.disposables.c {

            /* renamed from: b  reason: collision with root package name */
            private static final long f74470b = -8498650778633225126L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, ?, Open, ?> f74471a;

            C0593a(a<?, ?, Open, ?> aVar) {
                this.f74471a = aVar;
            }

            @Override // io.reactivex.disposables.c
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.c
            public boolean isDisposed() {
                return get() == DisposableHelper.DISPOSED;
            }

            @Override // io.reactivex.g0
            public void onComplete() {
                lazySet(DisposableHelper.DISPOSED);
                this.f74471a.e(this);
            }

            @Override // io.reactivex.g0
            public void onError(Throwable th) {
                lazySet(DisposableHelper.DISPOSED);
                this.f74471a.a(this, th);
            }

            @Override // io.reactivex.g0
            public void onNext(Open open) {
                this.f74471a.d(open);
            }

            @Override // io.reactivex.g0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(io.reactivex.g0<? super C> g0Var, io.reactivex.e0<? extends Open> e0Var, n7.o<? super Open, ? extends io.reactivex.e0<? extends Close>> oVar, Callable<C> callable) {
            this.f74458a = g0Var;
            this.f74459b = callable;
            this.f74460c = e0Var;
            this.f74461d = oVar;
        }

        void a(io.reactivex.disposables.c cVar, Throwable th) {
            DisposableHelper.dispose(this.f74463f);
            this.f74462e.c(cVar);
            onError(th);
        }

        void b(b<T, C> bVar, long j4) {
            boolean z9;
            this.f74462e.c(bVar);
            if (this.f74462e.g() == 0) {
                DisposableHelper.dispose(this.f74463f);
                z9 = true;
            } else {
                z9 = false;
            }
            synchronized (this) {
                Map<Long, C> map = this.f74469l;
                if (map == null) {
                    return;
                }
                this.f74466i.offer(map.remove(Long.valueOf(j4)));
                if (z9) {
                    this.f74465h = true;
                }
                c();
            }
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.g0<? super C> g0Var = this.f74458a;
            io.reactivex.internal.queue.b<C> bVar = this.f74466i;
            int i4 = 1;
            while (!this.f74467j) {
                boolean z9 = this.f74465h;
                if (z9 && this.f74464g.get() != null) {
                    bVar.clear();
                    g0Var.onError(this.f74464g.terminate());
                    return;
                }
                C poll = bVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    g0Var.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    g0Var.onNext(poll);
                }
            }
            bVar.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void d(Open open) {
            try {
                Collection collection = (Collection) io.reactivex.internal.functions.b.g(this.f74459b.call(), "The bufferSupplier returned a null Collection");
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74461d.apply(open), "The bufferClose returned a null ObservableSource");
                long j4 = this.f74468k;
                this.f74468k = 1 + j4;
                synchronized (this) {
                    Map<Long, C> map = this.f74469l;
                    if (map == 0) {
                        return;
                    }
                    map.put(Long.valueOf(j4), collection);
                    b bVar = new b(this, j4);
                    this.f74462e.b(bVar);
                    e0Var.subscribe(bVar);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                DisposableHelper.dispose(this.f74463f);
                onError(th);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (DisposableHelper.dispose(this.f74463f)) {
                this.f74467j = true;
                this.f74462e.dispose();
                synchronized (this) {
                    this.f74469l = null;
                }
                if (getAndIncrement() != 0) {
                    this.f74466i.clear();
                }
            }
        }

        void e(C0593a<Open> c0593a) {
            this.f74462e.c(c0593a);
            if (this.f74462e.g() == 0) {
                DisposableHelper.dispose(this.f74463f);
                this.f74465h = true;
                c();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f74463f.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74462e.dispose();
            synchronized (this) {
                Map<Long, C> map = this.f74469l;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    this.f74466i.offer(c10);
                }
                this.f74469l = null;
                this.f74465h = true;
                c();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74464g.addThrowable(th)) {
                this.f74462e.dispose();
                synchronized (this) {
                    this.f74469l = null;
                }
                this.f74465h = true;
                c();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            synchronized (this) {
                Map<Long, C> map = this.f74469l;
                if (map == null) {
                    return;
                }
                for (C c10 : map.values()) {
                    c10.add(t9);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this.f74463f, cVar)) {
                C0593a c0593a = new C0593a(this);
                this.f74462e.b(c0593a);
                this.f74460c.subscribe(c0593a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableBufferBoundary.java */
    /* loaded from: classes3.dex */
    public static final class b<T, C extends Collection<? super T>> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<Object>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f74472c = -8498650778633225126L;

        /* renamed from: a  reason: collision with root package name */
        final a<T, C, ?, ?> f74473a;

        /* renamed from: b  reason: collision with root package name */
        final long f74474b;

        b(a<T, C, ?, ?> aVar, long j4) {
            this.f74473a = aVar;
            this.f74474b = j4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar != disposableHelper) {
                lazySet(disposableHelper);
                this.f74473a.b(this, this.f74474b);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar != disposableHelper) {
                lazySet(disposableHelper);
                this.f74473a.a(this, th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            io.reactivex.disposables.c cVar = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar != disposableHelper) {
                lazySet(disposableHelper);
                cVar.dispose();
                this.f74473a.b(this, this.f74474b);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    public n(io.reactivex.e0<T> e0Var, io.reactivex.e0<? extends Open> e0Var2, n7.o<? super Open, ? extends io.reactivex.e0<? extends Close>> oVar, Callable<U> callable) {
        super(e0Var);
        this.f74455c = e0Var2;
        this.f74456d = oVar;
        this.f74454b = callable;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        a aVar = new a(g0Var, this.f74455c, this.f74456d, this.f74454b);
        g0Var.onSubscribe(aVar);
        this.f73827a.subscribe(aVar);
    }
}
