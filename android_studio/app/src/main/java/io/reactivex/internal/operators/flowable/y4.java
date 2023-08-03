package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: FlowableWithLatestFromMany.java */
/* loaded from: classes3.dex */
public final class y4<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {
    @m7.f

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<?>[] f73048c;
    @m7.f

    /* renamed from: d  reason: collision with root package name */
    final Iterable<? extends org.reactivestreams.c<?>> f73049d;

    /* renamed from: e  reason: collision with root package name */
    final n7.o<? super Object[], R> f73050e;

    /* compiled from: FlowableWithLatestFromMany.java */
    /* loaded from: classes3.dex */
    final class a implements n7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // n7.o
        public R apply(T t9) throws Exception {
            return (R) io.reactivex.internal.functions.b.g(y4.this.f73050e.apply(new Object[]{t9}), "The combiner returned a null value");
        }
    }

    /* compiled from: FlowableWithLatestFromMany.java */
    /* loaded from: classes3.dex */
    static final class b<T, R> extends AtomicInteger implements o7.a<T>, org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f73052i = 1577321883966341961L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f73053a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Object[], R> f73054b;

        /* renamed from: c  reason: collision with root package name */
        final c[] f73055c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceArray<Object> f73056d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f73057e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f73058f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f73059g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f73060h;

        b(org.reactivestreams.d<? super R> dVar, n7.o<? super Object[], R> oVar, int i4) {
            this.f73053a = dVar;
            this.f73054b = oVar;
            c[] cVarArr = new c[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                cVarArr[i10] = new c(this, i10);
            }
            this.f73055c = cVarArr;
            this.f73056d = new AtomicReferenceArray<>(i4);
            this.f73057e = new AtomicReference<>();
            this.f73058f = new AtomicLong();
            this.f73059g = new AtomicThrowable();
        }

        void a(int i4) {
            c[] cVarArr = this.f73055c;
            for (int i10 = 0; i10 < cVarArr.length; i10++) {
                if (i10 != i4) {
                    cVarArr[i10].a();
                }
            }
        }

        void b(int i4, boolean z9) {
            if (z9) {
                return;
            }
            this.f73060h = true;
            SubscriptionHelper.cancel(this.f73057e);
            a(i4);
            io.reactivex.internal.util.h.b(this.f73053a, this, this.f73059g);
        }

        void c(int i4, Throwable th) {
            this.f73060h = true;
            SubscriptionHelper.cancel(this.f73057e);
            a(i4);
            io.reactivex.internal.util.h.d(this.f73053a, th, this, this.f73059g);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f73057e);
            for (c cVar : this.f73055c) {
                cVar.a();
            }
        }

        void d(int i4, Object obj) {
            this.f73056d.set(i4, obj);
        }

        void e(org.reactivestreams.c<?>[] cVarArr, int i4) {
            c[] cVarArr2 = this.f73055c;
            AtomicReference<org.reactivestreams.e> atomicReference = this.f73057e;
            for (int i10 = 0; i10 < i4 && atomicReference.get() != SubscriptionHelper.CANCELLED; i10++) {
                cVarArr[i10].i(cVarArr2[i10]);
            }
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (this.f73060h) {
                return false;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f73056d;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            objArr[0] = t9;
            int i4 = 0;
            while (i4 < length) {
                Object obj = atomicReferenceArray.get(i4);
                if (obj == null) {
                    return false;
                }
                i4++;
                objArr[i4] = obj;
            }
            try {
                io.reactivex.internal.util.h.f(this.f73053a, io.reactivex.internal.functions.b.g(this.f73054b.apply(objArr), "The combiner returned a null value"), this, this.f73059g);
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cancel();
                onError(th);
                return false;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f73060h) {
                return;
            }
            this.f73060h = true;
            a(-1);
            io.reactivex.internal.util.h.b(this.f73053a, this, this.f73059g);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73060h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f73060h = true;
            a(-1);
            io.reactivex.internal.util.h.d(this.f73053a, th, this, this.f73059g);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f73060h) {
                return;
            }
            this.f73057e.get().request(1L);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.deferredSetOnce(this.f73057e, this.f73058f, eVar);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            SubscriptionHelper.deferredRequest(this.f73057e, this.f73058f, j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWithLatestFromMany.java */
    /* loaded from: classes3.dex */
    public static final class c extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<Object> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f73061d = 3256684027868224024L;

        /* renamed from: a  reason: collision with root package name */
        final b<?, ?> f73062a;

        /* renamed from: b  reason: collision with root package name */
        final int f73063b;

        /* renamed from: c  reason: collision with root package name */
        boolean f73064c;

        c(b<?, ?> bVar, int i4) {
            this.f73062a = bVar;
            this.f73063b = i4;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73062a.b(this.f73063b, this.f73064c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            this.f73062a.c(this.f73063b, th);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object obj) {
            if (!this.f73064c) {
                this.f73064c = true;
            }
            this.f73062a.d(this.f73063b, obj);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            SubscriptionHelper.setOnce(this, eVar, Long.MAX_VALUE);
        }
    }

    public y4(@m7.e io.reactivex.j<T> jVar, @m7.e org.reactivestreams.c<?>[] cVarArr, n7.o<? super Object[], R> oVar) {
        super(jVar);
        this.f73048c = cVarArr;
        this.f73049d = null;
        this.f73050e = oVar;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        int length;
        org.reactivestreams.c<?>[] cVarArr = this.f73048c;
        if (cVarArr == null) {
            cVarArr = new org.reactivestreams.c[8];
            try {
                length = 0;
                for (org.reactivestreams.c<?> cVar : this.f73049d) {
                    if (length == cVarArr.length) {
                        cVarArr = (org.reactivestreams.c[]) Arrays.copyOf(cVarArr, (length >> 1) + length);
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
            new z1(this.f71538b, new a()).k6(dVar);
            return;
        }
        b bVar = new b(dVar, this.f73050e, length);
        dVar.onSubscribe(bVar);
        bVar.e(cVarArr, length);
        this.f71538b.j6(bVar);
    }

    public y4(@m7.e io.reactivex.j<T> jVar, @m7.e Iterable<? extends org.reactivestreams.c<?>> iterable, @m7.e n7.o<? super Object[], R> oVar) {
        super(jVar);
        this.f73048c = null;
        this.f73049d = iterable;
        this.f73050e = oVar;
    }
}
