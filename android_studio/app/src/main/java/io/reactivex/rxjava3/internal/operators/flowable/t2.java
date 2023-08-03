package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscribers.SinglePostCompleteSubscriber;
import java.util.Objects;

/* compiled from: FlowableOnErrorReturn.java */
/* loaded from: classes4.dex */
public final class t2<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends T> f77980c;

    /* compiled from: FlowableOnErrorReturn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends SinglePostCompleteSubscriber<T, T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f77981i = -3740826063558713822L;

        /* renamed from: h  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends T> f77982h;

        a(org.reactivestreams.d<? super T> actual, q7.o<? super Throwable, ? extends T> valueSupplier) {
            super(actual);
            this.f77982h = valueSupplier;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f81215a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            try {
                T apply = this.f77982h.apply(t9);
                Objects.requireNonNull(apply, "The valueSupplier returned a null value");
                a(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f81215a.onError(new CompositeException(t9, th));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f81218d++;
            this.f81215a.onNext(t9);
        }
    }

    public t2(io.reactivex.rxjava3.core.m<T> source, q7.o<? super Throwable, ? extends T> valueSupplier) {
        super(source);
        this.f77980c = valueSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        this.f76811b.G6(new a(s9, this.f77980c));
    }
}
