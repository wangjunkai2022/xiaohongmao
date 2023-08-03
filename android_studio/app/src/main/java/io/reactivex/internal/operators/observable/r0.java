package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableElementAtMaybe.java */
/* loaded from: classes3.dex */
public final class r0<T> extends io.reactivex.q<T> implements o7.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74673a;

    /* renamed from: b  reason: collision with root package name */
    final long f74674b;

    /* compiled from: ObservableElementAtMaybe.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f74675a;

        /* renamed from: b  reason: collision with root package name */
        final long f74676b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74677c;

        /* renamed from: d  reason: collision with root package name */
        long f74678d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74679e;

        a(io.reactivex.t<? super T> tVar, long j4) {
            this.f74675a = tVar;
            this.f74676b = j4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74677c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74677c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74679e) {
                return;
            }
            this.f74679e = true;
            this.f74675a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74679e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74679e = true;
            this.f74675a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74679e) {
                return;
            }
            long j4 = this.f74678d;
            if (j4 == this.f74676b) {
                this.f74679e = true;
                this.f74677c.dispose();
                this.f74675a.onSuccess(t9);
                return;
            }
            this.f74678d = j4 + 1;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74677c, cVar)) {
                this.f74677c = cVar;
                this.f74675a.onSubscribe(this);
            }
        }
    }

    public r0(io.reactivex.e0<T> e0Var, long j4) {
        this.f74673a = e0Var;
        this.f74674b = j4;
    }

    @Override // o7.d
    public io.reactivex.z<T> a() {
        return io.reactivex.plugins.a.R(new q0(this.f74673a, this.f74674b, null, false));
    }

    @Override // io.reactivex.q
    public void q1(io.reactivex.t<? super T> tVar) {
        this.f74673a.subscribe(new a(tVar, this.f74674b));
    }
}
