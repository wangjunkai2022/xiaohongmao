package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;

/* compiled from: ObservableSkipLast.java */
/* loaded from: classes4.dex */
public final class j3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f79586b;

    /* compiled from: ObservableSkipLast.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f79587d = -3807491841935125653L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79588a;

        /* renamed from: b  reason: collision with root package name */
        final int f79589b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79590c;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, int skip) {
            super(skip);
            this.f79588a = actual;
            this.f79589b = skip;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79590c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79590c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79588a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79588a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79589b == size()) {
                this.f79588a.onNext((T) poll());
            }
            offer(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79590c, d4)) {
                this.f79590c = d4;
                this.f79588a.onSubscribe(this);
            }
        }
    }

    public j3(io.reactivex.rxjava3.core.l0<T> source, int skip) {
        super(source);
        this.f79586b = skip;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f79586b));
    }
}
