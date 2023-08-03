package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatMapCompletable.java */
/* loaded from: classes4.dex */
public final class c<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78841a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f78842b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f78843c;

    /* renamed from: d  reason: collision with root package name */
    final int f78844d;

    /* compiled from: FlowableConcatMapCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: m  reason: collision with root package name */
        private static final long f78845m = 3610901111000061034L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f78846a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f78847b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorMode f78848c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f78849d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final C0651a f78850e = new C0651a(this);

        /* renamed from: f  reason: collision with root package name */
        final int f78851f;

        /* renamed from: g  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<T> f78852g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f78853h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f78854i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f78855j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f78856k;

        /* renamed from: l  reason: collision with root package name */
        int f78857l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableConcatMapCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0651a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f78858b = 5638352172918776687L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f78859a;

            C0651a(a<?> parent) {
                this.f78859a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f78859a.b();
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78859a.c(e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.d downstream, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, ErrorMode errorMode, int prefetch) {
            this.f78846a = downstream;
            this.f78847b = mapper;
            this.f78848c = errorMode;
            this.f78851f = prefetch;
            this.f78852g = new SpscArrayQueue(prefetch);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f78856k) {
                if (!this.f78854i) {
                    if (this.f78848c == ErrorMode.BOUNDARY && this.f78849d.get() != null) {
                        this.f78852g.clear();
                        this.f78849d.tryTerminateConsumer(this.f78846a);
                        return;
                    }
                    boolean z9 = this.f78855j;
                    T poll = this.f78852g.poll();
                    boolean z10 = poll == null;
                    if (z9 && z10) {
                        this.f78849d.tryTerminateConsumer(this.f78846a);
                        return;
                    } else if (!z10) {
                        int i4 = this.f78851f;
                        int i10 = i4 - (i4 >> 1);
                        int i11 = this.f78857l + 1;
                        if (i11 == i10) {
                            this.f78857l = 0;
                            this.f78853h.request(i10);
                        } else {
                            this.f78857l = i11;
                        }
                        try {
                            io.reactivex.rxjava3.core.g apply = this.f78847b.apply(poll);
                            Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                            io.reactivex.rxjava3.core.g gVar = apply;
                            this.f78854i = true;
                            gVar.d(this.f78850e);
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            this.f78852g.clear();
                            this.f78853h.cancel();
                            this.f78849d.tryAddThrowableOrReport(th);
                            this.f78849d.tryTerminateConsumer(this.f78846a);
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f78852g.clear();
        }

        void b() {
            this.f78854i = false;
            a();
        }

        void c(Throwable ex) {
            if (this.f78849d.tryAddThrowableOrReport(ex)) {
                if (this.f78848c == ErrorMode.IMMEDIATE) {
                    this.f78853h.cancel();
                    this.f78849d.tryTerminateConsumer(this.f78846a);
                    if (getAndIncrement() == 0) {
                        this.f78852g.clear();
                        return;
                    }
                    return;
                }
                this.f78854i = false;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78856k = true;
            this.f78853h.cancel();
            this.f78850e.a();
            this.f78849d.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f78852g.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78856k;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78855j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78849d.tryAddThrowableOrReport(t9)) {
                if (this.f78848c == ErrorMode.IMMEDIATE) {
                    this.f78850e.a();
                    this.f78849d.tryTerminateConsumer(this.f78846a);
                    if (getAndIncrement() == 0) {
                        this.f78852g.clear();
                        return;
                    }
                    return;
                }
                this.f78855j = true;
                a();
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78852g.offer(t9)) {
                a();
                return;
            }
            this.f78853h.cancel();
            onError(new MissingBackpressureException("Queue full?!"));
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78853h, s9)) {
                this.f78853h = s9;
                this.f78846a.onSubscribe(this);
                s9.request(this.f78851f);
            }
        }
    }

    public c(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, ErrorMode errorMode, int prefetch) {
        this.f78841a = source;
        this.f78842b = mapper;
        this.f78843c = errorMode;
        this.f78844d = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f78841a.G6(new a(observer, this.f78842b, this.f78843c, this.f78844d));
    }
}
