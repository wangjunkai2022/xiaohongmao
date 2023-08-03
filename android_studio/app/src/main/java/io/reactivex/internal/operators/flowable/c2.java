package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;

/* compiled from: FlowableMaterialize.java */
/* loaded from: classes3.dex */
public final class c2<T> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.y<T>> {

    /* compiled from: FlowableMaterialize.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends SinglePostCompleteSubscriber<T, io.reactivex.y<T>> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f71661h = -3740826063558713822L;

        a(org.reactivestreams.d<? super io.reactivex.y<T>> dVar) {
            super(dVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber
        /* renamed from: c */
        public void b(io.reactivex.y<T> yVar) {
            if (yVar.g()) {
                io.reactivex.plugins.a.Y(yVar.d());
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            a(io.reactivex.y.a());
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            a(io.reactivex.y.b(th));
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f75803d++;
            this.f75800a.onNext(io.reactivex.y.c(t9));
        }
    }

    public c2(io.reactivex.j<T> jVar) {
        super(jVar);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super io.reactivex.y<T>> dVar) {
        this.f71538b.j6(new a(dVar));
    }
}
