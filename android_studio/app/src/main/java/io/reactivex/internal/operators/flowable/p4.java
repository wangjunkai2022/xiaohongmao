package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.ArrayListSupplier;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: FlowableToListSingle.java */
/* loaded from: classes3.dex */
public final class p4<T, U extends Collection<? super T>> extends io.reactivex.i0<U> implements o7.b<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f72466a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<U> f72467b;

    /* compiled from: FlowableToListSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super U> f72468a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f72469b;

        /* renamed from: c  reason: collision with root package name */
        U f72470c;

        a(io.reactivex.l0<? super U> l0Var, U u9) {
            this.f72468a = l0Var;
            this.f72470c = u9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72469b.cancel();
            this.f72469b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72469b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72469b = SubscriptionHelper.CANCELLED;
            this.f72468a.onSuccess(this.f72470c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72470c = null;
            this.f72469b = SubscriptionHelper.CANCELLED;
            this.f72468a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72470c.add(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72469b, eVar)) {
                this.f72469b = eVar;
                this.f72468a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public p4(io.reactivex.j<T> jVar) {
        this(jVar, ArrayListSupplier.asCallable());
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super U> l0Var) {
        try {
            this.f72466a.j6(new a(l0Var, (Collection) io.reactivex.internal.functions.b.g(this.f72467b.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptyDisposable.error(th, l0Var);
        }
    }

    @Override // o7.b
    public io.reactivex.j<U> c() {
        return io.reactivex.plugins.a.P(new o4(this.f72466a, this.f72467b));
    }

    public p4(io.reactivex.j<T> jVar, Callable<U> callable) {
        this.f72466a = jVar;
        this.f72467b = callable;
    }
}
