package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;

/* compiled from: CompletableDoOnEvent.java */
/* loaded from: classes3.dex */
public final class m extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71413a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super Throwable> f71414b;

    /* compiled from: CompletableDoOnEvent.java */
    /* loaded from: classes3.dex */
    final class a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        private final io.reactivex.d f71415a;

        a(io.reactivex.d dVar) {
            this.f71415a = dVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            try {
                m.this.f71414b.accept(null);
                this.f71415a.onComplete();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71415a.onError(th);
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            try {
                m.this.f71414b.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f71415a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71415a.onSubscribe(cVar);
        }
    }

    public m(io.reactivex.g gVar, n7.g<? super Throwable> gVar2) {
        this.f71413a = gVar;
        this.f71414b = gVar2;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71413a.d(new a(dVar));
    }
}
