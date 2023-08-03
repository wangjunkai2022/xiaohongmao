package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableMergeWithCompletable.java */
/* loaded from: classes4.dex */
public final class c2<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f79258b;

    /* compiled from: ObservableMergeWithCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: g  reason: collision with root package name */
        private static final long f79259g = -4592979584110982903L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79260a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79261b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final C0664a f79262c = new C0664a(this);

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f79263d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f79264e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f79265f;

        /* compiled from: ObservableMergeWithCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.c2$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0664a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79266b = -2935427570954647017L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f79267a;

            C0664a(a<?> parent) {
                this.f79267a = parent;
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f79267a.a();
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f79267a.b(e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f79260a = downstream;
        }

        void a() {
            this.f79265f = true;
            if (this.f79264e) {
                io.reactivex.rxjava3.internal.util.h.a(this.f79260a, this, this.f79263d);
            }
        }

        void b(Throwable ex) {
            DisposableHelper.dispose(this.f79261b);
            io.reactivex.rxjava3.internal.util.h.c(this.f79260a, ex, this, this.f79263d);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f79261b);
            DisposableHelper.dispose(this.f79262c);
            this.f79263d.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f79261b.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79264e = true;
            if (this.f79265f) {
                io.reactivex.rxjava3.internal.util.h.a(this.f79260a, this, this.f79263d);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable ex) {
            DisposableHelper.dispose(this.f79262c);
            io.reactivex.rxjava3.internal.util.h.c(this.f79260a, ex, this, this.f79263d);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            io.reactivex.rxjava3.internal.util.h.e(this.f79260a, t9, this, this.f79263d);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79261b, d4);
        }
    }

    public c2(io.reactivex.rxjava3.core.g0<T> source, io.reactivex.rxjava3.core.g other) {
        super(source);
        this.f79258b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        this.f79141a.a(aVar);
        this.f79258b.d(aVar.f79262c);
    }
}
