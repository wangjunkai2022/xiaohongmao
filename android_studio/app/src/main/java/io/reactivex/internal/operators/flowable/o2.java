package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;

/* compiled from: FlowableOnErrorReturn.java */
/* loaded from: classes3.dex */
public final class o2<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends T> f72420c;

    /* compiled from: FlowableOnErrorReturn.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends SinglePostCompleteSubscriber<T, T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f72421i = -3740826063558713822L;

        /* renamed from: h  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends T> f72422h;

        a(org.reactivestreams.d<? super T> dVar, n7.o<? super Throwable, ? extends T> oVar) {
            super(dVar);
            this.f72422h = oVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f75800a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            try {
                a(io.reactivex.internal.functions.b.g(this.f72422h.apply(th), "The valueSupplier returned a null value"));
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f75800a.onError(new CompositeException(th, th2));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f75803d++;
            this.f75800a.onNext(t9);
        }
    }

    public o2(io.reactivex.j<T> jVar, n7.o<? super Throwable, ? extends T> oVar) {
        super(jVar);
        this.f72420c = oVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72420c));
    }
}
