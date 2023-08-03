package io.reactivex.internal.operators.completable;

import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableMergeDelayErrorArray.java */
/* loaded from: classes3.dex */
public final class c0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g[] f71303a;

    /* compiled from: CompletableMergeDelayErrorArray.java */
    /* loaded from: classes3.dex */
    static final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71304a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.b f71305b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f71306c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f71307d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.d dVar, io.reactivex.disposables.b bVar, AtomicThrowable atomicThrowable, AtomicInteger atomicInteger) {
            this.f71304a = dVar;
            this.f71305b = bVar;
            this.f71306c = atomicThrowable;
            this.f71307d = atomicInteger;
        }

        void a() {
            if (this.f71307d.decrementAndGet() == 0) {
                Throwable terminate = this.f71306c.terminate();
                if (terminate == null) {
                    this.f71304a.onComplete();
                } else {
                    this.f71304a.onError(terminate);
                }
            }
        }

        @Override // io.reactivex.d
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f71306c.addThrowable(th)) {
                a();
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71305b.b(cVar);
        }
    }

    public c0(io.reactivex.g[] gVarArr) {
        this.f71303a = gVarArr;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        io.reactivex.g[] gVarArr;
        io.reactivex.disposables.b bVar = new io.reactivex.disposables.b();
        AtomicInteger atomicInteger = new AtomicInteger(this.f71303a.length + 1);
        AtomicThrowable atomicThrowable = new AtomicThrowable();
        dVar.onSubscribe(bVar);
        for (io.reactivex.g gVar : this.f71303a) {
            if (bVar.isDisposed()) {
                return;
            }
            if (gVar == null) {
                atomicThrowable.addThrowable(new NullPointerException("A completable source is null"));
                atomicInteger.decrementAndGet();
            } else {
                gVar.d(new a(dVar, bVar, atomicThrowable, atomicInteger));
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            Throwable terminate = atomicThrowable.terminate();
            if (terminate == null) {
                dVar.onComplete();
            } else {
                dVar.onError(terminate);
            }
        }
    }
}
