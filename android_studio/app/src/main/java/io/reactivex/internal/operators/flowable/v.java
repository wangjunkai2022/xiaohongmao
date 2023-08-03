package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableConcatArray.java */
/* loaded from: classes3.dex */
public final class v<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T>[] f72843b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f72844c;

    /* compiled from: FlowableConcatArray.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends SubscriptionArbiter implements io.reactivex.o<T> {

        /* renamed from: q  reason: collision with root package name */
        private static final long f72845q = -8158322871608889516L;

        /* renamed from: j  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72846j;

        /* renamed from: k  reason: collision with root package name */
        final org.reactivestreams.c<? extends T>[] f72847k;

        /* renamed from: l  reason: collision with root package name */
        final boolean f72848l;

        /* renamed from: m  reason: collision with root package name */
        final AtomicInteger f72849m;

        /* renamed from: n  reason: collision with root package name */
        int f72850n;

        /* renamed from: o  reason: collision with root package name */
        List<Throwable> f72851o;

        /* renamed from: p  reason: collision with root package name */
        long f72852p;

        a(org.reactivestreams.c<? extends T>[] cVarArr, boolean z9, org.reactivestreams.d<? super T> dVar) {
            super(false);
            this.f72846j = dVar;
            this.f72847k = cVarArr;
            this.f72848l = z9;
            this.f72849m = new AtomicInteger();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72849m.getAndIncrement() == 0) {
                org.reactivestreams.c<? extends T>[] cVarArr = this.f72847k;
                int length = cVarArr.length;
                int i4 = this.f72850n;
                while (i4 != length) {
                    org.reactivestreams.c<? extends T> cVar = cVarArr[i4];
                    if (cVar == null) {
                        NullPointerException nullPointerException = new NullPointerException("A Publisher entry is null");
                        if (this.f72848l) {
                            List list = this.f72851o;
                            if (list == null) {
                                list = new ArrayList((length - i4) + 1);
                                this.f72851o = list;
                            }
                            list.add(nullPointerException);
                            i4++;
                        } else {
                            this.f72846j.onError(nullPointerException);
                            return;
                        }
                    } else {
                        long j4 = this.f72852p;
                        if (j4 != 0) {
                            this.f72852p = 0L;
                            produced(j4);
                        }
                        cVar.i(this);
                        i4++;
                        this.f72850n = i4;
                        if (this.f72849m.decrementAndGet() == 0) {
                            return;
                        }
                    }
                }
                List<Throwable> list2 = this.f72851o;
                if (list2 != null) {
                    if (list2.size() == 1) {
                        this.f72846j.onError(list2.get(0));
                        return;
                    } else {
                        this.f72846j.onError(new CompositeException(list2));
                        return;
                    }
                }
                this.f72846j.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72848l) {
                List list = this.f72851o;
                if (list == null) {
                    list = new ArrayList((this.f72847k.length - this.f72850n) + 1);
                    this.f72851o = list;
                }
                list.add(th);
                onComplete();
                return;
            }
            this.f72846j.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f72852p++;
            this.f72846j.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            setSubscription(eVar);
        }
    }

    public v(org.reactivestreams.c<? extends T>[] cVarArr, boolean z9) {
        this.f72843b = cVarArr;
        this.f72844c = z9;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar = new a(this.f72843b, this.f72844c, dVar);
        dVar.onSubscribe(aVar);
        aVar.onComplete();
    }
}
