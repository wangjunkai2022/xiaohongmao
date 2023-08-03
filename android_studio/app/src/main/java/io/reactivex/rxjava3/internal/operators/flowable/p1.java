package io.reactivex.rxjava3.internal.operators.flowable;

/* compiled from: FlowableFromRunnable.java */
/* loaded from: classes4.dex */
public final class p1<T> extends io.reactivex.rxjava3.core.m<T> implements q7.s<T> {

    /* renamed from: b  reason: collision with root package name */
    final Runnable f77735b;

    public p1(Runnable run) {
        this.f77735b = run;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> subscriber) {
        io.reactivex.rxjava3.internal.fuseable.b bVar = new io.reactivex.rxjava3.internal.fuseable.b();
        subscriber.onSubscribe(bVar);
        if (bVar.isDisposed()) {
            return;
        }
        try {
            this.f77735b.run();
            if (bVar.isDisposed()) {
                return;
            }
            subscriber.onComplete();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (!bVar.isDisposed()) {
                subscriber.onError(th);
            } else {
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }
    }

    @Override // q7.s
    public T get() throws Throwable {
        this.f77735b.run();
        return null;
    }
}
