package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableGenerate.java */
/* loaded from: classes4.dex */
public final class r1<T, S> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final q7.s<S> f77860b;

    /* renamed from: c  reason: collision with root package name */
    final q7.c<S, io.reactivex.rxjava3.core.i<T>, S> f77861c;

    /* renamed from: d  reason: collision with root package name */
    final q7.g<? super S> f77862d;

    /* compiled from: FlowableGenerate.java */
    /* loaded from: classes4.dex */
    static final class a<T, S> extends AtomicLong implements io.reactivex.rxjava3.core.i<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77863h = 7565982551505011832L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77864a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<S, ? super io.reactivex.rxjava3.core.i<T>, S> f77865b;

        /* renamed from: c  reason: collision with root package name */
        final q7.g<? super S> f77866c;

        /* renamed from: d  reason: collision with root package name */
        S f77867d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f77868e;

        /* renamed from: f  reason: collision with root package name */
        boolean f77869f;

        /* renamed from: g  reason: collision with root package name */
        boolean f77870g;

        a(org.reactivestreams.d<? super T> actual, q7.c<S, ? super io.reactivex.rxjava3.core.i<T>, S> generator, q7.g<? super S> disposeState, S initialState) {
            this.f77864a = actual;
            this.f77865b = generator;
            this.f77866c = disposeState;
            this.f77867d = initialState;
        }

        private void d(S s9) {
            try {
                this.f77866c.accept(s9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f77868e) {
                return;
            }
            this.f77868e = true;
            if (io.reactivex.rxjava3.internal.util.b.a(this, 1L) == 0) {
                S s9 = this.f77867d;
                this.f77867d = null;
                d(s9);
            }
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onComplete() {
            if (this.f77869f) {
                return;
            }
            this.f77869f = true;
            this.f77864a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onError(Throwable t9) {
            if (this.f77869f) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            if (t9 == null) {
                t9 = io.reactivex.rxjava3.internal.util.g.b("onError called with a null Throwable.");
            }
            this.f77869f = true;
            this.f77864a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onNext(T t9) {
            if (this.f77869f) {
                return;
            }
            if (this.f77870g) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t9 == null) {
                onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
            } else {
                this.f77870g = true;
                this.f77864a.onNext(t9);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9) && io.reactivex.rxjava3.internal.util.b.a(this, n9) == 0) {
                S s9 = this.f77867d;
                q7.c<S, ? super io.reactivex.rxjava3.core.i<T>, S> cVar = this.f77865b;
                do {
                    long j4 = 0;
                    while (true) {
                        if (j4 != n9) {
                            if (this.f77868e) {
                                this.f77867d = null;
                                d(s9);
                                return;
                            }
                            this.f77870g = false;
                            try {
                                s9 = cVar.apply(s9, this);
                                if (this.f77869f) {
                                    this.f77868e = true;
                                    this.f77867d = null;
                                    d(s9);
                                    return;
                                }
                                j4++;
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                this.f77868e = true;
                                this.f77867d = null;
                                onError(th);
                                d(s9);
                                return;
                            }
                        } else {
                            n9 = get();
                            if (j4 == n9) {
                                this.f77867d = s9;
                                n9 = addAndGet(-j4);
                            }
                        }
                    }
                } while (n9 != 0);
            }
        }
    }

    public r1(q7.s<S> stateSupplier, q7.c<S, io.reactivex.rxjava3.core.i<T>, S> generator, q7.g<? super S> disposeState) {
        this.f77860b = stateSupplier;
        this.f77861c = generator;
        this.f77862d = disposeState;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        try {
            s9.onSubscribe(new a(s9, this.f77861c, this.f77862d, this.f77860b.get()));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
