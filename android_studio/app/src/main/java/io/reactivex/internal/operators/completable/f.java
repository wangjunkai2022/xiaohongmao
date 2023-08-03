package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableConcatIterable.java */
/* loaded from: classes3.dex */
public final class f extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final Iterable<? extends io.reactivex.g> f71336a;

    /* compiled from: CompletableConcatIterable.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicInteger implements io.reactivex.d {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71337d = -7965400327305809232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71338a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<? extends io.reactivex.g> f71339b;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f71340c = new SequentialDisposable();

        a(io.reactivex.d dVar, Iterator<? extends io.reactivex.g> it) {
            this.f71338a = dVar;
            this.f71339b = it;
        }

        void a() {
            if (!this.f71340c.isDisposed() && getAndIncrement() == 0) {
                Iterator<? extends io.reactivex.g> it = this.f71339b;
                while (!this.f71340c.isDisposed()) {
                    try {
                        if (!it.hasNext()) {
                            this.f71338a.onComplete();
                            return;
                        }
                        try {
                            ((io.reactivex.g) io.reactivex.internal.functions.b.g(it.next(), "The CompletableSource returned is null")).d(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f71338a.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        this.f71338a.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.d
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71338a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71340c.replace(cVar);
        }
    }

    public f(Iterable<? extends io.reactivex.g> iterable) {
        this.f71336a = iterable;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        try {
            a aVar = new a(dVar, (Iterator) io.reactivex.internal.functions.b.g(this.f71336a.iterator(), "The iterator returned is null"));
            dVar.onSubscribe(aVar.f71340c);
            aVar.a();
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, dVar);
        }
    }
}
