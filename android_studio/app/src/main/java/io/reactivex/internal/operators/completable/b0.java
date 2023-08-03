package io.reactivex.internal.operators.completable;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableMergeArray.java */
/* loaded from: classes3.dex */
public final class b0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g[] f71289a;

    /* compiled from: CompletableMergeArray.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicInteger implements io.reactivex.d {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71290d = -8360547806504310570L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71291a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicBoolean f71292b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.b f71293c;

        a(io.reactivex.d dVar, AtomicBoolean atomicBoolean, io.reactivex.disposables.b bVar, int i4) {
            this.f71291a = dVar;
            this.f71292b = atomicBoolean;
            this.f71293c = bVar;
            lazySet(i4);
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (decrementAndGet() == 0 && this.f71292b.compareAndSet(false, true)) {
                this.f71291a.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71293c.dispose();
            if (this.f71292b.compareAndSet(false, true)) {
                this.f71291a.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71293c.b(cVar);
        }
    }

    public b0(io.reactivex.g[] gVarArr) {
        this.f71289a = gVarArr;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        io.reactivex.g[] gVarArr;
        io.reactivex.disposables.b bVar = new io.reactivex.disposables.b();
        a aVar = new a(dVar, new AtomicBoolean(), bVar, this.f71289a.length + 1);
        dVar.onSubscribe(bVar);
        for (io.reactivex.g gVar : this.f71289a) {
            if (bVar.isDisposed()) {
                return;
            }
            if (gVar == null) {
                bVar.dispose();
                aVar.onError(new NullPointerException("A completable source is null"));
                return;
            }
            gVar.d(aVar);
        }
        aVar.onComplete();
    }
}
