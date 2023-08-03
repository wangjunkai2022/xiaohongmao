package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableGenerate.java */
/* loaded from: classes3.dex */
public final class m1<T, S> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<S> f72252b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<S, io.reactivex.i<T>, S> f72253c;

    /* renamed from: d  reason: collision with root package name */
    final n7.g<? super S> f72254d;

    /* compiled from: FlowableGenerate.java */
    /* loaded from: classes3.dex */
    static final class a<T, S> extends AtomicLong implements io.reactivex.i<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f72255h = 7565982551505011832L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72256a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<S, ? super io.reactivex.i<T>, S> f72257b;

        /* renamed from: c  reason: collision with root package name */
        final n7.g<? super S> f72258c;

        /* renamed from: d  reason: collision with root package name */
        S f72259d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f72260e;

        /* renamed from: f  reason: collision with root package name */
        boolean f72261f;

        /* renamed from: g  reason: collision with root package name */
        boolean f72262g;

        a(org.reactivestreams.d<? super T> dVar, n7.c<S, ? super io.reactivex.i<T>, S> cVar, n7.g<? super S> gVar, S s9) {
            this.f72256a = dVar;
            this.f72257b = cVar;
            this.f72258c = gVar;
            this.f72259d = s9;
        }

        private void d(S s9) {
            try {
                this.f72258c.accept(s9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72260e) {
                return;
            }
            this.f72260e = true;
            if (io.reactivex.internal.util.b.a(this, 1L) == 0) {
                S s9 = this.f72259d;
                this.f72259d = null;
                d(s9);
            }
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (this.f72261f) {
                return;
            }
            this.f72261f = true;
            this.f72256a.onComplete();
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (this.f72261f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f72261f = true;
            this.f72256a.onError(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t9) {
            if (this.f72261f) {
                return;
            }
            if (this.f72262g) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t9 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f72262g = true;
                this.f72256a.onNext(t9);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4) && io.reactivex.internal.util.b.a(this, j4) == 0) {
                S s9 = this.f72259d;
                n7.c<S, ? super io.reactivex.i<T>, S> cVar = this.f72257b;
                do {
                    long j10 = 0;
                    while (true) {
                        if (j10 != j4) {
                            if (this.f72260e) {
                                this.f72259d = null;
                                d(s9);
                                return;
                            }
                            this.f72262g = false;
                            try {
                                s9 = cVar.apply(s9, this);
                                if (this.f72261f) {
                                    this.f72260e = true;
                                    this.f72259d = null;
                                    d(s9);
                                    return;
                                }
                                j10++;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                this.f72260e = true;
                                this.f72259d = null;
                                onError(th);
                                d(s9);
                                return;
                            }
                        } else {
                            j4 = get();
                            if (j10 == j4) {
                                this.f72259d = s9;
                                j4 = addAndGet(-j10);
                            }
                        }
                    }
                } while (j4 != 0);
            }
        }
    }

    public m1(Callable<S> callable, n7.c<S, io.reactivex.i<T>, S> cVar, n7.g<? super S> gVar) {
        this.f72252b = callable;
        this.f72253c = cVar;
        this.f72254d = gVar;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        try {
            dVar.onSubscribe(new a(dVar, this.f72253c, this.f72254d, this.f72252b.call()));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
