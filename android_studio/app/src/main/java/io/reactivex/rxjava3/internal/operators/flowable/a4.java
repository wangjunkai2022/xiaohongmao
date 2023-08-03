package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSubscribeOn.java */
/* loaded from: classes4.dex */
public final class a4<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f76842c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f76843d;

    /* compiled from: FlowableSubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<Thread> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, Runnable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f76844g = 8094547886072529208L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f76845a;

        /* renamed from: b  reason: collision with root package name */
        final o0.c f76846b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f76847c = new AtomicReference<>();

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f76848d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        final boolean f76849e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.c<T> f76850f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableSubscribeOn.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.a4$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class RunnableC0626a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final org.reactivestreams.e f76851a;

            /* renamed from: b  reason: collision with root package name */
            final long f76852b;

            RunnableC0626a(org.reactivestreams.e s9, long n9) {
                this.f76851a = s9;
                this.f76852b = n9;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f76851a.request(this.f76852b);
            }
        }

        a(org.reactivestreams.d<? super T> actual, o0.c worker, org.reactivestreams.c<T> source, boolean requestOn) {
            this.f76845a = actual;
            this.f76846b = worker;
            this.f76850f = source;
            this.f76849e = !requestOn;
        }

        void a(final long n9, final org.reactivestreams.e s9) {
            if (!this.f76849e && Thread.currentThread() != get()) {
                this.f76846b.b(new RunnableC0626a(s9, n9));
            } else {
                s9.request(n9);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f76847c);
            this.f76846b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f76845a.onComplete();
            this.f76846b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f76845a.onError(t9);
            this.f76846b.dispose();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f76845a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this.f76847c, s9)) {
                long andSet = this.f76848d.getAndSet(0L);
                if (andSet != 0) {
                    a(andSet, s9);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(final long n9) {
            if (SubscriptionHelper.validate(n9)) {
                org.reactivestreams.e eVar = this.f76847c.get();
                if (eVar != null) {
                    a(n9, eVar);
                    return;
                }
                io.reactivex.rxjava3.internal.util.b.a(this.f76848d, n9);
                org.reactivestreams.e eVar2 = this.f76847c.get();
                if (eVar2 != null) {
                    long andSet = this.f76848d.getAndSet(0L);
                    if (andSet != 0) {
                        a(andSet, eVar2);
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            lazySet(Thread.currentThread());
            org.reactivestreams.c<T> cVar = this.f76850f;
            this.f76850f = null;
            cVar.i(this);
        }
    }

    public a4(io.reactivex.rxjava3.core.m<T> source, io.reactivex.rxjava3.core.o0 scheduler, boolean nonScheduledRequests) {
        super(source);
        this.f76842c = scheduler;
        this.f76843d = nonScheduledRequests;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(final org.reactivestreams.d<? super T> s9) {
        o0.c d4 = this.f76842c.d();
        a aVar = new a(s9, d4, this.f76811b, this.f76843d);
        s9.onSubscribe(aVar);
        d4.b(aVar);
    }
}
