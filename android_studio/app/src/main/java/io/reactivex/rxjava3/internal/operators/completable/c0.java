package io.reactivex.rxjava3.internal.operators.completable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableMergeArray.java */
/* loaded from: classes4.dex */
public final class c0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g[] f76565a;

    /* compiled from: CompletableMergeArray.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicInteger implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76566d = -8360547806504310570L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76567a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicBoolean f76568b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f76569c;

        a(io.reactivex.rxjava3.core.d actual, AtomicBoolean once, io.reactivex.rxjava3.disposables.c set, int n9) {
            this.f76567a = actual;
            this.f76568b = once;
            this.f76569c = set;
            lazySet(n9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76569c.dispose();
            this.f76568b.set(true);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76569c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (decrementAndGet() == 0) {
                this.f76567a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76569c.dispose();
            if (this.f76568b.compareAndSet(false, true)) {
                this.f76567a.onError(e4);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76569c.b(d4);
        }
    }

    public c0(io.reactivex.rxjava3.core.g[] sources) {
        this.f76565a = sources;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(final io.reactivex.rxjava3.core.d observer) {
        io.reactivex.rxjava3.core.g[] gVarArr;
        io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
        a aVar = new a(observer, new AtomicBoolean(), cVar, this.f76565a.length + 1);
        observer.onSubscribe(aVar);
        for (io.reactivex.rxjava3.core.g gVar : this.f76565a) {
            if (cVar.isDisposed()) {
                return;
            }
            if (gVar == null) {
                cVar.dispose();
                aVar.onError(new NullPointerException("A completable source is null"));
                return;
            }
            gVar.d(aVar);
        }
        aVar.onComplete();
    }
}
