package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import java.util.Collection;
import java.util.concurrent.Callable;

/* compiled from: FlowableDistinct.java */
/* loaded from: classes3.dex */
public final class n0<T, K> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, K> f72340c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<? extends Collection<? super K>> f72341d;

    /* compiled from: FlowableDistinct.java */
    /* loaded from: classes3.dex */
    static final class a<T, K> extends io.reactivex.internal.subscribers.b<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final Collection<? super K> f72342f;

        /* renamed from: g  reason: collision with root package name */
        final n7.o<? super T, K> f72343g;

        a(org.reactivestreams.d<? super T> dVar, n7.o<? super T, K> oVar, Collection<? super K> collection) {
            super(dVar);
            this.f72343g = oVar;
            this.f72342f = collection;
        }

        @Override // io.reactivex.internal.subscribers.b, o7.o
        public void clear() {
            this.f72342f.clear();
            super.clear();
        }

        @Override // io.reactivex.internal.subscribers.b, org.reactivestreams.d
        public void onComplete() {
            if (this.f75822d) {
                return;
            }
            this.f75822d = true;
            this.f72342f.clear();
            this.f75819a.onComplete();
        }

        @Override // io.reactivex.internal.subscribers.b, org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75822d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75822d = true;
            this.f72342f.clear();
            this.f75819a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75822d) {
                return;
            }
            if (this.f75823e == 0) {
                try {
                    if (this.f72342f.add(io.reactivex.internal.functions.b.g(this.f72343g.apply(t9), "The keySelector returned a null key"))) {
                        this.f75819a.onNext(t9);
                        return;
                    } else {
                        this.f75820b.request(1L);
                        return;
                    }
                } catch (Throwable th) {
                    f(th);
                    return;
                }
            }
            this.f75819a.onNext(null);
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            T poll;
            while (true) {
                poll = this.f75821c.poll();
                if (poll == null || this.f72342f.add((Object) io.reactivex.internal.functions.b.g(this.f72343g.apply(poll), "The keySelector returned a null key"))) {
                    break;
                } else if (this.f75823e == 2) {
                    this.f75820b.request(1L);
                }
            }
            return poll;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public n0(io.reactivex.j<T> jVar, n7.o<? super T, K> oVar, Callable<? extends Collection<? super K>> callable) {
        super(jVar);
        this.f72340c = oVar;
        this.f72341d = callable;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        try {
            this.f71538b.j6(new a(dVar, this.f72340c, (Collection) io.reactivex.internal.functions.b.g(this.f72341d.call(), "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.")));
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
