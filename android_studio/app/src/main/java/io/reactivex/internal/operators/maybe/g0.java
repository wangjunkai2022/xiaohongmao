package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatten.java */
/* loaded from: classes3.dex */
public final class g0<T, R> extends io.reactivex.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f73306b;

    /* compiled from: MaybeFlatten.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f73307d = 4375739915521278546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f73308a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f73309b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73310c;

        /* compiled from: MaybeFlatten.java */
        /* renamed from: io.reactivex.internal.operators.maybe.g0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0568a implements io.reactivex.t<R> {
            C0568a() {
            }

            @Override // io.reactivex.t
            public void onComplete() {
                a.this.f73308a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                a.this.f73308a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(a.this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r9) {
                a.this.f73308a.onSuccess(r9);
            }
        }

        a(io.reactivex.t<? super R> tVar, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar) {
            this.f73308a = tVar;
            this.f73309b = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f73310c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73308a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73308a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73310c, cVar)) {
                this.f73310c = cVar;
                this.f73308a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.b.g(this.f73309b.apply(t9), "The mapper returned a null MaybeSource");
                if (isDisposed()) {
                    return;
                }
                wVar.b(new C0568a());
            } catch (Exception e4) {
                io.reactivex.exceptions.a.b(e4);
                this.f73308a.onError(e4);
            }
        }
    }

    public g0(io.reactivex.w<T> wVar, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar) {
        super(wVar);
        this.f73306b = oVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        this.f73172a.b(new a(tVar, this.f73306b));
    }
}
