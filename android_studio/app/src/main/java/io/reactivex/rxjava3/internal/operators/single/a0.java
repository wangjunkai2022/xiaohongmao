package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleFlatMapCompletable.java */
/* loaded from: classes4.dex */
public final class a0<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80703a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f80704b;

    /* compiled from: SingleFlatMapCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80705c = -2177128922851101253L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f80706a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f80707b;

        a(io.reactivex.rxjava3.core.d actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper) {
            this.f80706a = actual;
            this.f80707b = mapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f80706a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80706a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.g apply = this.f80707b.apply(value);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                io.reactivex.rxjava3.core.g gVar = apply;
                if (isDisposed()) {
                    return;
                }
                gVar.d(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                onError(th);
            }
        }
    }

    public a0(io.reactivex.rxjava3.core.v0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper) {
        this.f80703a = source;
        this.f80704b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer, this.f80704b);
        observer.onSubscribe(aVar);
        this.f80703a.d(aVar);
    }
}
