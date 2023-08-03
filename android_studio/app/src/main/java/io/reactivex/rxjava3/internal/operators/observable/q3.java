package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: ObservableTake.java */
/* loaded from: classes4.dex */
public final class q3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f79994b;

    /* compiled from: ObservableTake.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79995a;

        /* renamed from: b  reason: collision with root package name */
        boolean f79996b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79997c;

        /* renamed from: d  reason: collision with root package name */
        long f79998d;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long limit) {
            this.f79995a = actual;
            this.f79998d = limit;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79997c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79997c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79996b) {
                return;
            }
            this.f79996b = true;
            this.f79997c.dispose();
            this.f79995a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79996b) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79996b = true;
            this.f79997c.dispose();
            this.f79995a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79996b) {
                return;
            }
            long j4 = this.f79998d;
            long j10 = j4 - 1;
            this.f79998d = j10;
            if (j4 > 0) {
                boolean z9 = j10 == 0;
                this.f79995a.onNext(t9);
                if (z9) {
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79997c, d4)) {
                this.f79997c = d4;
                if (this.f79998d == 0) {
                    this.f79996b = true;
                    d4.dispose();
                    EmptyDisposable.complete(this.f79995a);
                    return;
                }
                this.f79995a.onSubscribe(this);
            }
        }
    }

    public q3(io.reactivex.rxjava3.core.l0<T> source, long limit) {
        super(source);
        this.f79994b = limit;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer, this.f79994b));
    }
}
