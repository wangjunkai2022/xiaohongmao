package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.b0;
import io.reactivex.rxjava3.core.y;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSwitchMapMaybe.java */
/* loaded from: classes4.dex */
public final class j<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78934b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends b0<? extends R>> f78935c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f78936d;

    /* compiled from: FlowableSwitchMapMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: k  reason: collision with root package name */
        private static final long f78937k = -5402190102429853762L;

        /* renamed from: l  reason: collision with root package name */
        static final C0655a<Object> f78938l = new C0655a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78939a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends b0<? extends R>> f78940b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f78941c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f78942d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f78943e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<C0655a<R>> f78944f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f78945g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f78946h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f78947i;

        /* renamed from: j  reason: collision with root package name */
        long f78948j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableSwitchMapMaybe.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.j$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0655a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements y<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f78949c = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f78950a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f78951b;

            C0655a(a<?, R> parent) {
                this.f78950a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f78950a.c(this);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78950a.d(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(R t9) {
                this.f78951b = t9;
                this.f78950a.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends b0<? extends R>> mapper, boolean delayErrors) {
            this.f78939a = downstream;
            this.f78940b = mapper;
            this.f78941c = delayErrors;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0655a<Object> c0655a = f78938l;
            C0655a<Object> c0655a2 = (C0655a) this.f78944f.getAndSet(c0655a);
            if (c0655a2 == null || c0655a2 == c0655a) {
                return;
            }
            c0655a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f78939a;
            AtomicThrowable atomicThrowable = this.f78942d;
            AtomicReference<C0655a<R>> atomicReference = this.f78944f;
            AtomicLong atomicLong = this.f78943e;
            long j4 = this.f78948j;
            int i4 = 1;
            while (!this.f78947i) {
                if (atomicThrowable.get() != null && !this.f78941c) {
                    atomicThrowable.tryTerminateConsumer(dVar);
                    return;
                }
                boolean z9 = this.f78946h;
                C0655a<R> c0655a = atomicReference.get();
                boolean z10 = c0655a == null;
                if (z9 && z10) {
                    atomicThrowable.tryTerminateConsumer(dVar);
                    return;
                } else if (!z10 && c0655a.f78951b != null && j4 != atomicLong.get()) {
                    atomicReference.compareAndSet(c0655a, null);
                    dVar.onNext((R) c0655a.f78951b);
                    j4++;
                } else {
                    this.f78948j = j4;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0655a<R> sender) {
            if (this.f78944f.compareAndSet(sender, null)) {
                b();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78947i = true;
            this.f78945g.cancel();
            a();
            this.f78942d.tryTerminateAndReport();
        }

        void d(C0655a<R> sender, Throwable ex) {
            if (this.f78944f.compareAndSet(sender, null)) {
                if (this.f78942d.tryAddThrowableOrReport(ex)) {
                    if (!this.f78941c) {
                        this.f78945g.cancel();
                        a();
                    }
                    b();
                    return;
                }
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78946h = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78942d.tryAddThrowableOrReport(t9)) {
                if (!this.f78941c) {
                    a();
                }
                this.f78946h = true;
                b();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            C0655a<R> c0655a;
            C0655a<R> c0655a2 = this.f78944f.get();
            if (c0655a2 != null) {
                c0655a2.a();
            }
            try {
                b0<? extends R> apply = this.f78940b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null MaybeSource");
                b0<? extends R> b0Var = apply;
                C0655a<R> c0655a3 = new C0655a<>(this);
                do {
                    c0655a = this.f78944f.get();
                    if (c0655a == f78938l) {
                        return;
                    }
                } while (!this.f78944f.compareAndSet(c0655a, c0655a3));
                b0Var.b(c0655a3);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78945g.cancel();
                this.f78944f.getAndSet(f78938l);
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78945g, s9)) {
                this.f78945g = s9;
                this.f78939a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            io.reactivex.rxjava3.internal.util.b.a(this.f78943e, n9);
            b();
        }
    }

    public j(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends b0<? extends R>> mapper, boolean delayErrors) {
        this.f78934b = source;
        this.f78935c = mapper;
        this.f78936d = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78934b.G6(new a(s9, this.f78935c, this.f78936d));
    }
}
