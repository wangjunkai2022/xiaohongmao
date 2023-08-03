package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableMergeWithCompletable.java */
/* loaded from: classes4.dex */
public final class h2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f77284c;

    /* compiled from: FlowableMergeWithCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77285h = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77286a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f77287b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0632a f77288c = new C0632a(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f77289d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f77290e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f77291f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f77292g;

        /* compiled from: FlowableMergeWithCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.flowable.h2$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0632a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f77293b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f77294a;

            C0632a(a<?> parent) {
                this.f77294a = parent;
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f77294a.a();
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f77294a.b(e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(org.reactivestreams.d<? super T> downstream) {
            this.f77286a = downstream;
        }

        void a() {
            this.f77292g = true;
            if (this.f77291f) {
                io.reactivex.rxjava3.internal.util.h.b(this.f77286a, this, this.f77289d);
            }
        }

        void b(Throwable ex) {
            SubscriptionHelper.cancel(this.f77287b);
            io.reactivex.rxjava3.internal.util.h.d(this.f77286a, ex, this, this.f77289d);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f77287b);
            DisposableHelper.dispose(this.f77288c);
            this.f77289d.tryTerminateAndReport();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77291f = true;
            if (this.f77292g) {
                io.reactivex.rxjava3.internal.util.h.b(this.f77286a, this, this.f77289d);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable ex) {
            DisposableHelper.dispose(this.f77288c);
            io.reactivex.rxjava3.internal.util.h.d(this.f77286a, ex, this, this.f77289d);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            io.reactivex.rxjava3.internal.util.h.f(this.f77286a, t9, this, this.f77289d);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f77287b, this.f77290e, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this.f77287b, this.f77290e, n9);
        }
    }

    public h2(io.reactivex.rxjava3.core.m<T> source, io.reactivex.rxjava3.core.g other) {
        super(source);
        this.f77284c = other;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> subscriber) {
        a aVar = new a(subscriber);
        subscriber.onSubscribe(aVar);
        this.f76811b.G6(aVar);
        this.f77284c.d(aVar.f77288c);
    }
}
