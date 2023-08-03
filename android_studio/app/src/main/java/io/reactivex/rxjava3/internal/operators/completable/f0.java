package io.reactivex.rxjava3.internal.operators.completable;

import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableMergeIterable.java */
/* loaded from: classes4.dex */
public final class f0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.g> f76604a;

    /* compiled from: CompletableMergeIterable.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicBoolean implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76605d = -7730517613164279224L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f76606a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76607b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f76608c;

        a(io.reactivex.rxjava3.core.d actual, io.reactivex.rxjava3.disposables.c set, AtomicInteger wip) {
            this.f76607b = actual;
            this.f76606a = set;
            this.f76608c = wip;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76606a.dispose();
            set(true);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76606a.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (this.f76608c.decrementAndGet() == 0) {
                this.f76607b.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76606a.dispose();
            if (compareAndSet(false, true)) {
                this.f76607b.onError(e4);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76606a.b(d4);
        }
    }

    public f0(Iterable<? extends io.reactivex.rxjava3.core.g> sources) {
        this.f76604a = sources;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(final io.reactivex.rxjava3.core.d observer) {
        io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
        AtomicInteger atomicInteger = new AtomicInteger(1);
        a aVar = new a(observer, cVar, atomicInteger);
        observer.onSubscribe(aVar);
        try {
            Iterator<? extends io.reactivex.rxjava3.core.g> it = this.f76604a.iterator();
            Objects.requireNonNull(it, "The source iterator returned is null");
            Iterator<? extends io.reactivex.rxjava3.core.g> it2 = it;
            while (!cVar.isDisposed()) {
                try {
                    if (!it2.hasNext()) {
                        aVar.onComplete();
                        return;
                    } else if (cVar.isDisposed()) {
                        return;
                    } else {
                        try {
                            io.reactivex.rxjava3.core.g next = it2.next();
                            Objects.requireNonNull(next, "The iterator returned a null CompletableSource");
                            io.reactivex.rxjava3.core.g gVar = next;
                            if (cVar.isDisposed()) {
                                return;
                            }
                            atomicInteger.getAndIncrement();
                            gVar.d(aVar);
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            cVar.dispose();
                            aVar.onError(th);
                            return;
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    cVar.dispose();
                    aVar.onError(th2);
                    return;
                }
            }
        } catch (Throwable th3) {
            io.reactivex.rxjava3.exceptions.a.b(th3);
            observer.onError(th3);
        }
    }
}
