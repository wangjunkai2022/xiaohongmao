package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import q7.r;

/* compiled from: ParallelFilter.java */
/* loaded from: classes4.dex */
public final class d<T> extends io.reactivex.rxjava3.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f80535a;

    /* renamed from: b  reason: collision with root package name */
    final r<? super T> f80536b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ParallelFilter.java */
    /* loaded from: classes4.dex */
    public static abstract class a<T> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final r<? super T> f80537a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f80538b;

        /* renamed from: c  reason: collision with root package name */
        boolean f80539c;

        a(r<? super T> predicate) {
            this.f80537a = predicate;
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f80538b.cancel();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (h(t9) || this.f80539c) {
                return;
            }
            this.f80538b.request(1L);
        }

        @Override // org.reactivestreams.e
        public final void request(long n9) {
            this.f80538b.request(n9);
        }
    }

    /* compiled from: ParallelFilter.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends a<T> {

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super T> f80540d;

        b(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, r<? super T> predicate) {
            super(predicate);
            this.f80540d = actual;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (!this.f80539c) {
                try {
                    if (this.f80537a.test(t9)) {
                        return this.f80540d.h(t9);
                    }
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80539c) {
                return;
            }
            this.f80539c = true;
            this.f80540d.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80539c) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80539c = true;
            this.f80540d.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80538b, s9)) {
                this.f80538b = s9;
                this.f80540d.onSubscribe(this);
            }
        }
    }

    /* compiled from: ParallelFilter.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends a<T> {

        /* renamed from: d  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f80541d;

        c(org.reactivestreams.d<? super T> actual, r<? super T> predicate) {
            super(predicate);
            this.f80541d = actual;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (!this.f80539c) {
                try {
                    if (this.f80537a.test(t9)) {
                        this.f80541d.onNext(t9);
                        return true;
                    }
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    cancel();
                    onError(th);
                }
            }
            return false;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80539c) {
                return;
            }
            this.f80539c = true;
            this.f80541d.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80539c) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80539c = true;
            this.f80541d.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80538b, s9)) {
                this.f80538b = s9;
                this.f80541d.onSubscribe(this);
            }
        }
    }

    public d(io.reactivex.rxjava3.parallel.a<T> source, r<? super T> predicate) {
        this.f80535a = source;
        this.f80536b = predicate;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80535a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super T>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super T> dVar = subscribers[i4];
                if (dVar instanceof io.reactivex.rxjava3.internal.fuseable.c) {
                    dVarArr[i4] = new b((io.reactivex.rxjava3.internal.fuseable.c) dVar, this.f80536b);
                } else {
                    dVarArr[i4] = new c(dVar, this.f80536b);
                }
            }
            this.f80535a.X(dVarArr);
        }
    }
}
