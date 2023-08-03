package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeFlatMapNotification.java */
/* loaded from: classes3.dex */
public final class d0<T, R> extends io.reactivex.internal.operators.maybe.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f73240b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends io.reactivex.w<? extends R>> f73241c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<? extends io.reactivex.w<? extends R>> f73242d;

    /* compiled from: MaybeFlatMapNotification.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: f  reason: collision with root package name */
        private static final long f73243f = 4375739915521278546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super R> f73244a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.w<? extends R>> f73245b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends io.reactivex.w<? extends R>> f73246c;

        /* renamed from: d  reason: collision with root package name */
        final Callable<? extends io.reactivex.w<? extends R>> f73247d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f73248e;

        /* compiled from: MaybeFlatMapNotification.java */
        /* renamed from: io.reactivex.internal.operators.maybe.d0$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        final class C0565a implements io.reactivex.t<R> {
            C0565a() {
            }

            @Override // io.reactivex.t
            public void onComplete() {
                a.this.f73244a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                a.this.f73244a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(a.this, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(R r9) {
                a.this.f73244a.onSuccess(r9);
            }
        }

        a(io.reactivex.t<? super R> tVar, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, n7.o<? super Throwable, ? extends io.reactivex.w<? extends R>> oVar2, Callable<? extends io.reactivex.w<? extends R>> callable) {
            this.f73244a = tVar;
            this.f73245b = oVar;
            this.f73246c = oVar2;
            this.f73247d = callable;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f73248e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            try {
                ((io.reactivex.w) io.reactivex.internal.functions.b.g(this.f73247d.call(), "The onCompleteSupplier returned a null MaybeSource")).b(new C0565a());
            } catch (Exception e4) {
                io.reactivex.exceptions.a.b(e4);
                this.f73244a.onError(e4);
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            try {
                ((io.reactivex.w) io.reactivex.internal.functions.b.g(this.f73246c.apply(th), "The onErrorMapper returned a null MaybeSource")).b(new C0565a());
            } catch (Exception e4) {
                io.reactivex.exceptions.a.b(e4);
                this.f73244a.onError(new CompositeException(th, e4));
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73248e, cVar)) {
                this.f73248e = cVar;
                this.f73244a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                ((io.reactivex.w) io.reactivex.internal.functions.b.g(this.f73245b.apply(t9), "The onSuccessMapper returned a null MaybeSource")).b(new C0565a());
            } catch (Exception e4) {
                io.reactivex.exceptions.a.b(e4);
                this.f73244a.onError(e4);
            }
        }
    }

    public d0(io.reactivex.w<T> wVar, n7.o<? super T, ? extends io.reactivex.w<? extends R>> oVar, n7.o<? super Throwable, ? extends io.reactivex.w<? extends R>> oVar2, Callable<? extends io.reactivex.w<? extends R>> callable) {
        super(wVar);
        this.f73240b = oVar;
        this.f73241c = oVar2;
        this.f73242d = callable;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super R> tVar) {
        this.f73172a.b(new a(tVar, this.f73240b, this.f73241c, this.f73242d));
    }
}
