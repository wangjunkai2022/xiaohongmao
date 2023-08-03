package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.operators.flowable.d2;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableCombineLatest.java */
/* loaded from: classes4.dex */
public final class t<T, R> extends io.reactivex.rxjava3.core.m<R> {
    @p7.f

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<? extends T>[] f77945b;
    @p7.f

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends org.reactivestreams.c<? extends T>> f77946c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super Object[], ? extends R> f77947d;

    /* renamed from: e  reason: collision with root package name */
    final int f77948e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f77949f;

    /* compiled from: FlowableCombineLatest.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends BasicIntQueueSubscription<R> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77950o = -5082275438355852221L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f77951b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super Object[], ? extends R> f77952c;

        /* renamed from: d  reason: collision with root package name */
        final b<T>[] f77953d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object> f77954e;

        /* renamed from: f  reason: collision with root package name */
        final Object[] f77955f;

        /* renamed from: g  reason: collision with root package name */
        final boolean f77956g;

        /* renamed from: h  reason: collision with root package name */
        boolean f77957h;

        /* renamed from: i  reason: collision with root package name */
        int f77958i;

        /* renamed from: j  reason: collision with root package name */
        int f77959j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f77960k;

        /* renamed from: l  reason: collision with root package name */
        final AtomicLong f77961l;

        /* renamed from: m  reason: collision with root package name */
        volatile boolean f77962m;

        /* renamed from: n  reason: collision with root package name */
        final AtomicThrowable f77963n;

        a(org.reactivestreams.d<? super R> actual, q7.o<? super Object[], ? extends R> combiner, int n9, int bufferSize, boolean delayErrors) {
            this.f77951b = actual;
            this.f77952c = combiner;
            b<T>[] bVarArr = new b[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                bVarArr[i4] = new b<>(this, i4, bufferSize);
            }
            this.f77953d = bVarArr;
            this.f77955f = new Object[n9];
            this.f77954e = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
            this.f77961l = new AtomicLong();
            this.f77963n = new AtomicThrowable();
            this.f77956g = delayErrors;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f77957h) {
                m();
            } else {
                l();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77960k = true;
            j();
            b();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f77954e.clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f77954e.isEmpty();
        }

        void j() {
            for (b<T> bVar : this.f77953d) {
                bVar.a();
            }
        }

