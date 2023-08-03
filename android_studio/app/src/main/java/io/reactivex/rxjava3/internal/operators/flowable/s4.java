package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.ArrayListSupplier;
import java.util.Collection;

/* compiled from: FlowableToListSingle.java */
/* loaded from: classes4.dex */
public final class s4<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.core.p0<U> implements io.reactivex.rxjava3.internal.fuseable.d<U> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.m<T> f77940a;

    /* renamed from: b  reason: collision with root package name */
    final q7.s<U> f77941b;

    /* compiled from: FlowableToListSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super U> f77942a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f77943b;

        /* renamed from: c  reason: collision with root package name */
        U f77944c;

        a(io.reactivex.rxjava3.core.s0<? super U> actual, U collection) {
            this.f77942a = actual;
            this.f77944c = collection;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f77943b.cancel();
            this.f77943b = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f77943b == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77943b = SubscriptionHelper.CANCELLED;
            this.f77942a.onSuccess(this.f77944c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77944c = null;
            this.f77943b = SubscriptionHelper.CANCELLED;
            this.f77942a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77944c.add(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77943b, s9)) {
                this.f77943b = s9;
                this.f77942a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public s4(io.reactivex.rxjava3.core.m<T> source) {
        this(source, ArrayListSupplier.asSupplier());
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super U> observer) {
        try {
            this.f77940a.G6(new a(observer, (Collection) io.reactivex.rxjava3.internal.util.g.d(this.f77941b.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, observer);
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.d
    public io.reactivex.rxjava3.core.m<U> c() {
        return io.reactivex.rxjava3.plugins.a.P(new r4(this.f77940a, this.f77941b));
    }

    public s4(io.reactivex.rxjava3.core.m<T> source, q7.s<U> collectionSupplier) {
        this.f77940a = source;
        this.f77941b = collectionSupplier;
    }
}
