package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableAmb.java */
/* loaded from: classes4.dex */
public final class h<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T>[] f77271b;

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends org.reactivestreams.c<? extends T>> f77272c;

    /* compiled from: FlowableAmb.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77273a;

        /* renamed from: b  reason: collision with root package name */
        final b<T>[] f77274b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicInteger f77275c = new AtomicInteger();

        a(org.reactivestreams.d<? super T> actual, int count) {
            this.f77273a = actual;
            this.f77274b = new b[count];
        }

        public void a(org.reactivestreams.c<? extends T>[] sources) {
            b<T>[] bVarArr = this.f77274b;
            int length = bVarArr.length;
            int i4 = 0;
            while (i4 < length) {
                int i10 = i4 + 1;
                bVarArr[i4] = new b<>(this, i10, this.f77273a);
                i4 = i10;
            }
            this.f77275c.lazySet(0);
            this.f77273a.onSubscribe(this);
            for (int i11 = 0; i11 < length && this.f77275c.get() == 0; i11++) {
                sources[i11].i(bVarArr[i11]);
            }
        }

        public boolean b(int index) {
            int i4 = 0;
            if (this.f77275c.get() == 0 && this.f77275c.compareAndSet(0, index)) {
                b<T>[] bVarArr = this.f77274b;
                int length = bVarArr.length;
                while (i4 < length) {
                    int i10 = i4 + 1;
                    if (i10 != index) {
                        bVarArr[i4].cancel();
                    }
                    i4 = i10;
                }
                return true;
            }
            return false;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f77275c.get() != -1) {
                this.f77275c.lazySet(-1);
                for (b<T> bVar : this.f77274b) {
                    bVar.cancel();
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                int i4 = this.f77275c.get();
                if (i4 > 0) {
                    this.f77274b[i4 - 1].request(n9);
                } else if (i4 == 0) {
                    for (b<T> bVar : this.f77274b) {
                        bVar.request(n9);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableAmb.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: f  reason: collision with root package name */
        private static final long f77276f = -1185974347409665484L;

        /* renamed from: a  reason: collision with root package name */
        final a<T> f77277a;

        /* renamed from: b  reason: collision with root package name */
        final int f77278b;

        /* renamed from: c  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77279c;

        /* renamed from: d  reason: collision with root package name */
        boolean f77280d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicLong f77281e = new AtomicLong();

        b(a<T> parent, int index, org.reactivestreams.d<? super T> downstream) {
            this.f77277a = parent;
            this.f77278b = index;
            this.f77279c = downstream;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77280d) {
                this.f77279c.onComplete();
            } else if (this.f77277a.b(this.f77278b)) {
                this.f77280d = true;
                this.f77279c.onComplete();
            } else {
                get().cancel();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77280d) {
                this.f77279c.onError(t9);
            } else if (this.f77277a.b(this.f77278b)) {
                this.f77280d = true;
                this.f77279c.onError(t9);
            } else {
                get().cancel();
                io.reactivex.rxjava3.plugins.a.Y(t9);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77280d) {
                this.f77279c.onNext(t9);
            } else if (this.f77277a.b(this.f77278b)) {
                this.f77280d = true;
                this.f77279c.onNext(t9);
            } else {
                get().cancel();
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this, this.f77281e, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this, this.f77281e, n9);
        }
    }

    public h(org.reactivestreams.c<? extends T>[] sources, Iterable<? extends org.reactivestreams.c<? extends T>> sourcesIterable) {
        this.f77271b = sources;
        this.f77272c = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        int length;
        org.reactivestreams.c<? extends T>[] cVarArr = this.f77271b;
        if (cVarArr == null) {
            cVarArr = new org.reactivestreams.c[8];
            try {
                length = 0;
                for (org.reactivestreams.c<? extends T> cVar : this.f77272c) {
                    if (cVar == null) {
                        EmptySubscription.error(new NullPointerException("One of the sources is null"), s9);
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
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptySubscription.error(th, s9);
                return;
            }
        } else {
            length = cVarArr.length;
        }
        if (length == 0) {
            EmptySubscription.complete(s9);
        } else if (length == 1) {
            cVarArr[0].i(s9);
        } else {
            new a(s9, length).a(cVarArr);
        }
    }
}
