package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;

/* compiled from: ObservableDoFinally.java */
/* loaded from: classes4.dex */
public final class n0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.a f79797b;

    /* compiled from: ObservableDoFinally.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends BasicIntQueueDisposable<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f79798g = 4109457741734051389L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79799b;

        /* renamed from: c  reason: collision with root package name */
        final q7.a f79800c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79801d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.l<T> f79802e;

        /* renamed from: f  reason: collision with root package name */
        boolean f79803f;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, q7.a onFinally) {
            this.f79799b = actual;
            this.f79800c = onFinally;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f79800c.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f79802e.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79801d.dispose();
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79801d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f79802e.isEmpty();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79799b.onComplete();
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79799b.onError(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79799b.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79801d, d4)) {
                this.f79801d = d4;
                if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                    this.f79802e = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                }
                this.f79799b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll = this.f79802e.poll();
            if (poll == null && this.f79803f) {
                a();
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            io.reactivex.rxjava3.internal.fuseable.l<T> lVar = this.f79802e;
            if (lVar == null || (mode & 4) != 0) {
                return 0;
            }
            int requestFusion = lVar.requestFusion(mode);
            if (requestFusion != 0) {
                this.f79803f = requestFusion == 1;
            }
            return requestFusion;
        }
    }

    public n0(io.reactivex.rxjava3.core.l0<T> source, q7.a onFinally) {
        super(source);
        this.f79797b = onFinally;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f79797b));
    }
}
