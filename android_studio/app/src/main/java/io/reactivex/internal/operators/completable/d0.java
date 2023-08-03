package io.reactivex.internal.operators.completable;

import io.reactivex.internal.operators.completable.c0;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableMergeDelayErrorIterable.java */
/* loaded from: classes3.dex */
public final class d0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.g> f71324a;

    public d0(Iterable<? extends io.reactivex.g> iterable) {
        this.f71324a = iterable;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        io.reactivex.disposables.b bVar = new io.reactivex.disposables.b();
        dVar.onSubscribe(bVar);
        try {
            Iterator it = (Iterator) io.reactivex.internal.functions.b.g(this.f71324a.iterator(), "The source iterator returned is null");
            AtomicInteger atomicInteger = new AtomicInteger(1);
            AtomicThrowable atomicThrowable = new AtomicThrowable();
            while (!bVar.isDisposed()) {
                try {
                    if (it.hasNext()) {
                        if (bVar.isDisposed()) {
                            return;
                        }
                        try {
                            io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(it.next(), "The iterator returned a null CompletableSource");
                            if (bVar.isDisposed()) {
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            gVar.d(new c0.a(dVar, bVar, atomicThrowable, atomicInteger));
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            atomicThrowable.addThrowable(th);
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    atomicThrowable.addThrowable(th2);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    Throwable terminate = atomicThrowable.terminate();
                    if (terminate == null) {
                        dVar.onComplete();
                        return;
                    } else {
                        dVar.onError(terminate);
                        return;
                    }
                }
                return;
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            dVar.onError(th3);
        }
    }
}
