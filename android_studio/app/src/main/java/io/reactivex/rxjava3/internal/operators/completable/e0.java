package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.operators.completable.d0;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableMergeDelayErrorIterable.java */
/* loaded from: classes4.dex */
public final class e0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.g> f76598a;

    public e0(Iterable<? extends io.reactivex.rxjava3.core.g> sources) {
        this.f76598a = sources;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(final io.reactivex.rxjava3.core.d observer) {
        io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
        observer.onSubscribe(cVar);
        try {
            Iterator<? extends io.reactivex.rxjava3.core.g> it = this.f76598a.iterator();
            Objects.requireNonNull(it, "The source iterator returned is null");
            Iterator<? extends io.reactivex.rxjava3.core.g> it2 = it;
            AtomicInteger atomicInteger = new AtomicInteger(1);
            AtomicThrowable atomicThrowable = new AtomicThrowable();
            cVar.b(new d0.b(atomicThrowable));
            while (!cVar.isDisposed()) {
                try {
                    if (it2.hasNext()) {
                        if (cVar.isDisposed()) {
                            return;
                        }
                        try {
                            io.reactivex.rxjava3.core.g next = it2.next();
                            Objects.requireNonNull(next, "The iterator returned a null CompletableSource");
                            io.reactivex.rxjava3.core.g gVar = next;
                            if (cVar.isDisposed()) {
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            gVar.d(new d0.a(observer, cVar, atomicThrowable, atomicInteger));
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            atomicThrowable.tryAddThrowableOrReport(th);
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    atomicThrowable.tryAddThrowableOrReport(th2);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    atomicThrowable.tryTerminateConsumer(observer);
                    return;
                }
                return;
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            observer.onError(th3);
        }
    }
}
