package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableTakeUntil.java */
/* loaded from: classes4.dex */
public final class u3<T, U> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends U> f80219b;

    /* compiled from: ObservableTakeUntil.java */
    /* loaded from: classes4.dex */
    static final class a<T, U> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80220e = 1418547743690811973L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80221a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f80222b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final a<T, U>.C0676a f80223c = new C0676a();

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f80224d = new AtomicThrowable();

        /* compiled from: ObservableTakeUntil.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.observable.u3$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        final class C0676a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<U> {

            /* renamed from: b  reason: collision with root package name */
            private static final long f80225b = -8693423678067375039L;

            C0676a() {
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onComplete() {
                a.this.a();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onError(Throwable e4) {
                a.this.b(e4);
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onNext(U t9) {
                DisposableHelper.dispose(this);
                a.this.a();
            }

            @Override // io.reactivex.rxjava3.core.n0
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f80221a = downstream;
        }

        void a() {
            DisposableHelper.dispose(this.f80222b);
            io.reactivex.rxjava3.internal.util.h.a(this.f80221a, this, this.f80224d);
        }

        void b(Throwable e4) {
            DisposableHelper.dispose(this.f80222b);
            io.reactivex.rxjava3.internal.util.h.c(this.f80221a, e4, this, this.f80224d);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f80222b);
            DisposableHelper.dispose(this.f80223c);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f80222b.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            DisposableHelper.dispose(this.f80223c);
            io.reactivex.rxjava3.internal.util.h.a(this.f80221a, this, this.f80224d);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            DisposableHelper.dispose(this.f80223c);
            io.reactivex.rxjava3.internal.util.h.c(this.f80221a, e4, this, this.f80224d);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            io.reactivex.rxjava3.internal.util.h.e(this.f80221a, t9, this, this.f80224d);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f80222b, d4);
        }
    }

    public u3(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.l0<? extends U> other) {
        super(source);
        this.f80219b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> child) {
        a aVar = new a(child);
        child.onSubscribe(aVar);
        this.f80219b.a(aVar.f80223c);
        this.f79141a.a(aVar);
    }
}
