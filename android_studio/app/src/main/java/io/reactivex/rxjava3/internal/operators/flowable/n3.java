package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: FlowableScan.java */
/* loaded from: classes4.dex */
public final class n3<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.c<T, T, T> f77632c;

    /* compiled from: FlowableScan.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77633a;

        /* renamed from: b  reason: collision with root package name */
        final q7.c<T, T, T> f77634b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f77635c;

        /* renamed from: d  reason: collision with root package name */
        T f77636d;

        /* renamed from: e  reason: collision with root package name */
        boolean f77637e;

        a(org.reactivestreams.d<? super T> actual, q7.c<T, T, T> accumulator) {
            this.f77633a = actual;
            this.f77634b = accumulator;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77635c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77637e) {
                return;
            }
            this.f77637e = true;
            this.f77633a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77637e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77637e = true;
            this.f77633a.onError(t9);
        }

        /* JADX WARN: Type inference failed for: r4v2, types: [T, java.lang.Object] */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77637e) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f77633a;
            T t10 = this.f77636d;
            if (t10 == null) {
                this.f77636d = t9;
                dVar.onNext(t9);
                return;
            }
            try {
                T apply = this.f77634b.apply(t10, t9);
                Objects.requireNonNull(apply, "The value returned by the accumulator is null");
                this.f77636d = apply;
                dVar.onNext(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f77635c.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77635c, s9)) {
                this.f77635c = s9;
                this.f77633a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            this.f77635c.request(n9);
        }
    }

    public n3(io.reactivex.rxjava3.core.m<T> source, q7.c<T, T, T> accumulator) {
        super(source);
        this.f77632c = accumulator;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77632c));
    }
}
