package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.core.v0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSwitchMapSingle.java */
/* loaded from: classes4.dex */
public final class l<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78955b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends v0<? extends R>> f78956c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f78957d;

    /* compiled from: FlowableSwitchMapSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: k  reason: collision with root package name */
        private static final long f78958k = -5402190102429853762L;

        /* renamed from: l  reason: collision with root package name */
        static final C0656a<Object> f78959l = new C0656a<>(null);

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f78960a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends v0<? extends R>> f78961b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f78962c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f78963d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f78964e = new AtomicLong();

        /* renamed from: f  reason: collision with root package name */
        final AtomicReference<C0656a<R>> f78965f = new AtomicReference<>();

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f78966g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f78967h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f78968i;

        /* renamed from: j  reason: collision with root package name */
        long f78969j;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableSwitchMapSingle.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.l$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0656a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements s0<R> {

            /* renamed from: c  reason: collision with root package name */
            private static final long f78970c = 8042919737683345351L;

            /* renamed from: a  reason: collision with root package name */
            final a<?, R> f78971a;

            /* renamed from: b  reason: collision with root package name */
            volatile R f78972b;

            C0656a(a<?, R> parent) {
                this.f78971a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78971a.c(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(R t9) {
                this.f78972b = t9;
                this.f78971a.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends v0<? extends R>> mapper, boolean delayErrors) {
            this.f78960a = downstream;
            this.f78961b = mapper;
            this.f78962c = delayErrors;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            C0656a<Object> c0656a = f78959l;
            C0656a<Object> c0656a2 = (C0656a) this.f78965f.getAndSet(c0656a);
            if (c0656a2 == null || c0656a2 == c0656a) {
                return;
            }
            c0656a2.a();
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f78960a;
            AtomicThrowable atomicThrowable = this.f78963d;
            AtomicReference<C0656a<R>> atomicReference = this.f78965f;
            AtomicLong atomicLong = this.f78964e;
            long j4 = this.f78969j;
            int i4 = 1;
            while (!this.f78968i) {
                if (atomicThrowable.get() != null && !this.f78962c) {
                    atomicThrowable.tryTerminateConsumer(dVar);
                    return;
                }
                boolean z9 = this.f78967h;
                C0656a<R> c0656a = atomicReference.get();
                boolean z10 = c0656a == null;
                if (z9 && z10) {
                    atomicThrowable.tryTerminateConsumer(dVar);
                    return;
                } else if (!z10 && c0656a.f78972b != null && j4 != atomicLong.get()) {
                    atomicReference.compareAndSet(c0656a, null);
                    dVar.onNext((R) c0656a.f78972b);
                    j4++;
                } else {
                    this.f78969j = j4;
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        void c(C0656a<R> sender, Throwable ex) {
            if (this.f78965f.compareAndSet(sender, null)) {
                if (this.f78963d.tryAddThrowableOrReport(ex)) {
                    if (!this.f78962c) {
                        this.f78966g.cancel();
                        a();
                    }
                    b();
                    return;
                }
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f78968i = true;
            this.f78966g.cancel();
            a();
            this.f78963d.tryTerminateAndReport();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78967h = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78963d.tryAddThrowableOrReport(t9)) {
                if (!this.f78962c) {
                    a();
                }
                this.f78967h = true;
                b();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            C0656a<R> c0656a;
            C0656a<R> c0656a2 = this.f78965f.get();
            if (c0656a2 != null) {
                c0656a2.a();
            }
            try {
                v0<? extends R> apply = this.f78961b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null SingleSource");
                v0<? extends R> v0Var = apply;
                C0656a<R> c0656a3 = new C0656a<>(this);
                do {
                    c0656a = this.f78965f.get();
                    if (c0656a == f78959l) {
                        return;
                    }
                } while (!this.f78965f.compareAndSet(c0656a, c0656a3));
                v0Var.d(c0656a3);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78966g.cancel();
                this.f78965f.getAndSet(f78959l);
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78966g, s9)) {
                this.f78966g = s9;
                this.f78960a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            io.reactivex.rxjava3.internal.util.b.a(this.f78964e, n9);
            b();
        }
    }

    public l(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends v0<? extends R>> mapper, boolean delayErrors) {
        this.f78955b = source;
        this.f78956c = mapper;
        this.f78957d = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f78955b.G6(new a(s9, this.f78956c, this.f78957d));
    }
}
