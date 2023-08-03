package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeSwitchIfEmptySingle.java */
/* loaded from: classes3.dex */
public final class f1<T> extends io.reactivex.i0<T> implements o7.f<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73294a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f73295b;

    /* compiled from: MaybeSwitchIfEmptySingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73296c = 4603919676453758899L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f73297a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.o0<? extends T> f73298b;

        /* compiled from: MaybeSwitchIfEmptySingle.java */
        /* renamed from: io.reactivex.internal.operators.maybe.f1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0567a<T> implements io.reactivex.l0<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.l0<? super T> f73299a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<io.reactivex.disposables.c> f73300b;

            C0567a(io.reactivex.l0<? super T> l0Var, AtomicReference<io.reactivex.disposables.c> atomicReference) {
                this.f73299a = l0Var;
                this.f73300b = atomicReference;
            }

            @Override // io.reactivex.l0
            public void onError(Throwable th) {
                this.f73299a.onError(th);
            }

            @Override // io.reactivex.l0
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this.f73300b, cVar);
            }

            @Override // io.reactivex.l0
            public void onSuccess(T t9) {
                this.f73299a.onSuccess(t9);
            }
        }

        a(io.reactivex.l0<? super T> l0Var, io.reactivex.o0<? extends T> o0Var) {
            this.f73297a = l0Var;
            this.f73298b = o0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            io.reactivex.disposables.c cVar = get();
            if (cVar == DisposableHelper.DISPOSED || !compareAndSet(cVar, null)) {
                return;
            }
            this.f73298b.d(new C0567a(this.f73297a, this));
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73297a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f73297a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73297a.onSuccess(t9);
        }
    }

    public f1(io.reactivex.w<T> wVar, io.reactivex.o0<? extends T> o0Var) {
        this.f73294a = wVar;
        this.f73295b = o0Var;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f73294a.b(new a(l0Var, this.f73295b));
    }

    @Override // o7.f
    public io.reactivex.w<T> source() {
        return this.f73294a;
    }
}
