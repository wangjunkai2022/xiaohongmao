package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableDoFinally.java */
/* loaded from: classes3.dex */
public final class l extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71399a;

    /* renamed from: b  reason: collision with root package name */
    final n7.a f71400b;

    /* compiled from: CompletableDoFinally.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicInteger implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71401d = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71402a;

        /* renamed from: b  reason: collision with root package name */
        final n7.a f71403b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f71404c;

        a(io.reactivex.d dVar, n7.a aVar) {
            this.f71402a = dVar;
            this.f71403b = aVar;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f71403b.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71404c.dispose();
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71404c.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71402a.onComplete();
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71402a.onError(th);
            a();
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f71404c, cVar)) {
                this.f71404c = cVar;
                this.f71402a.onSubscribe(this);
            }
        }
    }

    public l(io.reactivex.g gVar, n7.a aVar) {
        this.f71399a = gVar;
        this.f71400b = aVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71399a.d(new a(dVar, this.f71400b));
    }
}
