package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscribers.SinglePostCompleteSubscriber;

/* compiled from: FlowableMaterialize.java */
/* loaded from: classes4.dex */
public final class g2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, io.reactivex.rxjava3.core.d0<T>> {

    /* compiled from: FlowableMaterialize.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends SinglePostCompleteSubscriber<T, io.reactivex.rxjava3.core.d0<T>> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77198h = -3740826063558713822L;

        a(org.reactivestreams.d<? super io.reactivex.rxjava3.core.d0<T>> downstream) {
            super(downstream);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.rxjava3.internal.subscribers.SinglePostCompleteSubscriber
        /* renamed from: c */
        public void b(io.reactivex.rxjava3.core.d0<T> n9) {
            if (n9.g()) {
                io.reactivex.rxjava3.plugins.a.Y(n9.d());
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            a(io.reactivex.rxjava3.core.d0.a());
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            a(io.reactivex.rxjava3.core.d0.b(t9));
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f81218d++;
            this.f81215a.onNext(io.reactivex.rxjava3.core.d0.c(t9));
        }
    }

    public g2(io.reactivex.rxjava3.core.m<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super io.reactivex.rxjava3.core.d0<T>> s9) {
        this.f76811b.G6(new a(s9));
    }
}