        boolean k(boolean d4, boolean empty, org.reactivestreams.d<?> a10, io.reactivex.rxjava3.internal.queue.b<?> q9) {
            if (this.f77960k) {
                j();
                q9.clear();
                this.f77963n.tryTerminateAndReport();
                return true;
            } else if (d4) {
                if (this.f77956g) {
                    if (empty) {
                        j();
                        this.f77963n.tryTerminateConsumer(a10);
                        return true;
                    }
                    return false;
                }
                Throwable f10 = io.reactivex.rxjava3.internal.util.g.f(this.f77963n);
                if (f10 != null && f10 != io.reactivex.rxjava3.internal.util.g.f81331a) {
                    j();
                    q9.clear();
                    a10.onError(f10);
                    return true;
                } else if (empty) {
                    j();
                    a10.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void l() {
            int i4;
            org.reactivestreams.d<? super R> dVar = this.f77951b;
            io.reactivex.rxjava3.internal.queue.b<?> bVar = this.f77954e;
            int i10 = 1;
            do {
                long j4 = this.f77961l.get();
                long j10 = 0;
                while (true) {
                    i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    }
                    boolean z9 = this.f77962m;
                    Object poll = bVar.poll();
                    boolean z10 = poll == null;
                    if (k(z9, z10, dVar, bVar)) {
                        return;
                    }
                    if (z10) {
                        break;
                    }
                    try {
                        Object obj = (R) this.f77952c.apply((Object[]) bVar.poll());
                        Objects.requireNonNull(obj, "The combiner returned a null value");
                        dVar.onNext(obj);
                        ((b) poll).b();
                        j10++;
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        j();
                        io.reactivex.rxjava3.internal.util.g.a(this.f77963n, th);
                        dVar.onError(io.reactivex.rxjava3.internal.util.g.f(this.f77963n));
                        return;
                    }
                }
                if (i4 == 0 && k(this.f77962m, bVar.isEmpty(), dVar, bVar)) {
                    return;
                }
                if (j10 != 0 && j4 != Long.MAX_VALUE) {
                    this.f77961l.addAndGet(-j10);
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        void m() {
            org.reactivestreams.d<? super R> dVar = this.f77951b;
            io.reactivex.rxjava3.internal.queue.b<Object> bVar = this.f77954e;
            int i4 = 1;
            while (!this.f77960k) {
                Throwable th = this.f77963n.get();
                if (th != null) {
                    bVar.clear();
                    dVar.onError(th);
                    return;
                }
                boolean z9 = this.f77962m;
                boolean isEmpty = bVar.isEmpty();
                if (!isEmpty) {
                    dVar.onNext(null);
                }
                if (z9 && isEmpty) {
                    dVar.onComplete();
                    return;
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
            bVar.clear();
        }

        void n(int index) {
            synchronized (this) {
                Object[] objArr = this.f77955f;
                if (objArr[index] != null) {
                    int i4 = this.f77959j + 1;
                    if (i4 == objArr.length) {
                        this.f77962m = true;
                    } else {
                        this.f77959j = i4;
                        return;
                    }
                } else {
                    this.f77962m = true;
                }
                b();
            }
        }

        void o(int index, Throwable e4) {
            if (io.reactivex.rxjava3.internal.util.g.a(this.f77963n, e4)) {
                if (!this.f77956g) {
                    j();
                    this.f77962m = true;
                    b();
                    return;
                }
                n(index);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        void p(int index, T value) {
            boolean z9;
            synchronized (this) {
                Object[] objArr = this.f77955f;
                int i4 = this.f77958i;
                if (objArr[index] == null) {
                    i4++;
                    this.f77958i = i4;
                }
                objArr[index] = value;
                if (objArr.length == i4) {
                    this.f77954e.offer(this.f77953d[index], objArr.clone());
                    z9 = false;
                } else {
                    z9 = true;
                }
            }
            if (z9) {
                this.f77953d[index].b();
            } else {
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public R poll() throws Throwable {
            Object poll = this.f77954e.poll();
            if (poll == null) {
                return null;
            }
            R apply = this.f77952c.apply((Object[]) this.f77954e.poll());
            Objects.requireNonNull(apply, "The combiner returned a null value");
            ((b) poll).b();
            return apply;
        }

        void q(org.reactivestreams.c<? extends T>[] sources, int n9) {
            b<T>[] bVarArr = this.f77953d;
            for (int i4 = 0; i4 < n9 && !this.f77962m && !this.f77960k; i4++) {
                sources[i4].i(bVarArr[i4]);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77961l, n9);
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int requestedMode) {
            if ((requestedMode & 4) != 0) {
                return 0;
            }
            int i4 = requestedMode & 2;
            this.f77957h = i4 != 0;
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableCombineLatest.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f77964f = -8730235182291002949L;

        /* renamed from: a  reason: collision with root package name */
        final a<T, ?> f77965a;

        /* renamed from: b  reason: collision with root package name */
        final int f77966b;

        /* renamed from: c  reason: collision with root package name */
        final int f77967c;

        /* renamed from: d  reason: collision with root package name */
        final int f77968d;

        /* renamed from: e  reason: collision with root package name */
        int f77969e;

        b(a<T, ?> parent, int index, int prefetch) {
            this.f77965a = parent;
            this.f77966b = index;
            this.f77967c = prefetch;
            this.f77968d = prefetch - (prefetch >> 2);
        }

        public void a() {
            SubscriptionHelper.cancel(this);
        }

        public void b() {
            int i4 = this.f77969e + 1;
            if (i4 == this.f77968d) {
                this.f77969e = 0;
                get().request(i4);
                return;
            }
            this.f77969e = i4;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f77965a.n(this.f77966b);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            this.f77965a.o(this.f77966b, t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f77965a.p(this.f77966b, t9);
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            SubscriptionHelper.setOnce(this, s9, this.f77967c);
        }
    }

    /* compiled from: FlowableCombineLatest.java */
    /* loaded from: classes4.dex */
    final class c implements q7.o<T, R> {
        c() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // q7.o
        public R apply(T t9) throws Throwable {
            return t.this.f77947d.apply(new Object[]{t9});
        }
    }

    public t(@p7.e org.reactivestreams.c<? extends T>[] array, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize, boolean delayErrors) {
        this.f77945b = array;
        this.f77946c = null;
        this.f77947d = combiner;
        this.f77948e = bufferSize;
        this.f77949f = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super R> s9) {
        int length;
        org.reactivestreams.c<? extends T>[] cVarArr = this.f77945b;
        if (cVarArr == null) {
            cVarArr = new org.reactivestreams.c[8];
            try {
                length = 0;
                for (org.reactivestreams.c<? extends T> cVar : this.f77946c) {
                    if (length == cVarArr.length) {
                        org.reactivestreams.c<? extends T>[] cVarArr2 = new org.reactivestreams.c[(length >> 2) + length];
                        System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
                        cVarArr = cVarArr2;
                    }
                    int i4 = length + 1;
                    Objects.requireNonNull(cVar, "The Iterator returned a null Publisher");
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
        int i10 = length;
        if (i10 == 0) {
            EmptySubscription.complete(s9);
        } else if (i10 == 1) {
            cVarArr[0].i(new d2.b(s9, new c()));
        } else {
            a aVar = new a(s9, this.f77947d, i10, this.f77948e, this.f77949f);
            s9.onSubscribe(aVar);
            aVar.q(cVarArr, i10);
        }
    }

    public t(@p7.e Iterable<? extends org.reactivestreams.c<? extends T>> iterable, @p7.e q7.o<? super Object[], ? extends R> combiner, int bufferSize, boolean delayErrors) {
        this.f77945b = null;
        this.f77946c = iterable;
        this.f77947d = combiner;
        this.f77948e = bufferSize;
        this.f77949f = delayErrors;
    }
}
