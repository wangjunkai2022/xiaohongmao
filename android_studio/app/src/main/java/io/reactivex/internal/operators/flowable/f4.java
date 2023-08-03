package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableTakeUntil.java */
/* loaded from: classes3.dex */
public final class f4<T, U> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends U> f71907c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTakeUntil.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f71908f = -4945480365982832967L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71909a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f71910b = new AtomicLong();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f71911c = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final a<T>.C0555a f71913e = new C0555a();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f71912d = new AtomicThrowable();

        /* compiled from: FlowableTakeUntil.java */
        /* renamed from: io.reactivex.internal.operators.flowable.f4$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0555a extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f71914b = -3592821756711087922L;

            C0555a() {
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                SubscriptionHelper.cancel(a.this.f71911c);
                a aVar = a.this;
                io.reactivex.internal.util.h.b(aVar.f71909a, aVar, aVar.f71912d);
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable th) {
                SubscriptionHelper.cancel(a.this.f71911c);
                a aVar = a.this;
                io.reactivex.internal.util.h.d(aVar.f71909a, th, aVar, aVar.f71912d);
            }

            @Override // org.reactivestreams.d
            public void onNext(Object obj) {
                SubscriptionHelper.cancel(this);
                onComplete();
            }

            @Override // io.reactivex.o, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e eVar) {
                SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
            }
        }

        a(org.reactivestreams.d<? super T> dVar) {
            this.f71909a = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f71911c);
            SubscriptionHelper.cancel(this.f71913e);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f71913e);
            io.reactivex.internal.util.h.b(this.f71909a, this, this.f71912d);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            SubscriptionHelper.cancel(this.f71913e);
            io.reactivex.internal.util.h.d(this.f71909a, th, this, this.f71912d);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            io.reactivex.internal.util.h.f(this.f71909a, t9, this, this.f71912d);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f71911c, this.f71910b, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f71911c, this.f71910b, j4);
        }
    }

    public f4(io.reactivex.j<T> jVar, org.reactivestreams.c<? extends U> cVar) {
        super(jVar);
        this.f71907c = cVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(dVar);
        dVar.onSubscribe(aVar);
        this.f71907c.i(aVar.f71913e);
        this.f71538b.j6(aVar);
    }
}
