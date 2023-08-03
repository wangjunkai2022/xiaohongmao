package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: MaybeOnErrorComplete.java */
/* loaded from: classes3.dex */
public final class z0<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super Throwable> f73532b;

    /* compiled from: MaybeOnErrorComplete.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73533a;

        /* renamed from: b  reason: collision with root package name */
        final n7.r<? super Throwable> f73534b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73535c;

        a(io.reactivex.t<? super T> tVar, n7.r<? super Throwable> rVar) {
            this.f73533a = tVar;
            this.f73534b = rVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73535c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73535c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73533a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            try {
                if (this.f73534b.test(th)) {
                    this.f73533a.onComplete();
                } else {
                    this.f73533a.onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f73533a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73535c, cVar)) {
                this.f73535c = cVar;
                this.f73533a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73533a.onSuccess(t9);
        }
    }

    public z0(io.reactivex.w<T> wVar, n7.r<? super Throwable> rVar) {
        super(wVar);
        this.f73532b = rVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73532b));
    }
}
