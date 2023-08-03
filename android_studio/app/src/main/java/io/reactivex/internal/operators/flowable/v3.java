package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSkipUntil.java */
/* loaded from: classes3.dex */
public final class v3<T, U> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<U> f72870c;

    /* compiled from: FlowableSkipUntil.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72871g = -6270983465606289181L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72872a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72873b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicLong f72874c = new AtomicLong();

        /* renamed from: d  reason: collision with root package name */
        final a<T>.C0561a f72875d = new C0561a();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f72876e = new AtomicThrowable();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f72877f;

        /* compiled from: FlowableSkipUntil.java */
        /* renamed from: io.reactivex.internal.operators.flowable.v3$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0561a extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f72878b = -5592042965931999169L;

            C0561a() {
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                a.this.f72877f = true;
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable th) {
                SubscriptionHelper.cancel(a.this.f72873b);
                a aVar = a.this;
                io.reactivex.internal.util.h.d(aVar.f72872a, th, aVar, aVar.f72876e);
            }

            @Override // org.reactivestreams.d
            public void onNext(Object obj) {
                a.this.f72877f = true;
                get().cancel();
            }

            @Override // io.reactivex.o, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e eVar) {
                SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
            }
        }

        a(org.reactivestreams.d<? super T> dVar) {
            this.f72872a = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f72873b);
            SubscriptionHelper.cancel(this.f72875d);
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (this.f72877f) {
                io.reactivex.internal.util.h.f(this.f72872a, t9, this, this.f72876e);
                return true;
            }
            return false;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f72875d);
            io.reactivex.internal.util.h.b(this.f72872a, this, this.f72876e);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f72875d);
            io.reactivex.internal.util.h.d(this.f72872a, th, this, this.f72876e);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9)) {
                return;
            }
            this.f72873b.get().request(1L);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f72873b, this.f72874c, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f72873b, this.f72874c, j4);
        }
    }

    public v3(io.reactivex.j<T> jVar, org.reactivestreams.c<U> cVar) {
        super(jVar);
        this.f72870c = cVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        this.f72870c.i(aVar.f72875d);
        this.f71538b.j6(aVar);
    }
}
