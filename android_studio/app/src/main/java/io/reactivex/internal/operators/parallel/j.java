package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: ParallelMap.java */
/* loaded from: classes3.dex */
public final class j<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f75220a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends R> f75221b;

    /* compiled from: ParallelMap.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final o7.a<? super R> f75222a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends R> f75223b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f75224c;

        /* renamed from: d  reason: collision with root package name */
        boolean f75225d;

        a(o7.a<? super R> aVar, n7.o<? super T, ? extends R> oVar) {
            this.f75222a = aVar;
            this.f75223b = oVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75224c.cancel();
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (this.f75225d) {
                return false;
            }
            try {
                return this.f75222a.h(io.reactivex.internal.functions.b.g(this.f75223b.apply(t9), "The mapper returned a null value"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
                return false;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75225d) {
                return;
            }
            this.f75225d = true;
            this.f75222a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75225d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75225d = true;
            this.f75222a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75225d) {
                return;
            }
            try {
                this.f75222a.onNext(io.reactivex.internal.functions.b.g(this.f75223b.apply(t9), "The mapper returned a null value"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75224c, eVar)) {
                this.f75224c = eVar;
                this.f75222a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f75224c.request(j4);
        }
    }

    /* compiled from: ParallelMap.java */
    /* loaded from: classes3.dex */
    static final class b<T, R> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f75226a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends R> f75227b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f75228c;

        /* renamed from: d  reason: collision with root package name */
        boolean f75229d;

        b(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends R> oVar) {
            this.f75226a = dVar;
            this.f75227b = oVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f75228c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75229d) {
                return;
            }
            this.f75229d = true;
            this.f75226a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75229d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75229d = true;
            this.f75226a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75229d) {
                return;
            }
            try {
                this.f75226a.onNext(io.reactivex.internal.functions.b.g(this.f75227b.apply(t9), "The mapper returned a null value"));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75228c, eVar)) {
                this.f75228c = eVar;
                this.f75226a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f75228c.request(j4);
        }
    }

    public j(io.reactivex.parallel.a<T> aVar, n7.o<? super T, ? extends R> oVar) {
        this.f75220a = aVar;
        this.f75221b = oVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75220a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super R>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super T>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super R> dVar = dVarArr[i4];
                if (dVar instanceof o7.a) {
                    dVarArr2[i4] = new a((o7.a) dVar, this.f75221b);
                } else {
                    dVarArr2[i4] = new b(dVar, this.f75221b);
                }
            }
            this.f75220a.Q(dVarArr2);
        }
    }
}
