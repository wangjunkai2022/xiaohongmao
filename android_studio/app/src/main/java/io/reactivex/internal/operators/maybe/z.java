package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapBiSelector.java */
/* loaded from: classes3.dex */
public final class z<T, U, R> extends io.reactivex.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.w<? extends U>> f73524b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<? super T, ? super U, ? extends R> f73525c;

    /* compiled from: MaybeFlatMapBiSelector.java */
    /* loaded from: classes3.dex */
    static final class a<T, U, R> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.w<? extends U>> f73526a;

        /* renamed from: b  reason: collision with root package name */
        final C0571a<T, U, R> f73527b;

        /* compiled from: MaybeFlatMapBiSelector.java */
        /* renamed from: io.reactivex.internal.operators.maybe.z$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0571a<T, U, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<U> {

            /* renamed from: d  reason: collision with root package name */
            private static final long f73528d = -2897979525538174559L;

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.t<? super R> f73529a;

            /* renamed from: b  reason: collision with root package name */
            final n7.c<? super T, ? super U, ? extends R> f73530b;

            /* renamed from: c  reason: collision with root package name */
            T f73531c;

            C0571a(io.reactivex.t<? super R> tVar, n7.c<? super T, ? super U, ? extends R> cVar) {
                this.f73529a = tVar;
                this.f73530b = cVar;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f73529a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f73529a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(U u9) {
                T t9 = this.f73531c;
                this.f73531c = null;
                try {
                    this.f73529a.onSuccess(io.reactivex.internal.functions.b.g(this.f73530b.apply(t9, u9), "The resultSelector returned a null value"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f73529a.onError(th);
                }
            }
        }

        a(io.reactivex.t<? super R> tVar, n7.o<? super T, ? extends io.reactivex.w<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar) {
            this.f73527b = new C0571a<>(tVar, cVar);
            this.f73526a = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f73527b);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f73527b.get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73527b.f73529a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73527b.f73529a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this.f73527b, cVar)) {
                this.f73527b.f73529a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.b.g(this.f73526a.apply(t9), "The mapper returned a null MaybeSource");
                if (DisposableHelper.replace(this.f73527b, null)) {
                    C0571a<T, U, R> c0571a = this.f73527b;
                    c0571a.f73531c = t9;
                    wVar.b(c0571a);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73527b.f73529a.onError(th);
            }
        }
    }

    public z(io.reactivex.w<T> wVar, n7.o<? super T, ? extends io.reactivex.w<? extends U>> oVar, n7.c<? super T, ? super U, ? extends R> cVar) {
        super(wVar);
        this.f73524b = oVar;
        this.f73525c = cVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        this.f73172a.b(new a(tVar, this.f73524b, this.f73525c));
    }
}
