package io.reactivex.internal.operators.maybe;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* compiled from: MaybeFromFuture.java */
/* loaded from: classes3.dex */
public final class k0<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final Future<? extends T> f73368a;

    /* renamed from: b  reason: collision with root package name */
    final long f73369b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f73370c;

    public k0(Future<? extends T> future, long j4, TimeUnit timeUnit) {
        this.f73368a = future;
        this.f73369b = j4;
        this.f73370c = timeUnit;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        Object obj;
        io.reactivex.disposables.c b10 = io.reactivex.disposables.d.b();
        tVar.onSubscribe(b10);
        if (b10.isDisposed()) {
            return;
        }
        try {
            long j4 = this.f73369b;
            if (j4 <= 0) {
                obj = (T) this.f73368a.get();
            } else {
                obj = (T) this.f73368a.get(j4, this.f73370c);
            }
            if (b10.isDisposed()) {
                return;
            }
            if (obj == null) {
                tVar.onComplete();
            } else {
                tVar.onSuccess(obj);
            }
        } catch (Throwable th) {
            th = th;
            if (th instanceof ExecutionException) {
                th = th.getCause();
            }
            io.reactivex.exceptions.a.b(th);
            if (b10.isDisposed()) {
                return;
            }
            tVar.onError(th);
        }
    }
}
