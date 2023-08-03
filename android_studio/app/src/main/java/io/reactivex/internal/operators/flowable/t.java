package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;

/* compiled from: FlowableCollectSingle.java */
/* loaded from: classes3.dex */
public final class t<T, U> extends io.reactivex.i0<U> implements o7.b<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f72692a;

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends U> f72693b;

    /* renamed from: c  reason: collision with root package name */
    final n7.b<? super U, ? super T> f72694c;

    /* compiled from: FlowableCollectSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T, U> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super U> f72695a;

        /* renamed from: b  reason: collision with root package name */
        final n7.b<? super U, ? super T> f72696b;

        /* renamed from: c  reason: collision with root package name */
        final U f72697c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f72698d;

        /* renamed from: e  reason: collision with root package name */
        boolean f72699e;

        a(io.reactivex.l0<? super U> l0Var, U u9, n7.b<? super U, ? super T> bVar) {
            this.f72695a = l0Var;
            this.f72696b = bVar;
            this.f72697c = u9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72698d.cancel();
            this.f72698d = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72698d == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72699e) {
                return;
            }
            this.f72699e = true;
            this.f72698d = SubscriptionHelper.CANCELLED;
            this.f72695a.onSuccess((U) this.f72697c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72699e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72699e = true;
            this.f72698d = SubscriptionHelper.CANCELLED;
            this.f72695a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72699e) {
                return;
            }
            try {
                this.f72696b.accept((U) this.f72697c, t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72698d.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72698d, eVar)) {
                this.f72698d = eVar;
                this.f72695a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public t(io.reactivex.j<T> jVar, Callable<? extends U> callable, n7.b<? super U, ? super T> bVar) {
        this.f72692a = jVar;
        this.f72693b = callable;
        this.f72694c = bVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super U> l0Var) {
        try {
            this.f72692a.j6(new a(l0Var, io.reactivex.internal.functions.b.g(this.f72693b.call(), "The initialSupplier returned a null value"), this.f72694c));
        } catch (Throwable th) {
            EmptyDisposable.error(th, l0Var);
        }
    }

    @Override // o7.b
    public io.reactivex.j<U> c() {
        return io.reactivex.plugins.a.P(new s(this.f72692a, this.f72693b, this.f72694c));
    }
}
