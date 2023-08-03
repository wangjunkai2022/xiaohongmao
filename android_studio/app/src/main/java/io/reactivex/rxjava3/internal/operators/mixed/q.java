package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableConcatMapCompletable.java */
/* loaded from: classes4.dex */
public final class q<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final g0<T> f78990a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f78991b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f78992c;

    /* renamed from: d  reason: collision with root package name */
    final int f78993d;

    /* compiled from: ObservableConcatMapCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: l  reason: collision with root package name */
        private static final long f78994l = 3610901111000061034L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f78995a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f78996b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorMode f78997c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f78998d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final C0657a f78999e = new C0657a(this);

        /* renamed from: f  reason: collision with root package name */
        final int f79000f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f79001g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79002h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f79003i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f79004j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f79005k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableConcatMapCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.q$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0657a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79006b = 5638352172918776687L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f79007a;

            C0657a(a<?> parent) {
                this.f79007a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f79007a.b();
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f79007a.c(e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.replace(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.d downstream, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, ErrorMode errorMode, int prefetch) {
            this.f78995a = downstream;
            this.f78996b = mapper;
            this.f78997c = errorMode;
            this.f79000f = prefetch;
        }

        void a() {
            boolean z9;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicThrowable atomicThrowable = this.f78998d;
            ErrorMode errorMode = this.f78997c;
            while (!this.f79005k) {
                if (!this.f79003i) {
                    if (errorMode == ErrorMode.BOUNDARY && atomicThrowable.get() != null) {
                        this.f79005k = true;
                        this.f79001g.clear();
                        atomicThrowable.tryTerminateConsumer(this.f78995a);
                        return;
                    }
                    boolean z10 = this.f79004j;
                    io.reactivex.rxjava3.core.g gVar = null;
                    try {
                        T poll = this.f79001g.poll();
                        if (poll != null) {
                            io.reactivex.rxjava3.core.g apply = this.f78996b.apply(poll);
                            Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                            gVar = apply;
                            z9 = false;
                        } else {
                            z9 = true;
                        }
                        if (z10 && z9) {
                            this.f79005k = true;
                            atomicThrowable.tryTerminateConsumer(this.f78995a);
                            return;
                        } else if (!z9) {
                            this.f79003i = true;
                            gVar.d(this.f78999e);
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f79005k = true;
                        this.f79001g.clear();
                        this.f79002h.dispose();
                        atomicThrowable.tryAddThrowableOrReport(th);
                        atomicThrowable.tryTerminateConsumer(this.f78995a);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f79001g.clear();
        }

        void b() {
            this.f79003i = false;
            a();
        }

        void c(Throwable ex) {
            if (this.f78998d.tryAddThrowableOrReport(ex)) {
                if (this.f78997c == ErrorMode.IMMEDIATE) {
                    this.f79005k = true;
                    this.f79002h.dispose();
                    this.f78998d.tryTerminateConsumer(this.f78995a);
                    if (getAndIncrement() == 0) {
                        this.f79001g.clear();
                        return;
                    }
                    return;
                }
                this.f79003i = false;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79005k = true;
            this.f79002h.dispose();
            this.f78999e.a();
            this.f78998d.tryTerminateAndReport();
            if (getAndIncrement() == 0) {
                this.f79001g.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79005k;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79004j = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f78998d.tryAddThrowableOrReport(t9)) {
                if (this.f78997c == ErrorMode.IMMEDIATE) {
                    this.f79005k = true;
                    this.f78999e.a();
                    this.f78998d.tryTerminateConsumer(this.f78995a);
                    if (getAndIncrement() == 0) {
                        this.f79001g.clear();
                        return;
                    }
                    return;
                }
                this.f79004j = true;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (t9 != null) {
                this.f79001g.offer(t9);
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79002h, d4)) {
                this.f79002h = d4;
                if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                    io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f79001g = lVar;
                        this.f79004j = true;
                        this.f78995a.onSubscribe(this);
                        a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f79001g = lVar;
                        this.f78995a.onSubscribe(this);
                        return;
                    }
                }
                this.f79001g = new io.reactivex.rxjava3.internal.queue.b(this.f79000f);
                this.f78995a.onSubscribe(this);
            }
        }
    }

    public q(g0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, ErrorMode errorMode, int prefetch) {
        this.f78990a = source;
        this.f78991b = mapper;
        this.f78992c = errorMode;
        this.f78993d = prefetch;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        if (w.a(this.f78990a, this.f78991b, observer)) {
            return;
        }
        this.f78990a.a(new a(observer, this.f78991b, this.f78992c, this.f78993d));
    }
}
