package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: FlowableWithLatestFromMany.java */
/* loaded from: classes4.dex */
public final class b5<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {
    @p7.f

    /* renamed from: c  reason: collision with root package name */
    final org.reactivestreams.c<?>[] f76907c;
    @p7.f

    /* renamed from: d  reason: collision with root package name */
    final Iterable<? extends org.reactivestreams.c<?>> f76908d;

    /* renamed from: e  reason: collision with root package name */
    final q7.o<? super Object[], R> f76909e;

    /* compiled from: FlowableWithLatestFromMany.java */
    /* loaded from: classes4.dex */
    final class a implements q7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // q7.o
        public R apply(T t9) throws Throwable {
            R apply = b5.this.f76909e.apply(new Object[]{t9});
            Objects.requireNonNull(apply, "The combiner returned a null value");
            return apply;
        }
    }

    /* compiled from: FlowableWithLatestFromMany.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.rxjava3.internal.fuseable.c<T>, org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f76911i = 1577321883966341961L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f76912a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Object[], R> f76913b;

        /* renamed from: c  reason: collision with root package name */
        final c[] f76914c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceArray<Object> f76915d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f76916e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f76917f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicThrowable f76918g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f76919h;

        b(org.reactivestreams.d<? super R> actual, q7.o<? super Object[], R> combiner, int n9) {
            this.f76912a = actual;
            this.f76913b = combiner;
            c[] cVarArr = new c[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                cVarArr[i4] = new c(this, i4);
            }
            this.f76914c = cVarArr;
            this.f76915d = new AtomicReferenceArray<>(n9);
            this.f76916e = new AtomicReference<>();
            this.f76917f = new AtomicLong();
            this.f76918g = new AtomicThrowable();
        }

        void a(int index) {
            c[] cVarArr = this.f76914c;
            for (int i4 = 0; i4 < cVarArr.length; i4++) {
                if (i4 != index) {
                    cVarArr[i4].a();
                }
            }
        }

        void b(int index, boolean nonEmpty) {
            if (nonEmpty) {
                return;
            }
            this.f76919h = true;
            SubscriptionHelper.cancel(this.f76916e);
            a(index);
            io.reactivex.rxjava3.internal.util.h.b(this.f76912a, this, this.f76918g);
        }

        void c(int index, Throwable t9) {
            this.f76919h = true;
            SubscriptionHelper.cancel(this.f76916e);
            a(index);
            io.reactivex.rxjava3.internal.util.h.d(this.f76912a, t9, this, this.f76918g);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            SubscriptionHelper.cancel(this.f76916e);
            for (c cVar : this.f76914c) {
                cVar.a();
            }
        }

        void d(int index, Object o9) {
            this.f76915d.set(index, o9);
        }

        void e(org.reactivestreams.c<?>[] others, int n9) {
            c[] cVarArr = this.f76914c;
            AtomicReference<org.reactivestreams.e> atomicReference = this.f76916e;
            for (int i4 = 0; i4 < n9 && atomicReference.get() != SubscriptionHelper.CANCELLED; i4++) {
                others[i4].i(cVarArr[i4]);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f76919h) {
                return false;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f76915d;
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
                R apply = this.f76913b.apply(objArr);
                Objects.requireNonNull(apply, "The combiner returned a null value");
                io.reactivex.rxjava3.internal.util.h.f(this.f76912a, apply, this, this.f76918g);
                return true;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                cancel();
                onError(th);
                return false;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76919h) {
                return;
            }
            this.f76919h = true;
            a(-1);
            io.reactivex.rxjava3.internal.util.h.b(this.f76912a, this, this.f76918g);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76919h) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76919h = true;
            a(-1);
            io.reactivex.rxjava3.internal.util.h.d(this.f76912a, t9, this, this.f76918g);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (h(t9) || this.f76919h) {
                return;
            }
            this.f76916e.get().request(1L);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.deferredSetOnce(this.f76916e, this.f76917f, s9);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            SubscriptionHelper.deferredRequest(this.f76916e, this.f76917f, n9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableWithLatestFromMany.java */
    /* loaded from: classes4.dex */
    public static final class c extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<Object> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76920d = 3256684027868224024L;

        /* renamed from: a  reason: collision with root package name */
        final b<?, ?> f76921a;

        /* renamed from: b  reason: collision with root package name */
        final int f76922b;

        /* renamed from: c  reason: collision with root package name */
        boolean f76923c;

        c(b<?, ?> parent, int index) {
            this.f76921a = parent;
            this.f76922b = index;
        }

        void a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f76921a.b(this.f76922b, this.f76923c);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f76921a.c(this.f76922b, t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(Object t9) {
            if (!this.f76923c) {
                this.f76923c = true;
            }
            this.f76921a.d(this.f76922b, t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, Long.MAX_VALUE);
        }
    }

    public b5(@p7.e io.reactivex.rxjava3.core.m<T> source, @p7.e org.reactivestreams.c<?>[] otherArray, q7.o<? super Object[], R> combiner) {
        super(source);
        this.f76907c = otherArray;
        this.f76908d = null;
        this.f76909e = combiner;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super R> s9) {
        int length;
        org.reactivestreams.c<?>[] cVarArr = this.f76907c;
        if (cVarArr == null) {
            cVarArr = new org.reactivestreams.c[8];
            try {
                length = 0;
                for (org.reactivestreams.c<?> cVar : this.f76908d) {
                    if (length == cVarArr.length) {
                        cVarArr = (org.reactivestreams.c[]) Arrays.copyOf(cVarArr, (length >> 1) + length);
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
            new d2(this.f76811b, new a()).H6(s9);
            return;
        }
        b bVar = new b(s9, this.f76909e, length);
        s9.onSubscribe(bVar);
        bVar.e(cVarArr, length);
        this.f76811b.G6(bVar);
    }

    public b5(@p7.e io.reactivex.rxjava3.core.m<T> source, @p7.e Iterable<? extends org.reactivestreams.c<?>> otherIterable, @p7.e q7.o<? super Object[], R> combiner) {
        super(source);
        this.f76907c = null;
        this.f76908d = otherIterable;
        this.f76909e = combiner;
    }
}
