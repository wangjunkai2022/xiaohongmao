package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import java.util.concurrent.Callable;

/* compiled from: FlowableError.java */
/* loaded from: classes3.dex */
public final class x0<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends Throwable> f72997b;

    public x0(Callable<? extends Throwable> callable) {
        this.f72997b = callable;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        try {
            th = (Throwable) io.reactivex.internal.functions.b.g(this.f72997b.call(), "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
            io.reactivex.exceptions.a.b(th);
        }
        EmptySubscription.error(th, dVar);
    }
}
