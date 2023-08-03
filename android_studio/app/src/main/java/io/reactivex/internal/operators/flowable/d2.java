package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableMergeWithCompletable.java */
/* loaded from: classes3.dex */
public final class d2<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.g f71689c;

    /* compiled from: FlowableMergeWithCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f71690h = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71691a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f71692b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0551a f71693c = new C0551a(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f71694d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f71695e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f71696f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f71697g;

        /* compiled from: FlowableMergeWithCompletable.java */
        /* renamed from: io.reactivex.internal.operators.flowable.d2$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0551a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71698b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f71699a;

            C0551a(a<?> aVar) {
                this.f71699a = aVar;
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f71699a.a();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f71699a.b(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }
        }

        a(org.reactivestreams.d<? super T> dVar) {
            this.f71691a = dVar;
        }

        void a() {
            this.f71697g = true;
            if (this.f71696f) {
                io.reactivex.internal.util.h.b(this.f71691a, this, this.f71694d);
            }
        }

        void b(Throwable th) {
            SubscriptionHelper.cancel(this.f71692b);
            io.reactivex.internal.util.h.d(this.f71691a, th, this, this.f71694d);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f71692b);
            DisposableHelper.dispose(this.f71693c);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f71696f = true;
            if (this.f71697g) {
                io.reactivex.internal.util.h.b(this.f71691a, this, this.f71694d);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f71693c);
            io.reactivex.internal.util.h.d(this.f71691a, th, this, this.f71694d);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            io.reactivex.internal.util.h.f(this.f71691a, t9, this, this.f71694d);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f71692b, this.f71695e, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f71692b, this.f71695e, j4);
        }
    }

    public d2(io.reactivex.j<T> jVar, io.reactivex.g gVar) {
        super(jVar);
        this.f71689c = gVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        this.f71538b.j6(aVar);
        this.f71689c.d(aVar.f71693c);
    }
}
