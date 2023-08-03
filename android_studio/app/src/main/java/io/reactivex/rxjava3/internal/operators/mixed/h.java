package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableSwitchMapCompletable.java */
/* loaded from: classes4.dex */
public final class h<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f78918a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f78919b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f78920c;

    /* compiled from: FlowableSwitchMapCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: h  reason: collision with root package name */
        static final C0654a f78921h = new C0654a(null);

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f78922a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f78923b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f78924c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f78925d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0654a> f78926e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f78927f;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f78928g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableSwitchMapCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.h$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0654a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f78929b = -8003404460084760287L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f78930a;

            C0654a(a<?> parent) {
                this.f78930a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f78930a.b(this);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78930a.c(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.rxjava3.core.d downstream, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors) {
            this.f78922a = downstream;
            this.f78923b = mapper;
            this.f78924c = delayErrors;
        }

        void a() {
            AtomicReference<C0654a> atomicReference = this.f78926e;
            C0654a c0654a = f78921h;
            C0654a andSet = atomicReference.getAndSet(c0654a);
            if (andSet == null || andSet == c0654a) {
                return;
            }
            andSet.a();
        }

        void b(C0654a sender) {
            if (this.f78926e.compareAndSet(sender, null) && this.f78927f) {
                this.f78925d.tryTerminateConsumer(this.f78922a);
            }
        }

        void c(C0654a sender, Throwable error) {
            if (this.f78926e.compareAndSet(sender, null)) {
                if (this.f78925d.tryAddThrowableOrReport(error)) {
                    if (this.f78924c) {
                        if (this.f78927f) {
                            this.f78925d.tryTerminateConsumer(this.f78922a);
                            return;
                        }
                        return;
                    }
                    this.f78928g.cancel();
                    a();
                    this.f78925d.tryTerminateConsumer(this.f78922a);
                    return;
                }
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(error);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78928g.cancel();
            a();
            this.f78925d.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78926e.get() == f78921h;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78927f = true;
            if (this.f78926e.get() == null) {
                this.f78925d.tryTerminateConsumer(this.f78922a);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78925d.tryAddThrowableOrReport(t9)) {
                if (this.f78924c) {
                    onComplete();
                    return;
                }
                a();
                this.f78925d.tryTerminateConsumer(this.f78922a);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            C0654a c0654a;
            try {
                io.reactivex.rxjava3.core.g apply = this.f78923b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                io.reactivex.rxjava3.core.g gVar = apply;
                C0654a c0654a2 = new C0654a(this);
                do {
                    c0654a = this.f78926e.get();
                    if (c0654a == f78921h) {
                        return;
                    }
                } while (!this.f78926e.compareAndSet(c0654a, c0654a2));
                if (c0654a != null) {
                    c0654a.a();
                }
                gVar.d(c0654a2);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f78928g.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f78928g, s9)) {
                this.f78928g = s9;
                this.f78922a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public h(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors) {
        this.f78918a = source;
        this.f78919b = mapper;
        this.f78920c = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f78918a.G6(new a(observer, this.f78919b, this.f78920c));
    }
}
