package io.reactivex.internal.operators.flowable;

import io.reactivex.h0;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: FlowableDelay.java */
/* loaded from: classes3.dex */
public final class j0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final long f72079c;

    /* renamed from: d  reason: collision with root package name */
    final TimeUnit f72080d;

    /* renamed from: e  reason: collision with root package name */
    final io.reactivex.h0 f72081e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f72082f;

    /* compiled from: FlowableDelay.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72083a;

        /* renamed from: b  reason: collision with root package name */
        final long f72084b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f72085c;

        /* renamed from: d  reason: collision with root package name */
        final h0.c f72086d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f72087e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f72088f;

        /* compiled from: FlowableDelay.java */
        /* renamed from: io.reactivex.internal.operators.flowable.j0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class RunnableC0557a implements Runnable {
            RunnableC0557a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f72083a.onComplete();
                } finally {
                    a.this.f72086d.dispose();
                }
            }
        }

        /* compiled from: FlowableDelay.java */
        /* loaded from: classes3.dex */
        final class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final Throwable f72090a;

            b(Throwable th) {
                this.f72090a = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    a.this.f72083a.onError(this.f72090a);
                } finally {
                    a.this.f72086d.dispose();
                }
            }
        }

        /* compiled from: FlowableDelay.java */
        /* loaded from: classes3.dex */
        final class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            private final T f72092a;

            c(T t9) {
                this.f72092a = t9;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f72083a.onNext((T) this.f72092a);
            }
        }

        a(org.reactivestreams.d<? super T> dVar, long j4, TimeUnit timeUnit, h0.c cVar, boolean z9) {
            this.f72083a = dVar;
            this.f72084b = j4;
            this.f72085c = timeUnit;
            this.f72086d = cVar;
            this.f72087e = z9;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72088f.cancel();
            this.f72086d.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72086d.c(new RunnableC0557a(), this.f72084b, this.f72085c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f72086d.c(new b(th), this.f72087e ? this.f72084b : 0L, this.f72085c);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72086d.c(new c(t9), this.f72084b, this.f72085c);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72088f, eVar)) {
                this.f72088f = eVar;
                this.f72083a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72088f.request(j4);
        }
    }

    public j0(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z9) {
        super(jVar);
        this.f72079c = j4;
        this.f72080d = timeUnit;
        this.f72081e = h0Var;
        this.f72082f = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(this.f72082f ? dVar : new io.reactivex.subscribers.e(dVar), this.f72079c, this.f72080d, this.f72081e.d(), this.f72082f));
    }
}
