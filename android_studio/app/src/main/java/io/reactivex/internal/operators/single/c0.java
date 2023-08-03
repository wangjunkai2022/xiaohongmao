package io.reactivex.internal.operators.single;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapPublisher.java */
/* loaded from: classes4.dex */
public final class c0<T, R> extends io.reactivex.j<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<T> f75354b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f75355c;

    public c0(io.reactivex.o0<T> o0Var, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar) {
        this.f75354b = o0Var;
        this.f75355c = oVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        this.f75354b.d(new a(dVar, this.f75355c));
    }

    /* compiled from: SingleFlatMapPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<S, T> extends AtomicLong implements io.reactivex.l0<S>, io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f75356e = 7759721921468635667L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f75357a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super S, ? extends org.reactivestreams.c<? extends T>> f75358b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f75359c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f75360d;

        a(org.reactivestreams.d<? super T> dVar, n7.o<? super S, ? extends org.reactivestreams.c<? extends T>> oVar) {
            this.f75357a = dVar;
            this.f75358b = oVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75360d.dispose();
            SubscriptionHelper.cancel(this.f75359c);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f75357a.onComplete();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75357a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f75357a.onNext(t9);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75360d = cVar;
            this.f75357a.onSubscribe(this);
        }

        @Override // io.reactivex.l0
        public void onSuccess(S s9) {
            try {
                ((org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f75358b.apply(s9), "the mapper returned a null Publisher")).i(this);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f75357a.onError(th);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f75359c, this, j4);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f75359c, this, eVar);
        }
    }
}
