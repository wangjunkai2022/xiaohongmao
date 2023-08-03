package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.Objects;

/* compiled from: FlowableBufferExactBoundary.java */
/* loaded from: classes4.dex */
public final class o<T, U extends Collection<? super T>, B> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, U> {

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<B> f77645c;

    /* renamed from: d  reason: collision with root package name */
    final q7.s<U> f77646d;

    /* compiled from: FlowableBufferExactBoundary.java */
    /* loaded from: classes4.dex */
    static final class a<T, U extends Collection<? super T>, B> extends io.reactivex.rxjava3.subscribers.b<B> {

        /* renamed from: b  reason: collision with root package name */
        final b<T, U, B> f77647b;

        a(b<T, U, B> parent) {
            this.f77647b = parent;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77647b.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77647b.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(B t9) {
            this.f77647b.o();
        }
    }

    /* compiled from: FlowableBufferExactBoundary.java */
    /* loaded from: classes4.dex */
    static final class b<T, U extends Collection<? super T>, B> extends io.reactivex.rxjava3.internal.subscribers.h<T, U, U> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, io.reactivex.rxjava3.disposables.f {
        org.reactivestreams.e T1;
        io.reactivex.rxjava3.disposables.f V1;

        /* renamed from: b2  reason: collision with root package name */
        U f77648b2;

        /* renamed from: x1  reason: collision with root package name */
        final q7.s<U> f77649x1;

        /* renamed from: y1  reason: collision with root package name */
        final org.reactivestreams.c<B> f77650y1;

        b(org.reactivestreams.d<? super U> actual, q7.s<U> bufferSupplier, org.reactivestreams.c<B> boundary) {
            super(actual, new io.reactivex.rxjava3.internal.queue.a());
            this.f77649x1 = bufferSupplier;
            this.f77650y1 = boundary;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f81246b1) {
                return;
            }
            this.f81246b1 = true;
            this.V1.dispose();
            this.T1.cancel();
            if (b()) {
                this.W.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81246b1;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.h, io.reactivex.rxjava3.internal.util.n
        /* renamed from: n */
        public boolean g(org.reactivestreams.d<? super U> a10, U v9) {
            this.V.onNext(v9);
            return true;
        }

        void o() {
            try {
                U u9 = this.f77649x1.get();
                Objects.requireNonNull(u9, "The buffer supplied is null");
                U u10 = u9;
                synchronized (this) {
                    U u11 = this.f77648b2;
                    if (u11 == null) {
                        return;
                    }
                    this.f77648b2 = u10;
                    k(u11, false, this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                this.V.onError(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            synchronized (this) {
                U u9 = this.f77648b2;
                if (u9 == null) {
                    return;
                }
                this.f77648b2 = null;
                this.W.offer(u9);
                this.f81247g1 = true;
                if (b()) {
                    io.reactivex.rxjava3.internal.util.o.e(this.W, this.V, false, this, this);
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            cancel();
            this.V.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            synchronized (this) {
                U u9 = this.f77648b2;
                if (u9 == null) {
                    return;
                }
                u9.add(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.T1, s9)) {
                this.T1 = s9;
                try {
                    U u9 = this.f77649x1.get();
                    Objects.requireNonNull(u9, "The buffer supplied is null");
                    this.f77648b2 = u9;
                    a aVar = new a(this);
                    this.V1 = aVar;
                    this.V.onSubscribe(this);
                    if (this.f81246b1) {
                        return;
                    }
                    s9.request(Long.MAX_VALUE);
                    this.f77650y1.i(aVar);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f81246b1 = true;
                    s9.cancel();
                    EmptySubscription.error(th, this.V);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            m(n9);
        }
    }

    public o(io.reactivex.rxjava3.core.m<T> source, org.reactivestreams.c<B> boundary, q7.s<U> bufferSupplier) {
        super(source);
        this.f77645c = boundary;
        this.f77646d = bufferSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super U> s9) {
        this.f76811b.G6(new b(new io.reactivex.rxjava3.subscribers.e(s9), this.f77646d, this.f77645c));
    }
}
