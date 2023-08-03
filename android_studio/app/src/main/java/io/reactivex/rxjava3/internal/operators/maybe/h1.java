package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeSwitchIfEmptySingle.java */
/* loaded from: classes4.dex */
public final class h1<T> extends io.reactivex.rxjava3.core.p0<T> implements io.reactivex.rxjava3.internal.fuseable.h<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78602a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T> f78603b;

    /* compiled from: MaybeSwitchIfEmptySingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78604c = 4603919676453758899L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f78605a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.v0<? extends T> f78606b;

        /* compiled from: MaybeSwitchIfEmptySingle.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.h1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0647a<T> implements io.reactivex.rxjava3.core.s0<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.s0<? super T> f78607a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<io.reactivex.rxjava3.disposables.f> f78608b;

            C0647a(io.reactivex.rxjava3.core.s0<? super T> actual, AtomicReference<io.reactivex.rxjava3.disposables.f> parent) {
                this.f78607a = actual;
                this.f78608b = parent;
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78607a.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this.f78608b, d4);
            }

            @Override // io.reactivex.rxjava3.core.s0
            public void onSuccess(T value) {
                this.f78607a.onSuccess(value);
            }
        }

        a(io.reactivex.rxjava3.core.s0<? super T> actual, io.reactivex.rxjava3.core.v0<? extends T> other) {
            this.f78605a = actual;
            this.f78606b = other;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            io.reactivex.rxjava3.disposables.f fVar = get();
            if (fVar == DisposableHelper.DISPOSED || !compareAndSet(fVar, null)) {
                return;
            }
            this.f78606b.d(new C0647a(this.f78605a, this));
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78605a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f78605a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78605a.onSuccess(value);
        }
    }

    public h1(io.reactivex.rxjava3.core.b0<T> source, io.reactivex.rxjava3.core.v0<? extends T> other) {
        this.f78602a = source;
        this.f78603b = other;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f78602a.b(new a(observer, this.f78603b));
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.h
    public io.reactivex.rxjava3.core.b0<T> source() {
        return this.f78602a;
    }
}
