package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.l0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableAndThenObservable.java */
/* loaded from: classes4.dex */
public final class a<R> extends g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f78829a;

    /* renamed from: b  reason: collision with root package name */
    final l0<? extends R> f78830b;

    /* compiled from: CompletableAndThenObservable.java */
    /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0650a<R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements n0<R>, io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78831c = -8948264376121066672L;

        /* renamed from: a  reason: collision with root package name */
        final n0<? super R> f78832a;

        /* renamed from: b  reason: collision with root package name */
        l0<? extends R> f78833b;

        C0650a(n0<? super R> downstream, l0<? extends R> other) {
            this.f78833b = other;
            this.f78832a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            l0<? extends R> l0Var = this.f78833b;
            if (l0Var == null) {
                this.f78832a.onComplete();
                return;
            }
            this.f78833b = null;
            l0Var.a(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f78832a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(R t9) {
            this.f78832a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this, d4);
        }
    }

    public a(io.reactivex.rxjava3.core.g source, l0<? extends R> other) {
        this.f78829a = source;
        this.f78830b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super R> observer) {
        C0650a c0650a = new C0650a(observer, this.f78830b);
        observer.onSubscribe(c0650a);
        this.f78829a.d(c0650a);
    }
}
