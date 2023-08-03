package io.reactivex.processors;

import io.reactivex.annotations.BackpressureKind;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import o7.l;
import o7.o;

/* compiled from: MulticastProcessor.java */
@m7.a(BackpressureKind.FULL)
@m7.g("none")
/* loaded from: classes4.dex */
public final class d<T> extends c<T> {

    /* renamed from: n  reason: collision with root package name */
    static final a[] f76027n = new a[0];

    /* renamed from: o  reason: collision with root package name */
    static final a[] f76028o = new a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicInteger f76029b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<org.reactivestreams.e> f76030c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<a<T>[]> f76031d;

    /* renamed from: e  reason: collision with root package name */
    final AtomicBoolean f76032e;

    /* renamed from: f  reason: collision with root package name */
    final int f76033f;

    /* renamed from: g  reason: collision with root package name */
    final int f76034g;

    /* renamed from: h  reason: collision with root package name */
    final boolean f76035h;

    /* renamed from: i  reason: collision with root package name */
    volatile o<T> f76036i;

    /* renamed from: j  reason: collision with root package name */
    volatile boolean f76037j;

    /* renamed from: k  reason: collision with root package name */
    volatile Throwable f76038k;

    /* renamed from: l  reason: collision with root package name */
    int f76039l;

    /* renamed from: m  reason: collision with root package name */
    int f76040m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MulticastProcessor.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicLong implements org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76041d = -363282618957264509L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f76042a;

        /* renamed from: b  reason: collision with root package name */
        final d<T> f76043b;

        /* renamed from: c  reason: collision with root package name */
        long f76044c;

        a(org.reactivestreams.d<? super T> dVar, d<T> dVar2) {
            this.f76042a = dVar;
            this.f76043b = dVar2;
        }

        void a() {
            if (get() != Long.MIN_VALUE) {
                this.f76042a.onComplete();
            }
        }

        void b(Throwable th) {
            if (get() != Long.MIN_VALUE) {
                this.f76042a.onError(th);
            }
        }

        void c(T t9) {
            if (get() != Long.MIN_VALUE) {
                this.f76044c++;
                this.f76042a.onNext(t9);
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f76043b.Y8(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            long j10;
            long j11;
            if (SubscriptionHelper.validate(j4)) {
                do {
                    j10 = get();
                    if (j10 == Long.MIN_VALUE) {
                        return;
                    }
                    if (j10 == Long.MAX_VALUE) {
                        return;
                    }
                    j11 = j10 + j4;
                } while (!compareAndSet(j10, j11 >= 0 ? j11 : Long.MAX_VALUE));
                this.f76043b.W8();
            }
        }
    }

    d(int i4, boolean z9) {
        io.reactivex.internal.functions.b.h(i4, "bufferSize");
        this.f76033f = i4;
        this.f76034g = i4 - (i4 >> 2);
        this.f76029b = new AtomicInteger();
        this.f76031d = new AtomicReference<>(f76027n);
        this.f76030c = new AtomicReference<>();
        this.f76035h = z9;
        this.f76032e = new AtomicBoolean();
    }

    @m7.e
    @m7.c
    public static <T> d<T> S8() {
        return new d<>(j.Y(), false);
    }

    @m7.e
    @m7.c
    public static <T> d<T> T8(int i4) {
        return new d<>(i4, false);
    }

    @m7.e
    @m7.c
    public static <T> d<T> U8(int i4, boolean z9) {
        return new d<>(i4, z9);
    }

    @m7.e
    @m7.c
    public static <T> d<T> V8(boolean z9) {
        return new d<>(j.Y(), z9);
    }

    @Override // io.reactivex.processors.c
    public Throwable M8() {
        if (this.f76032e.get()) {
            return this.f76038k;
        }
        return null;
    }

    @Override // io.reactivex.processors.c
    public boolean N8() {
        return this.f76032e.get() && this.f76038k == null;
    }

    @Override // io.reactivex.processors.c
    public boolean O8() {
        return this.f76031d.get().length != 0;
    }

    @Override // io.reactivex.processors.c
    public boolean P8() {
        return this.f76032e.get() && this.f76038k != null;
    }

    boolean R8(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f76031d.get();
            if (aVarArr == f76028o) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f76031d.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    void W8() {
        int i4;
        T t9;
        if (this.f76029b.getAndIncrement() != 0) {
            return;
        }
        AtomicReference<a<T>[]> atomicReference = this.f76031d;
        int i10 = this.f76039l;
        int i11 = this.f76034g;
        int i12 = this.f76040m;
        int i13 = 1;
        while (true) {
            o<T> oVar = this.f76036i;
            if (oVar != null) {
                a<T>[] aVarArr = atomicReference.get();
                if (aVarArr.length != 0) {
                    int length = aVarArr.length;
                    long j4 = -1;
                    long j10 = -1;
                    int i14 = 0;
                    while (i14 < length) {
                        a<T> aVar = aVarArr[i14];
                        long j11 = aVar.get();
                        if (j11 >= 0) {
                            if (j10 == j4) {
                                j10 = j11 - aVar.f76044c;
                            } else {
                                j10 = Math.min(j10, j11 - aVar.f76044c);
                            }
                        }
                        i14++;
                        j4 = -1;
                    }
                    int i15 = i10;
                    while (true) {
                        i4 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                        if (i4 <= 0) {
                            break;
                        }
                        a<T>[] aVarArr2 = atomicReference.get();
                        if (aVarArr2 == f76028o) {
                            oVar.clear();
                            return;
                        } else if (aVarArr != aVarArr2) {
                            break;
                        } else {
                            boolean z9 = this.f76037j;
                            try {
                                t9 = oVar.poll();
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                SubscriptionHelper.cancel(this.f76030c);
                                this.f76038k = th;
                                this.f76037j = true;
                                t9 = null;
                                z9 = true;
                            }
                            boolean z10 = t9 == null;
                            if (z9 && z10) {
                                Throwable th2 = this.f76038k;
                                if (th2 != null) {
                                    for (a<T> aVar2 : atomicReference.getAndSet(f76028o)) {
                                        aVar2.b(th2);
                                    }
                                    return;
                                }
                                for (a<T> aVar3 : atomicReference.getAndSet(f76028o)) {
                                    aVar3.a();
                                }
                                return;
                            } else if (z10) {
                                break;
                            } else {
                                for (a<T> aVar4 : aVarArr) {
                                    aVar4.c(t9);
                                }
                                j10--;
                                if (i12 != 1 && (i15 = i15 + 1) == i11) {
                                    this.f76030c.get().request(i11);
                                    i15 = 0;
                                }
                            }
                        }
                    }
                    if (i4 == 0) {
                        a<T>[] aVarArr3 = atomicReference.get();
                        a<T>[] aVarArr4 = f76028o;
                        if (aVarArr3 == aVarArr4) {
                            oVar.clear();
                            return;
                        } else if (aVarArr != aVarArr3) {
                            i10 = i15;
                        } else if (this.f76037j && oVar.isEmpty()) {
                            Throwable th3 = this.f76038k;
                            if (th3 != null) {
                                for (a<T> aVar5 : atomicReference.getAndSet(aVarArr4)) {
                                    aVar5.b(th3);
                                }
                                return;
                            }
                            for (a<T> aVar6 : atomicReference.getAndSet(aVarArr4)) {
                                aVar6.a();
                            }
                            return;
                        }
                    }
                    i10 = i15;
                }
            }
            this.f76039l = i10;
            i13 = this.f76029b.addAndGet(-i13);
            if (i13 == 0) {
                return;
            }
        }
    }

    public boolean X8(T t9) {
        if (this.f76032e.get()) {
            return false;
        }
        io.reactivex.internal.functions.b.g(t9, "offer called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f76040m == 0 && this.f76036i.offer(t9)) {
            W8();
            return true;
        }
        return false;
    }

    void Y8(a<T> aVar) {
        while (true) {
            a<T>[] aVarArr = this.f76031d.get();
            int length = aVarArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == aVar) {
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
                if (this.f76035h) {
                    if (this.f76031d.compareAndSet(aVarArr, f76028o)) {
                        SubscriptionHelper.cancel(this.f76030c);
                        this.f76032e.set(true);
                        return;
                    }
                } else if (this.f76031d.compareAndSet(aVarArr, f76027n)) {
                    return;
                }
            } else {
                a<T>[] aVarArr2 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr2, i4, (length - i4) - 1);
                if (this.f76031d.compareAndSet(aVarArr, aVarArr2)) {
                    return;
                }
            }
        }
    }

