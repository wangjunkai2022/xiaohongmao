package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeDoOnEvent.java */
/* loaded from: classes3.dex */
public final class r<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.b<? super T, ? super Throwable> f73446b;

    /* compiled from: MaybeDoOnEvent.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73447a;

        /* renamed from: b  reason: collision with root package name */
        final n7.b<? super T, ? super Throwable> f73448b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73449c;

        a(io.reactivex.t<? super T> tVar, n7.b<? super T, ? super Throwable> bVar) {
            this.f73447a = tVar;
            this.f73448b = bVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73449c.dispose();
            this.f73449c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73449c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73449c = DisposableHelper.DISPOSED;
            try {
                this.f73448b.accept(null, null);
                this.f73447a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73447a.onError(th);
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73449c = DisposableHelper.DISPOSED;
            try {
                this.f73448b.accept(null, th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f73447a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73449c, cVar)) {
                this.f73449c = cVar;
                this.f73447a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73449c = DisposableHelper.DISPOSED;
            try {
                this.f73448b.accept(t9, null);
                this.f73447a.onSuccess(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73447a.onError(th);
            }
        }
    }

    public r(io.reactivex.w<T> wVar, n7.b<? super T, ? super Throwable> bVar) {
        super(wVar);
        this.f73446b = bVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73446b));
    }
}
