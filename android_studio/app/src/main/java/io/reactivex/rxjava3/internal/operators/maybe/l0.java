package io.reactivex.rxjava3.internal.operators.maybe;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: MaybeFromFuture.java */
/* loaded from: classes4.dex */
public final class l0<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final Future<? extends T> f78659a;

    /* renamed from: b  reason: collision with root package name */
    final long f78660b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f78661c;

    public l0(Future<? extends T> future, long timeout, TimeUnit unit) {
        this.f78659a = future;
        this.f78660b = timeout;
        this.f78661c = unit;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        Object obj;
        io.reactivex.rxjava3.disposables.f b10 = io.reactivex.rxjava3.disposables.e.b();
        observer.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            long j4 = this.f78660b;
            if (j4 <= 0) {
                obj = (T) this.f78659a.get();
            } else {
                obj = (T) this.f78659a.get(j4, this.f78661c);
            }
            if (b10.isDisposed()) {
                return;
            }
            if (obj == null) {
                observer.onComplete();
            } else {
                observer.onSuccess(obj);
            }
        } catch (Throwable th) {
            th = th;
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (th instanceof ExecutionException) {
                th = th.getCause();
            }
            io.reactivex.rxjava3.exceptions.a.b(th);
            if (b10.isDisposed()) {
                return;
            }
            observer.onError(th);
        }
    }
}
