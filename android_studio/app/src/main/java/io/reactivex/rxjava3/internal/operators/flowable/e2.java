package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscribers.SinglePostCompleteSubscriber;
import java.util.Objects;

/* compiled from: FlowableMapNotification.java */
/* loaded from: classes4.dex */
public final class e2<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends R> f77098c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends R> f77099d;

    /* renamed from: e  reason: collision with root package name */
    final q7.s<? extends R> f77100e;

    /* compiled from: FlowableMapNotification.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends SinglePostCompleteSubscriber<T, R> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f77101k = 2757120512858778108L;

        /* renamed from: h  reason: collision with root package name */
        final q7.o<? super T, ? extends R> f77102h;

        /* renamed from: i  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends R> f77103i;

        /* renamed from: j  reason: collision with root package name */
        final q7.s<? extends R> f77104j;

        a(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends R> onNextMapper, q7.o<? super Throwable, ? extends R> onErrorMapper, q7.s<? extends R> onCompleteSupplier) {
            super(actual);
            this.f77102h = onNextMapper;
            this.f77103i = onErrorMapper;
            this.f77104j = onCompleteSupplier;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            try {
                R r9 = this.f77104j.get();
                Objects.requireNonNull(r9, "The onComplete publisher returned is null");
                a(r9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f81215a.onError(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            try {
                R apply = this.f77103i.apply(t9);
                Objects.requireNonNull(apply, "The onError publisher returned is null");
                a(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f81215a.onError(new CompositeException(t9, th));
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            try {
                R apply = this.f77102h.apply(t9);
                Objects.requireNonNull(apply, "The onNext publisher returned is null");
                this.f81218d++;
                this.f81215a.onNext(apply);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f81215a.onError(th);
            }
        }
    }

    public e2(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends R> onNextMapper, q7.o<? super Throwable, ? extends R> onErrorMapper, q7.s<? extends R> onCompleteSupplier) {
        super(source);
        this.f77098c = onNextMapper;
        this.f77099d = onErrorMapper;
        this.f77100e = onCompleteSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        this.f76811b.G6(new a(s9, this.f77098c, this.f77099d, this.f77100e));
    }
}
