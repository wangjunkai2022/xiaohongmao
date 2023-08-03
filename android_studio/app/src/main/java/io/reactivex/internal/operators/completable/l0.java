package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableTakeUntilCompletable.java */
/* loaded from: classes3.dex */
public final class l0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.a f71405a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f71406b;

    /* compiled from: CompletableTakeUntilCompletable.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71407d = 3533011714830024923L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71408a;

        /* renamed from: b  reason: collision with root package name */
        final C0545a f71409b = new C0545a(this);

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f71410c = new AtomicBoolean();

        /* compiled from: CompletableTakeUntilCompletable.java */
        /* renamed from: io.reactivex.internal.operators.completable.l0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0545a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71411b = 5176264485428790318L;

            /* renamed from: a  reason: collision with root package name */
            final a f71412a;

            C0545a(a aVar) {
                this.f71412a = aVar;
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f71412a.a();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f71412a.b(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(io.reactivex.d dVar) {
            this.f71408a = dVar;
        }

        void a() {
            if (this.f71410c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                this.f71408a.onComplete();
            }
        }

        void b(Throwable th) {
            if (this.f71410c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                this.f71408a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f71410c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                DisposableHelper.dispose(this.f71409b);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71410c.get();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f71410c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f71409b);
                this.f71408a.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f71410c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f71409b);
                this.f71408a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    public l0(io.reactivex.a aVar, io.reactivex.g gVar) {
        this.f71405a = aVar;
        this.f71406b = gVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        this.f71406b.d(aVar.f71409b);
        this.f71405a.d(aVar);
    }
}
