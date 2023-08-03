package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableTakeUntilCompletable.java */
/* loaded from: classes4.dex */
public final class n0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.a f76683a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76684b;

    /* compiled from: CompletableTakeUntilCompletable.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76685d = 3533011714830024923L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76686a;

        /* renamed from: b  reason: collision with root package name */
        final C0623a f76687b = new C0623a(this);

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f76688c = new AtomicBoolean();

        /* compiled from: CompletableTakeUntilCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.completable.n0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0623a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f76689b = 5176264485428790318L;

            /* renamed from: a  reason: collision with root package name */
            final a f76690a;

            C0623a(a parent) {
                this.f76690a = parent;
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f76690a.a();
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f76690a.b(e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.d downstream) {
            this.f76686a = downstream;
        }

        void a() {
            if (this.f76688c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                this.f76686a.onComplete();
            }
        }

        void b(Throwable e4) {
            if (this.f76688c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                this.f76686a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f76688c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                DisposableHelper.dispose(this.f76687b);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76688c.get();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (this.f76688c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f76687b);
                this.f76686a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f76688c.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f76687b);
                this.f76686a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }
    }

    public n0(io.reactivex.rxjava3.core.a source, io.reactivex.rxjava3.core.g other) {
        this.f76683a = source;
        this.f76684b = other;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        this.f76684b.d(aVar.f76687b);
        this.f76683a.d(aVar);
    }
}
