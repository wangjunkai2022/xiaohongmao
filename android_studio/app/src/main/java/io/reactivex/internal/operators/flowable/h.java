package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableAmb.java */
/* loaded from: classes3.dex */
public final class h<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T>[] f71952b;

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends org.reactivestreams.c<? extends T>> f71953c;

    /* compiled from: FlowableAmb.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71954a;

        /* renamed from: b  reason: collision with root package name */
        final b<T>[] f71955b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f71956c = new AtomicInteger();

        a(org.reactivestreams.d<? super T> dVar, int i4) {
            this.f71954a = dVar;
            this.f71955b = new b[i4];
        }

        public void a(org.reactivestreams.c<? extends T>[] cVarArr) {
            b<T>[] bVarArr = this.f71955b;
            int length = bVarArr.length;
            int i4 = 0;
            while (i4 < length) {
                int i10 = i4 + 1;
                bVarArr[i4] = new b<>(this, i10, this.f71954a);
                i4 = i10;
            }
            this.f71956c.lazySet(0);
            this.f71954a.onSubscribe(this);
            for (int i11 = 0; i11 < length && this.f71956c.get() == 0; i11++) {
                cVarArr[i11].i(bVarArr[i11]);
            }
        }

        public boolean b(int i4) {
            int i10 = 0;
            if (this.f71956c.get() == 0 && this.f71956c.compareAndSet(0, i4)) {
                b<T>[] bVarArr = this.f71955b;
                int length = bVarArr.length;
                while (i10 < length) {
                    int i11 = i10 + 1;
                    if (i11 != i4) {
                        bVarArr[i10].cancel();
                    }
                    i10 = i11;
                }
                return true;
            }
            return false;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f71956c.get() != -1) {
                this.f71956c.lazySet(-1);
                for (b<T> bVar : this.f71955b) {
                    bVar.cancel();
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                int i4 = this.f71956c.get();
                if (i4 > 0) {
                    this.f71955b[i4 - 1].request(j4);
                } else if (i4 == 0) {
                    for (b<T> bVar : this.f71955b) {
                        bVar.request(j4);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableAmb.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f71957f = -1185974347409665484L;

        /* renamed from: a  reason: collision with root package name */
        final a<T> f71958a;

        /* renamed from: b  reason: collision with root package name */
        final int f71959b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71960c;

        /* renamed from: d  reason: collision with root package name */
        boolean f71961d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f71962e = new AtomicLong();

        b(a<T> aVar, int i4, org.reactivestreams.d<? super T> dVar) {
            this.f71958a = aVar;
            this.f71959b = i4;
            this.f71960c = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71961d) {
                this.f71960c.onComplete();
            } else if (this.f71958a.b(this.f71959b)) {
                this.f71961d = true;
                this.f71960c.onComplete();
            } else {
                get().cancel();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71961d) {
                this.f71960c.onError(th);
            } else if (this.f71958a.b(this.f71959b)) {
                this.f71961d = true;
                this.f71960c.onError(th);
            } else {
                get().cancel();
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71961d) {
                this.f71960c.onNext(t9);
            } else if (this.f71958a.b(this.f71959b)) {
                this.f71961d = true;
                this.f71960c.onNext(t9);
            } else {
                get().cancel();
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this, this.f71962e, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this, this.f71962e, j4);
        }
    }

    public h(org.reactivestreams.c<? extends T>[] cVarArr, Iterable<? extends org.reactivestreams.c<? extends T>> iterable) {
        this.f71952b = cVarArr;
        this.f71953c = iterable;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        int length;
        org.reactivestreams.c<? extends T>[] cVarArr = this.f71952b;
        if (cVarArr == null) {
            cVarArr = new org.reactivestreams.c[8];
            try {
                length = 0;
                for (org.reactivestreams.c<? extends T> cVar : this.f71953c) {
                    if (cVar == null) {
                        EmptySubscription.error(new NullPointerException("One of the sources is null"), dVar);
                        return;
                    }
                    if (length == cVarArr.length) {
                        org.reactivestreams.c<? extends T>[] cVarArr2 = new org.reactivestreams.c[(length >> 2) + length];
                        System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
                        cVarArr = cVarArr2;
                    }
                    int i4 = length + 1;
                    cVarArr[length] = cVar;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptySubscription.error(th, dVar);
                return;
            }
        } else {
            length = cVarArr.length;
        }
        if (length == 0) {
            EmptySubscription.complete(dVar);
        } else if (length == 1) {
            cVarArr[0].i(dVar);
        } else {
            new a(dVar, length).a(cVarArr);
        }
    }
}
