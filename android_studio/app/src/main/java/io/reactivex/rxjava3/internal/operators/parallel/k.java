package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: ParallelMap.java */
/* loaded from: classes4.dex */
public final class k<T, R> extends io.reactivex.rxjava3.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f80600a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends R> f80601b;

    /* compiled from: ParallelMap.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super R> f80602a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends R> f80603b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f80604c;

        /* renamed from: d  reason: collision with root package name */
        boolean f80605d;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super R> actual, q7.o<? super T, ? extends R> mapper) {
            this.f80602a = actual;
            this.f80603b = mapper;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f80604c.cancel();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f80605d) {
                return false;
            }
            try {
                R apply = this.f80603b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null value");
                return this.f80602a.h(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                onError(th);
                return false;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80605d) {
                return;
            }
            this.f80605d = true;
            this.f80602a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80605d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80605d = true;
            this.f80602a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f80605d) {
                return;
            }
            try {
                R apply = this.f80603b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null value");
                this.f80602a.onNext(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80604c, s9)) {
                this.f80604c = s9;
                this.f80602a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f80604c.request(n9);
        }
    }

    /* compiled from: ParallelMap.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> implements r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f80606a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends R> f80607b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f80608c;

        /* renamed from: d  reason: collision with root package name */
        boolean f80609d;

        b(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends R> mapper) {
            this.f80606a = actual;
            this.f80607b = mapper;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f80608c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80609d) {
                return;
            }
            this.f80609d = true;
            this.f80606a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80609d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80609d = true;
            this.f80606a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f80609d) {
                return;
            }
            try {
                R apply = this.f80607b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null value");
                this.f80606a.onNext(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80608c, s9)) {
                this.f80608c = s9;
                this.f80606a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f80608c.request(n9);
        }
    }

    public k(io.reactivex.rxjava3.parallel.a<T> source, q7.o<? super T, ? extends R> mapper) {
        this.f80600a = source;
        this.f80601b = mapper;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80600a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super R>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super R> dVar = subscribers[i4];
                if (dVar instanceof io.reactivex.rxjava3.internal.fuseable.c) {
                    dVarArr[i4] = new a((io.reactivex.rxjava3.internal.fuseable.c) dVar, this.f80601b);
                } else {
                    dVarArr[i4] = new b(dVar, this.f80601b);
                }
            }
            this.f80600a.X(dVarArr);
        }
    }
}
