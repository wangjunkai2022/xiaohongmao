package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import java.util.Collection;
import java.util.Objects;

/* compiled from: FlowableDistinct.java */
/* loaded from: classes4.dex */
public final class m0<T, K> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, K> f77532c;

    /* renamed from: d  reason: collision with root package name */
    final q7.s<? extends Collection<? super K>> f77533d;

    /* compiled from: FlowableDistinct.java */
    /* loaded from: classes4.dex */
    static final class a<T, K> extends io.reactivex.rxjava3.internal.subscribers.b<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final Collection<? super K> f77534f;

        /* renamed from: g  reason: collision with root package name */
        final q7.o<? super T, K> f77535g;

        a(org.reactivestreams.d<? super T> actual, q7.o<? super T, K> keySelector, Collection<? super K> collection) {
            super(actual);
            this.f77535g = keySelector;
            this.f77534f = collection;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.b, io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f77534f.clear();
            super.clear();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.b, org.reactivestreams.d
        public void onComplete() {
            if (this.f81237d) {
                return;
            }
            this.f81237d = true;
            this.f77534f.clear();
            this.f81234a.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.b, org.reactivestreams.d
        public void onError(Throwable e4) {
            if (this.f81237d) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            this.f81237d = true;
            this.f77534f.clear();
            this.f81234a.onError(e4);
        }

        @Override // org.reactivestreams.d
        public void onNext(T value) {
            if (this.f81237d) {
                return;
            }
            if (this.f81238e == 0) {
                try {
                    K apply = this.f77535g.apply(value);
                    Objects.requireNonNull(apply, "The keySelector returned a null key");
                    if (this.f77534f.add(apply)) {
                        this.f81234a.onNext(value);
                        return;
                    } else {
                        this.f81235b.request(1L);
                        return;
                    }
                } catch (Throwable th) {
                    f(th);
                    return;
                }
            }
            this.f81234a.onNext(null);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            T poll;
            while (true) {
                poll = this.f81236c.poll();
                if (poll == null) {
                    break;
                }
                Collection<? super K> collection = this.f77534f;
                Object obj = (K) this.f77535g.apply(poll);
                Objects.requireNonNull(obj, "The keySelector returned a null key");
                if (collection.add(obj)) {
                    break;
                } else if (this.f81238e == 2) {
                    this.f81235b.request(1L);
                }
            }
            return poll;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public m0(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, K> keySelector, q7.s<? extends Collection<? super K>> collectionSupplier) {
        super(source);
        this.f77532c = keySelector;
        this.f77533d = collectionSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> subscriber) {
        try {
            this.f76811b.G6(new a(subscriber, this.f77532c, (Collection) io.reactivex.rxjava3.internal.util.g.d(this.f77533d.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
