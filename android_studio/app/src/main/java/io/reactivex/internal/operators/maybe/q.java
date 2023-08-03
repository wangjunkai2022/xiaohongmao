package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MaybeDoFinally.java */
/* loaded from: classes3.dex */
public final class q<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.a f73430b;

    /* compiled from: MaybeDoFinally.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f73431d = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73432a;

        /* renamed from: b  reason: collision with root package name */
        final n7.a f73433b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73434c;

        a(io.reactivex.t<? super T> tVar, n7.a aVar) {
            this.f73432a = tVar;
            this.f73433b = aVar;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f73433b.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73434c.dispose();
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73434c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73432a.onComplete();
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73432a.onError(th);
            a();
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73434c, cVar)) {
                this.f73434c = cVar;
                this.f73432a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73432a.onSuccess(t9);
            a();
        }
    }

    public q(io.reactivex.w<T> wVar, n7.a aVar) {
        super(wVar);
        this.f73430b = aVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73430b));
    }
}
