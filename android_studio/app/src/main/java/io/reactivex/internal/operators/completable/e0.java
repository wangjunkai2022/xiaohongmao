package io.reactivex.internal.operators.completable;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableMergeIterable.java */
/* loaded from: classes3.dex */
public final class e0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.g> f71331a;

    /* compiled from: CompletableMergeIterable.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicBoolean implements io.reactivex.d {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71332d = -7730517613164279224L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.disposables.b f71333a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.d f71334b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f71335c;

        a(io.reactivex.d dVar, io.reactivex.disposables.b bVar, AtomicInteger atomicInteger) {
            this.f71334b = dVar;
            this.f71333a = bVar;
            this.f71335c = atomicInteger;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f71335c.decrementAndGet() == 0 && compareAndSet(false, true)) {
                this.f71334b.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71333a.dispose();
            if (compareAndSet(false, true)) {
                this.f71334b.onError(th);
            } else {
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71333a.b(cVar);
        }
    }

    public e0(Iterable<? extends io.reactivex.g> iterable) {
        this.f71331a = iterable;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        io.reactivex.disposables.b bVar = new io.reactivex.disposables.b();
        dVar.onSubscribe(bVar);
        try {
            Iterator it = (Iterator) io.reactivex.internal.functions.b.g(this.f71331a.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            a aVar = new a(dVar, bVar, atomicInteger);
            while (!bVar.isDisposed()) {
                try {
                    if (!it.hasNext()) {
                        aVar.onComplete();
                        return;
                    } else if (bVar.isDisposed()) {
                        return;
                    } else {
                        try {
                            io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(it.next(), "The iterator returned a null CompletableSource");
                            if (bVar.isDisposed()) {
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            gVar.d(aVar);
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            bVar.dispose();
                            aVar.onError(th);
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    bVar.dispose();
                    aVar.onError(th2);
                    return;
                }
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            dVar.onError(th3);
        }
    }
}
