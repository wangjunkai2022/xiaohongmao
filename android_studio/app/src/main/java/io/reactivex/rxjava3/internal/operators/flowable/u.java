package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionArbiter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableConcatArray.java */
/* loaded from: classes4.dex */
public final class u<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T>[] f77994b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f77995c;

    /* compiled from: FlowableConcatArray.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends SubscriptionArbiter implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f77996q = -8158322871608889516L;

        /* renamed from: j  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77997j;

        /* renamed from: k  reason: collision with root package name */
        final org.reactivestreams.c<? extends T>[] f77998k;

        /* renamed from: l  reason: collision with root package name */
        final boolean f77999l;

        /* renamed from: m  reason: collision with root package name */
        final AtomicInteger f78000m;

        /* renamed from: n  reason: collision with root package name */
        int f78001n;

        /* renamed from: o  reason: collision with root package name */
        List<Throwable> f78002o;

        /* renamed from: p  reason: collision with root package name */
        long f78003p;

        a(org.reactivestreams.c<? extends T>[] sources, boolean delayError, org.reactivestreams.d<? super T> downstream) {
            super(false);
            this.f77997j = downstream;
            this.f77998k = sources;
            this.f77999l = delayError;
            this.f78000m = new AtomicInteger();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f78000m.getAndIncrement() == 0) {
                org.reactivestreams.c<? extends T>[] cVarArr = this.f77998k;
                int length = cVarArr.length;
                int i4 = this.f78001n;
                while (i4 != length) {
                    org.reactivestreams.c<? extends T> cVar = cVarArr[i4];
                    if (cVar == null) {
                        NullPointerException nullPointerException = new NullPointerException("A Publisher entry is null");
                        if (this.f77999l) {
                            List list = this.f78002o;
                            if (list == null) {
                                list = new ArrayList((length - i4) + 1);
                                this.f78002o = list;
                            }
                            list.add(nullPointerException);
                            i4++;
                        } else {
                            this.f77997j.onError(nullPointerException);
                            return;
                        }
                    } else {
                        long j4 = this.f78003p;
                        if (j4 != 0) {
                            this.f78003p = 0L;
                            produced(j4);
                        }
                        cVar.i(this);
                        i4++;
                        this.f78001n = i4;
                        if (this.f78000m.decrementAndGet() == 0) {
                            return;
                        }
                    }
                }
                List<Throwable> list2 = this.f78002o;
                if (list2 != null) {
                    if (list2.size() == 1) {
                        this.f77997j.onError(list2.get(0));
                        return;
                    } else {
                        this.f77997j.onError(new CompositeException(list2));
                        return;
                    }
                }
                this.f77997j.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77999l) {
                List list = this.f78002o;
                if (list == null) {
                    list = new ArrayList((this.f77998k.length - this.f78001n) + 1);
                    this.f78002o = list;
                }
                list.add(t9);
                onComplete();
                return;
            }
            this.f77997j.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f78003p++;
            this.f77997j.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            setSubscription(s9);
        }
    }

    public u(org.reactivestreams.c<? extends T>[] sources, boolean delayError) {
        this.f77994b = sources;
        this.f77995c = delayError;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        a aVar = new a(this.f77994b, this.f77995c, s9);
        s9.onSubscribe(aVar);
        aVar.onComplete();
    }
}
