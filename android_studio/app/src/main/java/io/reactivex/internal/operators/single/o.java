package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SingleDoFinally.java */
/* loaded from: classes4.dex */
public final class o<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75453a;

    /* renamed from: b  reason: collision with root package name */
    final n7.a f75454b;

    /* compiled from: SingleDoFinally.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f75455d = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75456a;

        /* renamed from: b  reason: collision with root package name */
        final n7.a f75457b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f75458c;

        a(io.reactivex.l0<? super T> l0Var, n7.a aVar) {
            this.f75456a = l0Var;
            this.f75457b = aVar;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f75457b.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75458c.dispose();
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75458c.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75456a.onError(th);
            a();
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75458c, cVar)) {
                this.f75458c = cVar;
                this.f75456a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75456a.onSuccess(t9);
            a();
        }
    }

    public o(io.reactivex.o0<T> o0Var, n7.a aVar) {
        this.f75453a = o0Var;
        this.f75454b = aVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75453a.d(new a(l0Var, this.f75454b));
    }
}
