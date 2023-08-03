package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableDebounce.java */
/* loaded from: classes4.dex */
public final class f0<T, U> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends org.reactivestreams.c<U>> f77126c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableDebounce.java */
    /* loaded from: classes4.dex */
    public static final class a<T, U> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77127g = 6725975399620862591L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77128a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends org.reactivestreams.c<U>> f77129b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77130c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f77131d = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        volatile long f77132e;

        /* renamed from: f  reason: collision with root package name */
        boolean f77133f;

        /* compiled from: FlowableDebounce.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.f0$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0631a<T, U> extends io.reactivex.rxjava3.subscribers.b<U> {

            /* renamed from: b  reason: collision with root package name */
            final a<T, U> f77134b;

            /* renamed from: c  reason: collision with root package name */
            final long f77135c;

            /* renamed from: d  reason: collision with root package name */
            final T f77136d;

            /* renamed from: e  reason: collision with root package name */
            boolean f77137e;

            /* renamed from: f  reason: collision with root package name */
            final AtomicBoolean f77138f = new AtomicBoolean();

            C0631a(a<T, U> parent, long index, T value) {
                this.f77134b = parent;
                this.f77135c = index;
                this.f77136d = value;
            }

            void d() {
                if (this.f77138f.compareAndSet(false, true)) {
                    this.f77134b.a(this.f77135c, this.f77136d);
                }
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                if (this.f77137e) {
                    return;
                }
                this.f77137e = true;
                d();
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable t9) {
                if (this.f77137e) {
                    io.reactivex.rxjava3.plugins.a.Y(t9);
                    return;
                }
                this.f77137e = true;
                this.f77134b.onError(t9);
            }

            @Override // org.reactivestreams.d
            public void onNext(U t9) {
                if (this.f77137e) {
                    return;
                }
                this.f77137e = true;
                a();
                d();
            }
        }

        a(org.reactivestreams.d<? super T> actual, q7.o<? super T, ? extends org.reactivestreams.c<U>> debounceSelector) {
            this.f77128a = actual;
            this.f77129b = debounceSelector;
        }

        void a(long idx, T value) {
            if (idx == this.f77132e) {
                if (get() != 0) {
                    this.f77128a.onNext(value);
                    io.reactivex.rxjava3.internal.util.b.e(this, 1L);
                    return;
                }
                cancel();
                this.f77128a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77130c.cancel();
            DisposableHelper.dispose(this.f77131d);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77133f) {
                return;
            }
            this.f77133f = true;
            io.reactivex.rxjava3.disposables.f fVar = this.f77131d.get();
            if (DisposableHelper.isDisposed(fVar)) {
                return;
            }
            C0631a c0631a = (C0631a) fVar;
            if (c0631a != null) {
                c0631a.d();
            }
            DisposableHelper.dispose(this.f77131d);
            this.f77128a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            DisposableHelper.dispose(this.f77131d);
            this.f77128a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77133f) {
                return;
            }
            long j4 = this.f77132e + 1;
            this.f77132e = j4;
            io.reactivex.rxjava3.disposables.f fVar = this.f77131d.get();
            if (fVar != null) {
                fVar.dispose();
            }
            try {
                org.reactivestreams.c<U> apply = this.f77129b.apply(t9);
                Objects.requireNonNull(apply, "The publisher supplied is null");
                org.reactivestreams.c<U> cVar = apply;
                C0631a c0631a = new C0631a(this, j4, t9);
                if (this.f77131d.compareAndSet(fVar, c0631a)) {
                    cVar.i(c0631a);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                this.f77128a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77130c, s9)) {
                this.f77130c = s9;
                this.f77128a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
            }
        }
    }

    public f0(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends org.reactivestreams.c<U>> debounceSelector) {
        super(source);
        this.f77126c = debounceSelector;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(new io.reactivex.rxjava3.subscribers.e(s9), this.f77126c));
    }
}
