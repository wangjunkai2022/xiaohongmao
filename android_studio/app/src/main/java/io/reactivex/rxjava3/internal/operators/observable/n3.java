package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSubscribeOn.java */
/* loaded from: classes4.dex */
public final class n3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f79840b;

    /* compiled from: ObservableSubscribeOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f79841c = 8094547886072529208L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79842a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79843b = new AtomicReference<>();

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f79842a = downstream;
        }

        void a(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f79843b);
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79842a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79842a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79842a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79843b, d4);
        }
    }

    /* compiled from: ObservableSubscribeOn.java */
    /* loaded from: classes4.dex */
    final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final a<T> f79844a;

        b(a<T> parent) {
            this.f79844a = parent;
        }

        @Override // java.lang.Runnable
        public void run() {
            n3.this.f79141a.a(this.f79844a);
        }
    }

    public n3(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.o0 scheduler) {
        super(source);
        this.f79840b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(final io.reactivex.rxjava3.core.n0<? super T> observer) {
        a aVar = new a(observer);
        observer.onSubscribe(aVar);
        aVar.a(this.f79840b.f(new b(aVar)));
    }
}
