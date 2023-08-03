package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;

/* compiled from: FlowableZipIterable.java */
/* loaded from: classes3.dex */
public final class a5<T, U, V> extends io.reactivex.internal.operators.flowable.a<T, V> {

    /* renamed from: c  reason: collision with root package name */
    final Iterable<U> f71580c;

    /* renamed from: d  reason: collision with root package name */
    final n7.c<? super T, ? super U, ? extends V> f71581d;

    /* compiled from: FlowableZipIterable.java */
    /* loaded from: classes3.dex */
    static final class a<T, U, V> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super V> f71582a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<U> f71583b;

        /* renamed from: c  reason: collision with root package name */
        final n7.c<? super T, ? super U, ? extends V> f71584c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f71585d;

        /* renamed from: e  reason: collision with root package name */
        boolean f71586e;

        a(org.reactivestreams.d<? super V> dVar, Iterator<U> it, n7.c<? super T, ? super U, ? extends V> cVar) {
            this.f71582a = dVar;
            this.f71583b = it;
            this.f71584c = cVar;
        }

        void a(Throwable th) {
            io.reactivex.exceptions.a.b(th);
            this.f71586e = true;
            this.f71585d.cancel();
            this.f71582a.onError(th);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f71585d.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71586e) {
                return;
            }
            this.f71586e = true;
            this.f71582a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71586e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f71586e = true;
            this.f71582a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71586e) {
                return;
            }
            try {
                try {
                    this.f71582a.onNext(io.reactivex.internal.functions.b.g(this.f71584c.apply(t9, io.reactivex.internal.functions.b.g(this.f71583b.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                    try {
                        if (this.f71583b.hasNext()) {
                            return;
                        }
                        this.f71586e = true;
                        this.f71585d.cancel();
                        this.f71582a.onComplete();
                    } catch (Throwable th) {
                        a(th);
                    }
                } catch (Throwable th2) {
                    a(th2);
                }
            } catch (Throwable th3) {
                a(th3);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71585d, eVar)) {
                this.f71585d = eVar;
                this.f71582a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f71585d.request(j4);
        }
    }

    public a5(io.reactivex.j<T> jVar, Iterable<U> iterable, n7.c<? super T, ? super U, ? extends V> cVar) {
        super(jVar);
        this.f71580c = iterable;
        this.f71581d = cVar;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super V> dVar) {
        try {
            Iterator it = (Iterator) io.reactivex.internal.functions.b.g(this.f71580c.iterator(), "The iterator returned by other is null");
            try {
                if (!it.hasNext()) {
                    EmptySubscription.complete(dVar);
                } else {
                    this.f71538b.j6(new a(dVar, it, this.f71581d));
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptySubscription.error(th, dVar);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptySubscription.error(th2, dVar);
        }
    }
}
