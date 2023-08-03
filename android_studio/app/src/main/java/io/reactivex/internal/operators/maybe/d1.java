package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeSubscribeOn.java */
/* loaded from: classes3.dex */
public final class d1<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.h0 f73250b;

    /* compiled from: MaybeSubscribeOn.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73251c = 8571289934935992137L;

        /* renamed from: a  reason: collision with root package name */
        final SequentialDisposable f73252a = new SequentialDisposable();

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.t<? super T> f73253b;

        a(io.reactivex.t<? super T> tVar) {
            this.f73253b = tVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f73252a.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73253b.onComplete();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73253b.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73253b.onSuccess(t9);
        }
    }

    /* compiled from: MaybeSubscribeOn.java */
    /* loaded from: classes3.dex */
    static final class b<T> implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73254a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.w<T> f73255b;

        b(io.reactivex.t<? super T> tVar, io.reactivex.w<T> wVar) {
            this.f73254a = tVar;
            this.f73255b = wVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f73255b.b(this.f73254a);
        }
    }

    public d1(io.reactivex.w<T> wVar, io.reactivex.h0 h0Var) {
        super(wVar);
        this.f73250b = h0Var;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        a aVar = new a(tVar);
        tVar.onSubscribe(aVar);
        aVar.f73252a.replace(this.f73250b.f(new b(aVar, this.f73172a)));
    }
}
