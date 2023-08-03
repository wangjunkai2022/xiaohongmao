package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeOnErrorNext.java */
/* loaded from: classes3.dex */
public final class a1<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends io.reactivex.w<? extends T>> f73178b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f73179c;

    /* compiled from: MaybeOnErrorNext.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f73180d = 2026620218879969836L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73181a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends io.reactivex.w<? extends T>> f73182b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f73183c;

        /* compiled from: MaybeOnErrorNext.java */
        /* renamed from: io.reactivex.internal.operators.maybe.a1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0564a<T> implements io.reactivex.t<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.t<? super T> f73184a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<io.reactivex.disposables.c> f73185b;

            C0564a(io.reactivex.t<? super T> tVar, AtomicReference<io.reactivex.disposables.c> atomicReference) {
                this.f73184a = tVar;
                this.f73185b = atomicReference;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f73184a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f73184a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this.f73185b, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(T t9) {
                this.f73184a.onSuccess(t9);
            }
        }

        a(io.reactivex.t<? super T> tVar, n7.o<? super Throwable, ? extends io.reactivex.w<? extends T>> oVar, boolean z9) {
            this.f73181a = tVar;
            this.f73182b = oVar;
            this.f73183c = z9;
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
            this.f73181a.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            if (!this.f73183c && !(th instanceof Exception)) {
                this.f73181a.onError(th);
                return;
            }
            try {
                io.reactivex.w wVar = (io.reactivex.w) io.reactivex.internal.functions.b.g(this.f73182b.apply(th), "The resumeFunction returned a null MaybeSource");
                DisposableHelper.replace(this, null);
                wVar.b(new C0564a(this.f73181a, this));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f73181a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f73181a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73181a.onSuccess(t9);
        }
    }

    public a1(io.reactivex.w<T> wVar, n7.o<? super Throwable, ? extends io.reactivex.w<? extends T>> oVar, boolean z9) {
        super(wVar);
        this.f73178b = oVar;
        this.f73179c = z9;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73178b, this.f73179c));
    }
}
