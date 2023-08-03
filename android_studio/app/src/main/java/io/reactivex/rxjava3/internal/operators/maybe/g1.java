package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeSwitchIfEmpty.java */
/* loaded from: classes4.dex */
public final class g1<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T> f78587b;

    /* compiled from: MaybeSwitchIfEmpty.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78588c = -2223459372976438024L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78589a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.b0<? extends T> f78590b;

        /* compiled from: MaybeSwitchIfEmpty.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.maybe.g1$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        static final class C0645a<T> implements io.reactivex.rxjava3.core.y<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.rxjava3.core.y<? super T> f78591a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<io.reactivex.rxjava3.disposables.f> f78592b;

            C0645a(io.reactivex.rxjava3.core.y<? super T> actual, AtomicReference<io.reactivex.rxjava3.disposables.f> parent) {
                this.f78591a = actual;
                this.f78592b = parent;
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f78591a.onComplete();
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f78591a.onError(e4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this.f78592b, d4);
            }

            @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
            public void onSuccess(T value) {
                this.f78591a.onSuccess(value);
            }
        }

        a(io.reactivex.rxjava3.core.y<? super T> actual, io.reactivex.rxjava3.core.b0<? extends T> other) {
            this.f78589a = actual;
            this.f78590b = other;
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
            this.f78590b.b(new C0645a(this.f78589a, this));
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78589a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f78589a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78589a.onSuccess(value);
        }
    }

    public g1(io.reactivex.rxjava3.core.b0<T> source, io.reactivex.rxjava3.core.b0<? extends T> other) {
        super(source);
        this.f78587b = other;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer, this.f78587b));
    }
}
