package io.reactivex.internal.operators.flowable;

/* compiled from: FlowableFromObservable.java */
/* loaded from: classes3.dex */
public final class k1<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.z<T> f72152b;

    /* compiled from: FlowableFromObservable.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72153a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f72154b;

        a(org.reactivestreams.d<? super T> dVar) {
            this.f72153a = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72154b.dispose();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f72153a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f72153a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f72153a.onNext(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f72154b = cVar;
            this.f72153a.onSubscribe(this);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
        }
    }

    public k1(io.reactivex.z<T> zVar) {
        this.f72152b = zVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f72152b.subscribe(new a(dVar));
    }
}
