package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableReduceMaybe.java */
/* loaded from: classes3.dex */
public final class w2<T> extends io.reactivex.q<T> implements o7.h<T>, o7.b<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f72935a;

    /* renamed from: b  reason: collision with root package name */
    final n7.c<T, T, T> f72936b;

    /* compiled from: FlowableReduceMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f72937a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<T, T, T> f72938b;

        /* renamed from: c  reason: collision with root package name */
        T f72939c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f72940d;

        /* renamed from: e  reason: collision with root package name */
        boolean f72941e;

        a(io.reactivex.t<? super T> tVar, n7.c<T, T, T> cVar) {
            this.f72937a = tVar;
            this.f72938b = cVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72940d.cancel();
            this.f72941e = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72941e;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72941e) {
                return;
            }
            this.f72941e = true;
            T t9 = this.f72939c;
            if (t9 != null) {
                this.f72937a.onSuccess(t9);
            } else {
                this.f72937a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72941e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72941e = true;
            this.f72937a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72941e) {
                return;
            }
            T t10 = this.f72939c;
            if (t10 == null) {
                this.f72939c = t9;
                return;
            }
            try {
                this.f72939c = (T) io.reactivex.internal.functions.b.g(this.f72938b.apply(t10, t9), "The reducer returned a null value");
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72940d.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72940d, eVar)) {
                this.f72940d = eVar;
                this.f72937a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public w2(io.reactivex.j<T> jVar, n7.c<T, T, T> cVar) {
        this.f72935a = jVar;
        this.f72936b = cVar;
    }

    @Override // o7.b
    public io.reactivex.j<T> c() {
        return io.reactivex.plugins.a.P(new v2(this.f72935a, this.f72936b));
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f72935a.j6(new a(tVar, this.f72936b));
    }

    @Override // o7.h
    public org.reactivestreams.c<T> source() {
        return this.f72935a;
    }
}
