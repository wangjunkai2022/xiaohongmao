package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeDelayWithCompletable.java */
/* loaded from: classes3.dex */
public final class n<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73400a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.g f73401b;

    /* compiled from: MaybeDelayWithCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T> {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f73402a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.t<? super T> f73403b;

        a(AtomicReference<io.reactivex.disposables.c> atomicReference, io.reactivex.t<? super T> tVar) {
            this.f73402a = atomicReference;
            this.f73403b = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73403b.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73403b.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this.f73402a, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73403b.onSuccess(t9);
        }
    }

    /* compiled from: MaybeDelayWithCompletable.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73404c = 703409937383992161L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73405a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.w<T> f73406b;

        b(io.reactivex.t<? super T> tVar, io.reactivex.w<T> wVar) {
            this.f73405a = tVar;
            this.f73406b = wVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f73406b.b(new a(this, this.f73405a));
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f73405a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f73405a.onSubscribe(this);
            }
        }
    }

    public n(io.reactivex.w<T> wVar, io.reactivex.g gVar) {
        this.f73400a = wVar;
        this.f73401b = gVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73401b.d(new b(tVar, this.f73400a));
    }
}
