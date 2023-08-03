package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: FlowableScan.java */
/* loaded from: classes3.dex */
public final class k3<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.c<T, T, T> f72161c;

    /* compiled from: FlowableScan.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72162a;

        /* renamed from: b  reason: collision with root package name */
        final n7.c<T, T, T> f72163b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f72164c;

        /* renamed from: d  reason: collision with root package name */
        T f72165d;

        /* renamed from: e  reason: collision with root package name */
        boolean f72166e;

        a(org.reactivestreams.d<? super T> dVar, n7.c<T, T, T> cVar) {
            this.f72162a = dVar;
            this.f72163b = cVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72164c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72166e) {
                return;
            }
            this.f72166e = true;
            this.f72162a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72166e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72166e = true;
            this.f72162a.onError(th);
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.Object] */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72166e) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f72162a;
            T t10 = this.f72165d;
            if (t10 == null) {
                this.f72165d = t9;
                dVar.onNext(t9);
                return;
            }
            try {
                ?? r42 = (T) io.reactivex.internal.functions.b.g(this.f72163b.apply(t10, t9), "The value returned by the accumulator is null");
                this.f72165d = r42;
                dVar.onNext(r42);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f72164c.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72164c, eVar)) {
                this.f72164c = eVar;
                this.f72162a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72164c.request(j4);
        }
    }

    public k3(io.reactivex.j<T> jVar, n7.c<T, T, T> cVar) {
        super(jVar);
        this.f72161c = cVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71538b.j6(new a(dVar, this.f72161c));
    }
}
