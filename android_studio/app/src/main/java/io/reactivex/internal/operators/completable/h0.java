package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;

/* compiled from: CompletableOnErrorComplete.java */
/* loaded from: classes3.dex */
public final class h0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71352a;

    /* renamed from: b  reason: collision with root package name */
    final n7.r<? super Throwable> f71353b;

    /* compiled from: CompletableOnErrorComplete.java */
    /* loaded from: classes3.dex */
    final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.d f71354a;

        a(io.reactivex.d dVar) {
            this.f71354a = dVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71354a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            try {
                if (h0.this.f71353b.test(th)) {
                    this.f71354a.onComplete();
                } else {
                    this.f71354a.onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f71354a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71354a.onSubscribe(cVar);
        }
    }

    public h0(io.reactivex.g gVar, n7.r<? super Throwable> rVar) {
        this.f71352a = gVar;
        this.f71353b = rVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71352a.d(new a(dVar));
    }
}
