package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowablePublishAlt.java */
/* loaded from: classes3.dex */
public final class q2<T> extends io.reactivex.flowables.a<T> implements o7.h<T>, io.reactivex.internal.disposables.c {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f72513b;

    /* renamed from: c  reason: collision with root package name */
    final int f72514c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<b<T>> f72515d = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowablePublishAlt.java */
    /* loaded from: classes3.dex */
    public static final class a<T> extends AtomicLong implements org.reactivestreams.e {

        /* renamed from: d  reason: collision with root package name */
        private static final long f72516d = 2845000326761540265L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72517a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f72518b;

        /* renamed from: c  reason: collision with root package name */
        long f72519c;

        a(org.reactivestreams.d<? super T> dVar, b<T> bVar) {
            this.f72517a = dVar;
            this.f72518b = bVar;
        }

        public boolean a() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f72518b.d(this);
                this.f72518b.c();
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            io.reactivex.internal.util.b.b(this, j4);
            this.f72518b.c();
        }
    }

    /* compiled from: FlowablePublishAlt.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicInteger implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: k  reason: collision with root package name */
        private static final long f72520k = -1672047311619175801L;

        /* renamed from: l  reason: collision with root package name */
        static final a[] f72521l = new a[0];

        /* renamed from: m  reason: collision with root package name */
        static final a[] f72522m = new a[0];

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<b<T>> f72523a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.e> f72524b = new AtomicReference<>();

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f72525c = new AtomicBoolean();

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<a<T>[]> f72526d = new AtomicReference<>(f72521l);

        /* renamed from: e  reason: collision with root package name */
        final int f72527e;

        /* renamed from: f  reason: collision with root package name */
        volatile o7.o<T> f72528f;

        /* renamed from: g  reason: collision with root package name */
        int f72529g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f72530h;

        /* renamed from: i  reason: collision with root package name */
        Throwable f72531i;

        /* renamed from: j  reason: collision with root package name */
        int f72532j;

        b(AtomicReference<b<T>> atomicReference, int i4) {
            this.f72523a = atomicReference;
            this.f72527e = i4;
        }

        boolean a(a<T> aVar) {
            a<T>[] aVarArr;
            a<T>[] aVarArr2;
            do {
                aVarArr = this.f72526d.get();
                if (aVarArr == f72522m) {
                    return false;
                }
                int length = aVarArr.length;
                aVarArr2 = new a[length + 1];
                System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                aVarArr2[length] = aVar;
            } while (!this.f72526d.compareAndSet(aVarArr, aVarArr2));
            return true;
        }

        boolean b(boolean z9, boolean z10) {
            a<T>[] andSet;
            if (z9 && z10) {
                Throwable th = this.f72531i;
                if (th != null) {
                    e(th);
                    return true;
                }
                for (a<T> aVar : this.f72526d.getAndSet(f72522m)) {
                    if (!aVar.a()) {
                        aVar.f72517a.onComplete();
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
            o7.o<T> oVar = this.f72528f;
            int i4 = this.f72532j;
            int i10 = this.f72527e;
            int i11 = i10 - (i10 >> 2);
            boolean z9 = this.f72529g != 1;
            int i12 = 1;
            o7.o<T> oVar2 = oVar;
            int i13 = i4;
            while (true) {
                if (oVar2 != null) {
                    long j4 = Long.MAX_VALUE;
                    a<T>[] aVarArr = this.f72526d.get();
                    boolean z10 = false;
                    for (a<T> aVar : aVarArr) {
                        long j10 = aVar.get();
                        if (j10 != Long.MIN_VALUE) {
                            j4 = Math.min(j10 - aVar.f72519c, j4);
                            z10 = true;
                        }
                    }
                    if (!z10) {
                        j4 = 0;
                    }
                    for (long j11 = 0; j4 != j11; j11 = 0) {
                        boolean z11 = this.f72530h;
                        try {
                            T poll = oVar2.poll();
                            boolean z12 = poll == null;
                            if (b(z11, z12)) {
                                return;
                            }
                            if (z12) {
                                break;
                            }
                            for (a<T> aVar2 : aVarArr) {
                                if (!aVar2.a()) {
                                    aVar2.f72517a.onNext(poll);
                                    aVar2.f72519c++;
                                }
                            }
                            if (z9 && (i13 = i13 + 1) == i11) {
                                this.f72524b.get().request(i11);
                                i13 = 0;
                            }
                            j4--;
                            if (aVarArr != this.f72526d.get()) {
                                break;
                            }
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f72524b.get().cancel();
                            oVar2.clear();
                            this.f72530h = true;
                            e(th);
                            return;
                        }
                    }
                    if (b(this.f72530h, oVar2.isEmpty())) {
                        return;
                    }
                }
                this.f72532j = i13;
                i12 = addAndGet(-i12);
                if (i12 == 0) {
                    return;
                }
                if (oVar2 == null) {
                    oVar2 = this.f72528f;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void d(a<T> aVar) {
            a<T>[] aVarArr;
            a[] aVarArr2;
            do {
                aVarArr = this.f72526d.get();
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
                    aVarArr2 = f72521l;
                } else {
                    a[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                    System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                    aVarArr2 = aVarArr3;
                }
            } while (!this.f72526d.compareAndSet(aVarArr, aVarArr2));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f72526d.getAndSet(f72522m);
            this.f72523a.compareAndSet(this, null);
            SubscriptionHelper.cancel(this.f72524b);
        }

        void e(Throwable th) {
            a<T>[] andSet;
            for (a<T> aVar : this.f72526d.getAndSet(f72522m)) {
                if (!aVar.a()) {
                    aVar.f72517a.onError(th);
                }
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f72526d.get() == f72522m;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f72530h = true;
            c();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72530h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72531i = th;
            this.f72530h = true;
            c();
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72529g == 0 && !this.f72528f.offer(t9)) {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            } else {
                c();
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this.f72524b, eVar)) {
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f72529g = requestFusion;
                        this.f72528f = lVar;
                        this.f72530h = true;
                        c();
                        return;
                    } else if (requestFusion == 2) {
                        this.f72529g = requestFusion;
                        this.f72528f = lVar;
                        eVar.request(this.f72527e);
                        return;
                    }
                }
                this.f72528f = new SpscArrayQueue(this.f72527e);
                eVar.request(this.f72527e);
            }
        }
    }

    public q2(org.reactivestreams.c<T> cVar, int i4) {
        this.f72513b = cVar;
        this.f72514c = i4;
    }

    @Override // io.reactivex.flowables.a
    public void Q8(n7.g<? super io.reactivex.disposables.c> gVar) {
        b<T> bVar;
        while (true) {
            bVar = this.f72515d.get();
            if (bVar != null && !bVar.isDisposed()) {
                break;
            }
            b<T> bVar2 = new b<>(this.f72515d, this.f72514c);
            if (this.f72515d.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        boolean z9 = true;
        z9 = (bVar.f72525c.get() || !bVar.f72525c.compareAndSet(false, true)) ? false : false;
        try {
            gVar.accept(bVar);
            if (z9) {
                this.f72513b.i(bVar);
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    public int b() {
        return this.f72514c;
    }

    @Override // io.reactivex.internal.disposables.c
    public void c(io.reactivex.disposables.c cVar) {
        this.f72515d.compareAndSet((b) cVar, null);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        b<T> bVar;
        while (true) {
            bVar = this.f72515d.get();
            if (bVar != null) {
                break;
            }
            b<T> bVar2 = new b<>(this.f72515d, this.f72514c);
            if (this.f72515d.compareAndSet(bVar, bVar2)) {
                bVar = bVar2;
                break;
            }
        }
        a<T> aVar = new a<>(dVar, bVar);
        dVar.onSubscribe(aVar);
        if (bVar.a(aVar)) {
            if (aVar.a()) {
                bVar.d(aVar);
                return;
            } else {
                bVar.c();
                return;
            }
        }
        Throwable th = bVar.f72531i;
        if (th != null) {
            dVar.onError(th);
        } else {
            dVar.onComplete();
        }
    }

    @Override // o7.h
    public org.reactivestreams.c<T> source() {
        return this.f72513b;
    }
}