    public void Z8() {
        if (SubscriptionHelper.setOnce(this.f76030c, EmptySubscription.INSTANCE)) {
            this.f76036i = new SpscArrayQueue(this.f76033f);
        }
    }

    public void a9() {
        if (SubscriptionHelper.setOnce(this.f76030c, EmptySubscription.INSTANCE)) {
            this.f76036i = new io.reactivex.internal.queue.b(this.f76033f);
        }
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        Throwable th;
        a<T> aVar = new a<>(dVar, this);
        dVar.onSubscribe(aVar);
        if (R8(aVar)) {
            if (aVar.get() == Long.MIN_VALUE) {
                Y8(aVar);
            } else {
                W8();
            }
        } else if ((this.f76032e.get() || !this.f76035h) && (th = this.f76038k) != null) {
            dVar.onError(th);
        } else {
            dVar.onComplete();
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f76032e.compareAndSet(false, true)) {
            this.f76037j = true;
            W8();
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f76032e.compareAndSet(false, true)) {
            this.f76038k = th;
            this.f76037j = true;
            W8();
            return;
        }
        io.reactivex.plugins.a.Y(th);
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        if (this.f76032e.get()) {
            return;
        }
        if (this.f76040m == 0) {
            io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
            if (!this.f76036i.offer(t9)) {
                SubscriptionHelper.cancel(this.f76030c);
                onError(new MissingBackpressureException());
                return;
            }
        }
        W8();
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.setOnce(this.f76030c, eVar)) {
            if (eVar instanceof l) {
                l lVar = (l) eVar;
                int requestFusion = lVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.f76040m = requestFusion;
                    this.f76036i = lVar;
                    this.f76037j = true;
                    W8();
                    return;
                } else if (requestFusion == 2) {
                    this.f76040m = requestFusion;
                    this.f76036i = lVar;
                    eVar.request(this.f76033f);
                    return;
                }
            }
            this.f76036i = new SpscArrayQueue(this.f76033f);
            eVar.request(this.f76033f);
        }
    }
}
