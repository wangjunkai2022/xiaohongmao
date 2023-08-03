package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;

/* compiled from: ObservableDoFinally.java */
/* loaded from: classes3.dex */
public final class n0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.a f74475b;

    /* compiled from: ObservableDoFinally.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends BasicIntQueueDisposable<T> implements io.reactivex.g0<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f74476g = 4109457741734051389L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74477b;

        /* renamed from: c  reason: collision with root package name */
        final n7.a f74478c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f74479d;

        /* renamed from: e  reason: collision with root package name */
        o7.j<T> f74480e;

        /* renamed from: f  reason: collision with root package name */
        boolean f74481f;

        a(io.reactivex.g0<? super T> g0Var, n7.a aVar) {
            this.f74477b = g0Var;
            this.f74478c = aVar;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f74478c.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // o7.o
        public void clear() {
            this.f74480e.clear();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74479d.dispose();
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74479d.isDisposed();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f74480e.isEmpty();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74477b.onComplete();
            a();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74477b.onError(th);
            a();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74477b.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74479d, cVar)) {
                this.f74479d = cVar;
                if (cVar instanceof o7.j) {
                    this.f74480e = (o7.j) cVar;
                }
                this.f74477b.onSubscribe(this);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll = this.f74480e.poll();
            if (poll == null && this.f74481f) {
                a();
            }
            return poll;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            o7.j<T> jVar = this.f74480e;
            if (jVar == null || (i4 & 4) != 0) {
                return 0;
            }
            int requestFusion = jVar.requestFusion(i4);
            if (requestFusion != 0) {
                this.f74481f = requestFusion == 1;
            }
            return requestFusion;
        }
    }

    public n0(io.reactivex.e0<T> e0Var, n7.a aVar) {
        super(e0Var);
        this.f74475b = aVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74475b));
    }
}
