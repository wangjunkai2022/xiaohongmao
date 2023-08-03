package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleDoOnDispose.java */
/* loaded from: classes4.dex */
public final class p<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75464a;

    /* renamed from: b  reason: collision with root package name */
    final n7.a f75465b;

    /* compiled from: SingleDoOnDispose.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<n7.a> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f75466c = -8583764624474935784L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75467a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f75468b;

        a(io.reactivex.l0<? super T> l0Var, n7.a aVar) {
            this.f75467a = l0Var;
            lazySet(aVar);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            n7.a andSet = getAndSet(null);
            if (andSet != null) {
                try {
                    andSet.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
                this.f75468b.dispose();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75468b.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75467a.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75468b, cVar)) {
                this.f75468b = cVar;
                this.f75467a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75467a.onSuccess(t9);
        }
    }

    public p(io.reactivex.o0<T> o0Var, n7.a aVar) {
        this.f75464a = o0Var;
        this.f75465b = aVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75464a.d(new a(l0Var, this.f75465b));
    }
}
