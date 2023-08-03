package io.reactivex.internal.operators.parallel;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import n7.r;

/* compiled from: ParallelFilter.java */
/* loaded from: classes3.dex */
public final class d<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f75158a;

    /* renamed from: b  reason: collision with root package name */
    final r<? super T> f75159b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelFilter.java */
    /* loaded from: classes3.dex */
    public static abstract class a<T> implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final r<? super T> f75160a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f75161b;

        /* renamed from: c  reason: collision with root package name */
        boolean f75162c;

        a(r<? super T> rVar) {
            this.f75160a = rVar;
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f75161b.cancel();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (h(t9) || this.f75162c) {
                return;
            }
            this.f75161b.request(1L);
        }

        @Override // org.reactivestreams.e
        public final void request(long j4) {
            this.f75161b.request(j4);
        }
    }

    /* compiled from: ParallelFilter.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends a<T> {

        /* renamed from: d  reason: collision with root package name */
        final o7.a<? super T> f75163d;

        b(o7.a<? super T> aVar, r<? super T> rVar) {
            super(rVar);
            this.f75163d = aVar;
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (!this.f75162c) {
                try {
                    if (this.f75160a.test(t9)) {
                        return this.f75163d.h(t9);
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75162c) {
                return;
            }
            this.f75162c = true;
            this.f75163d.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75162c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75162c = true;
            this.f75163d.onError(th);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75161b, eVar)) {
                this.f75161b = eVar;
                this.f75163d.onSubscribe(this);
            }
        }
    }

    /* compiled from: ParallelFilter.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends a<T> {

        /* renamed from: d  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f75164d;

        c(org.reactivestreams.d<? super T> dVar, r<? super T> rVar) {
            super(rVar);
            this.f75164d = dVar;
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (!this.f75162c) {
                try {
                    if (this.f75160a.test(t9)) {
                        this.f75164d.onNext(t9);
                        return true;
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75162c) {
                return;
            }
            this.f75162c = true;
            this.f75164d.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75162c) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75162c = true;
            this.f75164d.onError(th);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75161b, eVar)) {
                this.f75161b = eVar;
                this.f75164d.onSubscribe(this);
            }
        }
    }

    public d(io.reactivex.parallel.a<T> aVar, r<? super T> rVar) {
        this.f75158a = aVar;
        this.f75159b = rVar;
    }

    @Override // io.reactivex.parallel.a
    public int F() {
        return this.f75158a.F();
    }

    @Override // io.reactivex.parallel.a
    public void Q(org.reactivestreams.d<? super T>[] dVarArr) {
        if (U(dVarArr)) {
            int length = dVarArr.length;
            org.reactivestreams.d<? super T>[] dVarArr2 = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super T> dVar = dVarArr[i4];
                if (dVar instanceof o7.a) {
                    dVarArr2[i4] = new b((o7.a) dVar, this.f75159b);
                } else {
                    dVarArr2[i4] = new c(dVar, this.f75159b);
                }
            }
            this.f75158a.Q(dVarArr2);
        }
    }
}
