package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableWindowBoundarySelector.java */
/* loaded from: classes3.dex */
public final class g4<T, B, V> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<B> f74151b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super B, ? extends io.reactivex.e0<V>> f74152c;

    /* renamed from: d  reason: collision with root package name */
    final int f74153d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWindowBoundarySelector.java */
    /* loaded from: classes3.dex */
    public static final class a<T, V> extends io.reactivex.observers.d<V> {

        /* renamed from: b  reason: collision with root package name */
        final c<T, ?, V> f74154b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.subjects.j<T> f74155c;

        /* renamed from: d  reason: collision with root package name */
        boolean f74156d;

        a(c<T, ?, V> cVar, io.reactivex.subjects.j<T> jVar) {
            this.f74154b = cVar;
            this.f74155c = jVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74156d) {
                return;
            }
            this.f74156d = true;
            this.f74154b.j(this);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74156d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74156d = true;
            this.f74154b.m(th);
        }

        @Override // io.reactivex.g0
        public void onNext(V v9) {
            dispose();
            onComplete();
        }
    }

    /* compiled from: ObservableWindowBoundarySelector.java */
    /* loaded from: classes3.dex */
    static final class b<T, B> extends io.reactivex.observers.d<B> {

        /* renamed from: b  reason: collision with root package name */
        final c<T, B, ?> f74157b;

        b(c<T, B, ?> cVar) {
            this.f74157b = cVar;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74157b.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74157b.m(th);
        }

        @Override // io.reactivex.g0
        public void onNext(B b10) {
            this.f74157b.n(b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWindowBoundarySelector.java */
    /* loaded from: classes3.dex */
    public static final class c<T, B, V> extends io.reactivex.internal.observers.k<T, Object, io.reactivex.z<T>> implements io.reactivex.disposables.c {
        final io.reactivex.e0<B> K;
        final n7.o<? super B, ? extends io.reactivex.e0<V>> L;
        final int M;
        final io.reactivex.disposables.b N;
        io.reactivex.disposables.c O;
        final AtomicReference<io.reactivex.disposables.c> P;
        final List<io.reactivex.subjects.j<T>> Q;
        final AtomicLong R;
        final AtomicBoolean S;

        c(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, io.reactivex.e0<B> e0Var, n7.o<? super B, ? extends io.reactivex.e0<V>> oVar, int i4) {
            super(g0Var, new io.reactivex.internal.queue.a());
            this.P = new AtomicReference<>();
            AtomicLong atomicLong = new AtomicLong();
            this.R = atomicLong;
            this.S = new AtomicBoolean();
            this.K = e0Var;
            this.L = oVar;
            this.M = i4;
            this.N = new io.reactivex.disposables.b();
            this.Q = new ArrayList();
            atomicLong.lazySet(1L);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.S.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.P);
                if (this.R.decrementAndGet() == 0) {
                    this.O.dispose();
                }
            }
        }

        @Override // io.reactivex.internal.observers.k, io.reactivex.internal.util.k
        public void g(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, Object obj) {
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.S.get();
        }

        void j(a<T, V> aVar) {
            this.N.c(aVar);
            this.G.offer(new d(aVar.f74155c, null));
            if (b()) {
                l();
            }
        }

        void k() {
            this.N.dispose();
            DisposableHelper.dispose(this.P);
        }

        void l() {
            io.reactivex.internal.queue.a aVar = (io.reactivex.internal.queue.a) this.G;
            io.reactivex.g0<? super V> g0Var = this.F;
            List<io.reactivex.subjects.j<T>> list = this.Q;
            int i4 = 1;
            while (true) {
                boolean z9 = this.I;
                Object poll = aVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    k();
                    Throwable th = this.J;
                    if (th != null) {
                        for (io.reactivex.subjects.j<T> jVar : list) {
                            jVar.onError(th);
                        }
                    } else {
                        for (io.reactivex.subjects.j<T> jVar2 : list) {
                            jVar2.onComplete();
                        }
                    }
                    list.clear();
                    return;
                } else if (z10) {
                    i4 = a(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else if (poll instanceof d) {
                    d dVar = (d) poll;
                    io.reactivex.subjects.j<T> jVar3 = dVar.f74158a;
                    if (jVar3 != null) {
                        if (list.remove(jVar3)) {
                            dVar.f74158a.onComplete();
                            if (this.R.decrementAndGet() == 0) {
                                k();
                                return;
                            }
                        } else {
                            continue;
                        }
                    } else if (!this.S.get()) {
                        io.reactivex.subjects.j<T> i10 = io.reactivex.subjects.j.i(this.M);
                        list.add(i10);
                        g0Var.onNext(i10);
                        try {
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.L.apply((B) dVar.f74159b), "The ObservableSource supplied is null");
                            a aVar2 = new a(this, i10);
                            if (this.N.b(aVar2)) {
                                this.R.getAndIncrement();
                                e0Var.subscribe(aVar2);
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            this.S.set(true);
                            g0Var.onError(th2);
                        }
                    }
                } else {
                    for (io.reactivex.subjects.j<T> jVar4 : list) {
                        jVar4.onNext((T) NotificationLite.getValue(poll));
                    }
                }
            }
        }

        void m(Throwable th) {
            this.O.dispose();
            this.N.dispose();
            onError(th);
        }

        void n(B b10) {
            this.G.offer(new d(null, b10));
            if (b()) {
                l();
            }
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.I) {
                return;
            }
            this.I = true;
            if (b()) {
                l();
            }
            if (this.R.decrementAndGet() == 0) {
                this.N.dispose();
            }
            this.F.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.I) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.J = th;
            this.I = true;
            if (b()) {
                l();
            }
            if (this.R.decrementAndGet() == 0) {
                this.N.dispose();
            }
            this.F.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (e()) {
                for (io.reactivex.subjects.j<T> jVar : this.Q) {
                    jVar.onNext(t9);
                }
                if (a(-1) == 0) {
                    return;
                }
            } else {
                this.G.offer(NotificationLite.next(t9));
                if (!b()) {
                    return;
                }
            }
            l();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.O, cVar)) {
                this.O = cVar;
                this.F.onSubscribe(this);
                if (this.S.get()) {
                    return;
                }
                b bVar = new b(this);
                if (this.P.compareAndSet(null, bVar)) {
                    this.K.subscribe(bVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWindowBoundarySelector.java */
    /* loaded from: classes3.dex */
    public static final class d<T, B> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.subjects.j<T> f74158a;

        /* renamed from: b  reason: collision with root package name */
        final B f74159b;

        d(io.reactivex.subjects.j<T> jVar, B b10) {
            this.f74158a = jVar;
            this.f74159b = b10;
        }
    }

    public g4(io.reactivex.e0<T> e0Var, io.reactivex.e0<B> e0Var2, n7.o<? super B, ? extends io.reactivex.e0<V>> oVar, int i4) {
        super(e0Var);
        this.f74151b = e0Var2;
        this.f74152c = oVar;
        this.f74153d = i4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        this.f73827a.subscribe(new c(new io.reactivex.observers.l(g0Var), this.f74151b, this.f74152c, this.f74153d));
    }
}
