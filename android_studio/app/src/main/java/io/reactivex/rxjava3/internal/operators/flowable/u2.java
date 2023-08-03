package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowablePublish.java */
/* loaded from: classes4.dex */
public final class u2<T> extends io.reactivex.rxjava3.flowables.a<T> implements io.reactivex.rxjava3.internal.fuseable.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f78008b;

    /* renamed from: c  reason: collision with root package name */
    final int f78009c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<b<T>> f78010d = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowablePublish.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicLong implements org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f78011d = 2845000326761540265L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f78012a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f78013b;

        /* renamed from: c  reason: collision with root package name */
        long f78014c;

        a(org.reactivestreams.d<? super T> downstream, b<T> parent) {
            this.f78012a = downstream;
            this.f78013b = parent;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f78013b.d(this);
                this.f78013b.c();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.b(this, n9);
                this.f78013b.c();
            }
        }
    }

    /* compiled from: FlowablePublish.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: k  reason: collision with root package name */
        private static final long f78015k = -1672047311619175801L;

        /* renamed from: l  reason: collision with root package name */
        static final a[] f78016l = new a[0];

        /* renamed from: m  reason: collision with root package name */
        static final a[] f78017m = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<b<T>> f78018a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f78019b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f78020c = new AtomicBoolean();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<a<T>[]> f78021d = new AtomicReference<>(f78016l);

        /* renamed from: e  reason: collision with root package name */
        final int f78022e;

        /* renamed from: f  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.q<T> f78023f;

        /* renamed from: g  reason: collision with root package name */
        int f78024g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f78025h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f78026i;

        /* renamed from: j  reason: collision with root package name */
        int f78027j;

        b(AtomicReference<b<T>> current, int bufferSize) {
            this.f78018a = current;
            this.f78022e = bufferSize;
        }

        boolean a(a<T> inner) {
            a<T>[] aVarArr;
            a<T>[] aVarArr2;
            do {
                aVarArr = this.f78021d.get();
                if (aVarArr == f78017m) {
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = inner;
            } while (!this.f78021d.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        boolean b(boolean isDone, boolean isEmpty) {
            a<T>[] andSet;
            if (isDone && isEmpty) {
                Throwable th = this.f78026i;
                if (th != null) {
                    e(th);
                    return true;
                }
                for (a<T> aVar : this.f78021d.getAndSet(f78017m)) {
                    if (!aVar.a()) {
                        aVar.f78012a.onComplete();
                    }
                }
                return true;
            }
            return false;
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar = this.f78023f;
            int i4 = this.f78027j;
            int i10 = this.f78022e;
            int i11 = i10 - (i10 >> 2);
            boolean z9 = this.f78024g != 1;
            int i12 = 1;
            io.reactivex.rxjava3.internal.fuseable.q<T> qVar2 = qVar;
            int i13 = i4;
            while (true) {
                if (qVar2 != null) {
                    long j4 = Long.MAX_VALUE;
                    a<T>[] aVarArr = this.f78021d.get();
                    boolean z10 = false;
                    for (a<T> aVar : aVarArr) {
                        long j10 = aVar.get();
                        if (j10 != Long.MIN_VALUE) {
                            j4 = Math.min(j10 - aVar.f78014c, j4);
                            z10 = true;
                        }
                    }
                    if (!z10) {
                        j4 = 0;
                    }
                    for (long j11 = 0; j4 != j11; j11 = 0) {
                        boolean z11 = this.f78025h;
                        try {
                            T poll = qVar2.poll();
                            boolean z12 = poll == null;
                            if (b(z11, z12)) {
                                return;
                            }
                            if (z12) {
                                break;
                            }
                            for (a<T> aVar2 : aVarArr) {
                                if (!aVar2.a()) {
                                    aVar2.f78012a.onNext(poll);
                                    aVar2.f78014c++;
                                }
                            }
                            if (z9 && (i13 = i13 + 1) == i11) {
                                this.f78019b.get().request(i11);
                                i13 = 0;
                            }
                            j4--;
                            if (aVarArr != this.f78021d.get()) {
                                break;
                            }
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            this.f78019b.get().cancel();
                            qVar2.clear();
                            this.f78025h = true;
                            e(th);
                            return;
                        }
                    }
                    if (b(this.f78025h, qVar2.isEmpty())) {
                        return;
                    }
                }
                this.f78027j = i13;
                i12 = addAndGet(-i12);
                if (i12 == 0) {
                    return;
                }
                if (qVar2 == null) {
                    qVar2 = this.f78023f;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void d(a<T> inner) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f78021d.get();
                int length = aVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (aVarArr[i10] == inner) {
                        i4 = i10;
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i4 < 0) {
                    return;
                }
                if (length == 1) {
                    aVarArr2 = f78016l;
                } else {
                    a[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                    System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.f78021d.compareAndSet(aVarArr, aVarArr2));
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78021d.getAndSet(f78017m);
            this.f78018a.compareAndSet(this, null);
            SubscriptionHelper.cancel(this.f78019b);
        }

        void e(Throwable ex) {
            a<T>[] andSet;
            for (a<T> aVar : this.f78021d.getAndSet(f78017m)) {
                if (!aVar.a()) {
                    aVar.f78012a.onError(ex);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78021d.get() == f78017m;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f78025h = true;
            c();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f78025h) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f78026i = t9;
            this.f78025h = true;
            c();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f78024g == 0 && !this.f78023f.offer(t9)) {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            } else {
                c();
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.setOnce(this.f78019b, s9)) {
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f78024g = requestFusion;
                        this.f78023f = nVar;
                        this.f78025h = true;
                        c();
                        return;
                    } else if (requestFusion == 2) {
                        this.f78024g = requestFusion;
                        this.f78023f = nVar;
                        s9.request(this.f78022e);
                        return;
                    }
                }
                this.f78023f = new SpscArrayQueue(this.f78022e);
                s9.request(this.f78022e);
            }
        }
    }

    public u2(org.reactivestreams.c<T> source, int bufferSize) {
        this.f78008b = source;
        this.f78009c = bufferSize;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        b<T> bVar;
        while (true) {
            bVar = this.f78010d.get();
            if (bVar != null) {
                break;
            }
            b<T> bVar2 = new b<>(this.f78010d, this.f78009c);
            if (this.f78010d.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        a<T> aVar = new a<>(s9, bVar);
        s9.onSubscribe(aVar);
        if (bVar.a(aVar)) {
            if (aVar.a()) {
                bVar.d(aVar);
                return;
            } else {
                bVar.c();
                return;
            }
        }
        Throwable th = bVar.f78026i;
        if (th != null) {
            aVar.f78012a.onError(th);
        } else {
            aVar.f78012a.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.flowables.a
    public void k9(q7.g<? super io.reactivex.rxjava3.disposables.f> connection) {
        b<T> bVar;
        while (true) {
            bVar = this.f78010d.get();
            if (bVar != null && !bVar.isDisposed()) {
                break;
            }
            b<T> bVar2 = new b<>(this.f78010d, this.f78009c);
            if (this.f78010d.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        boolean z9 = true;
        z9 = (bVar.f78020c.get() || !bVar.f78020c.compareAndSet(false, true)) ? false : false;
        try {
            connection.accept(bVar);
            if (z9) {
                this.f78008b.i(bVar);
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            throw io.reactivex.rxjava3.internal.util.g.i(th);
        }
    }

    @Override // io.reactivex.rxjava3.flowables.a
    public void r9() {
        b<T> bVar = this.f78010d.get();
        if (bVar == null || !bVar.isDisposed()) {
            return;
        }
        this.f78010d.compareAndSet(bVar, null);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.j
    public org.reactivestreams.c<T> source() {
        return this.f78008b;
    }
}
