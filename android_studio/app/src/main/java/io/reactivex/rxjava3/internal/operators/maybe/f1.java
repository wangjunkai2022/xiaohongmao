package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeSubscribeOn.java */
/* loaded from: classes4.dex */
public final class f1<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78569b;

    /* compiled from: MaybeSubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78570c = 8571289934935992137L;

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f78571a = new SequentialDisposable();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78572b;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78572b = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f78571a.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78572b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78572b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78572b.onSuccess(value);
        }
    }

    /* compiled from: MaybeSubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class b<T> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78573a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.b0<T> f78574b;

        b(io.reactivex.rxjava3.core.y<? super T> observer, io.reactivex.rxjava3.core.b0<T> source) {
            this.f78573a = observer;
            this.f78574b = source;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f78574b.b(this.f78573a);
        }
    }

    public f1(io.reactivex.rxjava3.core.b0<T> source, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f78569b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        aVar.f78571a.replace(this.f78569b.f(new b(aVar, this.f78452a)));
    }
}
