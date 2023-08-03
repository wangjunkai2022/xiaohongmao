package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableTakeUntil.java */
/* loaded from: classes4.dex */
public final class i4<T, U> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<? extends U> f77363c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableTakeUntil.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f77364f = -4945480365982832967L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77365a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicLong f77366b = new AtomicLong();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77367c = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final a<T>.C0635a f77369e = new C0635a();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f77368d = new AtomicThrowable();

        /* compiled from: FlowableTakeUntil.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.i4$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0635a extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f77370b = -3592821756711087922L;

            C0635a() {
            }

            @Override // org.reactivestreams.d
            public void onComplete() {
                SubscriptionHelper.cancel(a.this.f77367c);
                a aVar = a.this;
                io.reactivex.rxjava3.internal.util.h.b(aVar.f77365a, aVar, aVar.f77368d);
            }

            @Override // org.reactivestreams.d
            public void onError(Throwable t9) {
                SubscriptionHelper.cancel(a.this.f77367c);
                a aVar = a.this;
                io.reactivex.rxjava3.internal.util.h.d(aVar.f77365a, t9, aVar, aVar.f77368d);
            }

            @Override // org.reactivestreams.d
            public void onNext(Object t9) {
                SubscriptionHelper.cancel(this);
                onComplete();
            }

            @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
            public void onSubscribe(org.reactivestreams.e s9) {
                SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
            }
        }

        a(org.reactivestreams.d<? super T> downstream) {
            this.f77365a = downstream;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f77367c);
            SubscriptionHelper.cancel(this.f77369e);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            SubscriptionHelper.cancel(this.f77369e);
            io.reactivex.rxjava3.internal.util.h.b(this.f77365a, this, this.f77368d);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            SubscriptionHelper.cancel(this.f77369e);
            io.reactivex.rxjava3.internal.util.h.d(this.f77365a, t9, this, this.f77368d);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            io.reactivex.rxjava3.internal.util.h.f(this.f77365a, t9, this, this.f77368d);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f77367c, this.f77366b, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this.f77367c, this.f77366b, n9);
        }
    }

    public i4(io.reactivex.rxjava3.core.m<T> source, org.reactivestreams.c<? extends U> other) {
        super(source);
        this.f77363c = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> child) {
        a aVar = new a(child);
        child.onSubscribe(aVar);
        this.f77363c.i(aVar.f77369e);
        this.f76811b.G6(aVar);
    }
}
