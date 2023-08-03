package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.Optional;

/* compiled from: ParallelMapOptional.java */
/* loaded from: classes4.dex */
public final class c0<T, R> extends io.reactivex.rxjava3.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f76266a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, Optional<? extends R>> f76267b;

    /* compiled from: ParallelMapOptional.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super R> f76268a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, Optional<? extends R>> f76269b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f76270c;

        /* renamed from: d  reason: collision with root package name */
        boolean f76271d;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super R> actual, q7.o<? super T, Optional<? extends R>> mapper) {
            this.f76268a = actual;
            this.f76269b = mapper;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76270c.cancel();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f76271d) {
                return false;
            }
            try {
                Optional<? extends R> apply = this.f76269b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null value");
                Optional<? extends R> optional = apply;
                return optional.isPresent() && this.f76268a.h((R) optional.get());
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                onError(th);
                return false;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76271d) {
                return;
            }
            this.f76271d = true;
            this.f76268a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76271d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76271d = true;
            this.f76268a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f76270c.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76270c, s9)) {
                this.f76270c = s9;
                this.f76268a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f76270c.request(n9);
        }
    }

    /* compiled from: ParallelMapOptional.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f76272a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, Optional<? extends R>> f76273b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f76274c;

        /* renamed from: d  reason: collision with root package name */
        boolean f76275d;

        b(org.reactivestreams.d<? super R> actual, q7.o<? super T, Optional<? extends R>> mapper) {
            this.f76272a = actual;
            this.f76273b = mapper;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76274c.cancel();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f76275d) {
                return true;
            }
            try {
                Optional<? extends R> apply = this.f76273b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Optional");
                Optional<? extends R> optional = apply;
                if (optional.isPresent()) {
                    this.f76272a.onNext((R) optional.get());
                    return true;
                }
                return false;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                onError(th);
                return true;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76275d) {
                return;
            }
            this.f76275d = true;
            this.f76272a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76275d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76275d = true;
            this.f76272a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f76274c.request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76274c, s9)) {
                this.f76274c = s9;
                this.f76272a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f76274c.request(n9);
        }
    }

    public c0(io.reactivex.rxjava3.parallel.a<T> source, q7.o<? super T, Optional<? extends R>> mapper) {
        this.f76266a = source;
        this.f76267b = mapper;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f76266a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super R>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                org.reactivestreams.d<? super R> dVar = subscribers[i4];
                if (dVar instanceof io.reactivex.rxjava3.internal.fuseable.c) {
                    dVarArr[i4] = new a((io.reactivex.rxjava3.internal.fuseable.c) dVar, this.f76267b);
                } else {
                    dVarArr[i4] = new b(dVar, this.f76267b);
                }
            }
            this.f76266a.X(dVarArr);
        }
    }
}
