package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;

/* compiled from: MaybeDoOnTerminate.java */
/* loaded from: classes3.dex */
public final class s<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<T> f73464a;

    /* renamed from: b  reason: collision with root package name */
    final n7.a f73465b;

    /* compiled from: MaybeDoOnTerminate.java */
    /* loaded from: classes3.dex */
    final class a implements io.reactivex.t<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73466a;

        a(io.reactivex.t<? super T> tVar) {
            this.f73466a = tVar;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            try {
                s.this.f73465b.run();
                this.f73466a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73466a.onError(th);
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            try {
                s.this.f73465b.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f73466a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f73466a.onSubscribe(cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            try {
                s.this.f73465b.run();
                this.f73466a.onSuccess(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f73466a.onError(th);
            }
        }
    }

    public s(io.reactivex.w<T> wVar, n7.a aVar) {
        this.f73464a = wVar;
        this.f73465b = aVar;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73464a.b(new a(tVar));
    }
}
