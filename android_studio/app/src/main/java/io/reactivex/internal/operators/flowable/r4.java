package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: FlowableUsing.java */
/* loaded from: classes3.dex */
public final class r4<T, D> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Callable<? extends D> f72591b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super D, ? extends org.reactivestreams.c<? extends T>> f72592c;

    /* renamed from: d  reason: collision with root package name */
    final n7.g<? super D> f72593d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f72594e;

    /* compiled from: FlowableUsing.java */
    /* loaded from: classes3.dex */
    static final class a<T, D> extends AtomicBoolean implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f72595f = 5904473792286235046L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72596a;

        /* renamed from: b  reason: collision with root package name */
        final D f72597b;

        /* renamed from: c  reason: collision with root package name */
        final n7.g<? super D> f72598c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f72599d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f72600e;

        a(org.reactivestreams.d<? super T> dVar, D d4, n7.g<? super D> gVar, boolean z9) {
            this.f72596a = dVar;
            this.f72597b = d4;
            this.f72598c = gVar;
            this.f72599d = z9;
        }

        void a() {
            if (compareAndSet(false, true)) {
                try {
                    this.f72598c.accept((D) this.f72597b);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            a();
            this.f72600e.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72599d) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f72598c.accept((D) this.f72597b);
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f72596a.onError(th);
                        return;
                    }
                }
                this.f72600e.cancel();
                this.f72596a.onComplete();
                return;
            }
            this.f72596a.onComplete();
            this.f72600e.cancel();
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72599d) {
                Throwable th2 = null;
                if (compareAndSet(false, true)) {
                    try {
                        this.f72598c.accept((D) this.f72597b);
                    } catch (Throwable th3) {
                        th2 = th3;
                        io.reactivex.exceptions.a.b(th2);
                    }
                }
                this.f72600e.cancel();
                if (th2 != null) {
                    this.f72596a.onError(new CompositeException(th, th2));
                    return;
                } else {
                    this.f72596a.onError(th);
                    return;
                }
            }
            this.f72596a.onError(th);
            this.f72600e.cancel();
            a();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72596a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72600e, eVar)) {
                this.f72600e = eVar;
                this.f72596a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72600e.request(j4);
        }
    }

    public r4(Callable<? extends D> callable, n7.o<? super D, ? extends org.reactivestreams.c<? extends T>> oVar, n7.g<? super D> gVar, boolean z9) {
        this.f72591b = callable;
        this.f72592c = oVar;
        this.f72593d = gVar;
        this.f72594e = z9;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        try {
            D call = this.f72591b.call();
            try {
                ((org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72592c.apply(call), "The sourceSupplier returned a null Publisher")).i(new a(dVar, call, this.f72593d, this.f72594e));
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                try {
                    this.f72593d.accept(call);
                    EmptySubscription.error(th, dVar);
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    EmptySubscription.error(new CompositeException(th, th2), dVar);
                }
            }
        } catch (Throwable th3) {
            io.reactivex.exceptions.a.b(th3);
            EmptySubscription.error(th3, dVar);
        }
    }
}
