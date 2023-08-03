package io.reactivex.rxjava3.internal.operators.flowable;

/* compiled from: FlowableFromObservable.java */
/* loaded from: classes4.dex */
public final class n1<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    private final io.reactivex.rxjava3.core.l0<T> f77614b;

    /* compiled from: FlowableFromObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77615a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f77616b;

        a(org.reactivestreams.d<? super T> s9) {
            this.f77615a = s9;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77616b.dispose();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f77615a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable e4) {
            this.f77615a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T value) {
            this.f77615a.onNext(value);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f77616b = d4;
            this.f77615a.onSubscribe(this);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
        }
    }

    public n1(io.reactivex.rxjava3.core.l0<T> upstream) {
        this.f77614b = upstream;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f77614b.a(new a(s9));
    }
}
