package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableSingleMaybe.java */
/* loaded from: classes4.dex */
public final class g3<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<T> f79462a;

    /* compiled from: ObservableSingleMaybe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f79463a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79464b;

        /* renamed from: c  reason: collision with root package name */
        T f79465c;

        /* renamed from: d  reason: collision with root package name */
        boolean f79466d;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f79463a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79464b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79464b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79466d) {
                return;
            }
            this.f79466d = true;
            T t9 = this.f79465c;
            this.f79465c = null;
            if (t9 == null) {
                this.f79463a.onComplete();
            } else {
                this.f79463a.onSuccess(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79466d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79466d = true;
            this.f79463a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79466d) {
                return;
            }
            if (this.f79465c != null) {
                this.f79466d = true;
                this.f79464b.dispose();
                this.f79463a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f79465c = t9;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79464b, d4)) {
                this.f79464b = d4;
                this.f79463a.onSubscribe(this);
            }
        }
    }

    public g3(io.reactivex.rxjava3.core.l0<T> source) {
        this.f79462a = source;
    }

    @Override // io.reactivex.rxjava3.core.v
    public void U1(io.reactivex.rxjava3.core.y<? super T> t9) {
        this.f79462a.a(new a(t9));
    }
}
