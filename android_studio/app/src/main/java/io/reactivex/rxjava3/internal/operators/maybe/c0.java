package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapCompletable.java */
/* loaded from: classes4.dex */
public final class c0<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78490a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f78491b;

    /* compiled from: MaybeFlatMapCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78492c = -2177128922851101253L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f78493a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f78494b;

        a(io.reactivex.rxjava3.core.d actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper) {
            this.f78493a = actual;
            this.f78494b = mapper;
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
            this.f78493a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78493a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            try {
                io.reactivex.rxjava3.core.g apply = this.f78494b.apply(value);
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

    public c0(io.reactivex.rxjava3.core.b0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper) {
        this.f78490a = source;
        this.f78491b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer, this.f78491b);
        observer.onSubscribe(aVar);
        this.f78490a.b(aVar);
    }
}
