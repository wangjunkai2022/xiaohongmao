package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableRefCount.java */
/* loaded from: classes3.dex */
public final class z2<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.flowables.a<T> f73105b;

    /* renamed from: c  reason: collision with root package name */
    final int f73106c;

    /* renamed from: d  reason: collision with root package name */
    final long f73107d;

    /* renamed from: e  reason: collision with root package name */
    final TimeUnit f73108e;

    /* renamed from: f  reason: collision with root package name */
    final io.reactivex.h0 f73109f;

    /* renamed from: g  reason: collision with root package name */
    a f73110g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableRefCount.java */
    /* loaded from: classes3.dex */
    public static final class a extends AtomicReference<io.reactivex.disposables.c> implements Runnable, n7.g<io.reactivex.disposables.c> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f73111f = -4552101107598366241L;

        /* renamed from: a  reason: collision with root package name */
        final z2<?> f73112a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f73113b;

        /* renamed from: c  reason: collision with root package name */
        long f73114c;

        /* renamed from: d  reason: collision with root package name */
        boolean f73115d;

        /* renamed from: e  reason: collision with root package name */
        boolean f73116e;

        a(z2<?> z2Var) {
            this.f73112a = z2Var;
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(io.reactivex.disposables.c cVar) throws Exception {
            DisposableHelper.replace(this, cVar);
            synchronized (this.f73112a) {
                if (this.f73116e) {
                    ((io.reactivex.internal.disposables.c) this.f73112a.f73105b).c(cVar);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f73112a.Q8(this);
        }
    }

    /* compiled from: FlowableRefCount.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicBoolean implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: e  reason: collision with root package name */
        private static final long f73117e = -7419642935409022375L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f73118a;

        /* renamed from: b  reason: collision with root package name */
        final z2<T> f73119b;

        /* renamed from: c  reason: collision with root package name */
        final a f73120c;

        /* renamed from: d  reason: collision with root package name */
        org.reactivestreams.e f73121d;

        b(org.reactivestreams.d<? super T> dVar, z2<T> z2Var, a aVar) {
            this.f73118a = dVar;
            this.f73119b = z2Var;
            this.f73120c = aVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f73121d.cancel();
            if (compareAndSet(false, true)) {
                this.f73119b.M8(this.f73120c);
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (compareAndSet(false, true)) {
                this.f73119b.P8(this.f73120c);
                this.f73118a.onComplete();
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (compareAndSet(false, true)) {
                this.f73119b.P8(this.f73120c);
                this.f73118a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            this.f73118a.onNext(t9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73121d, eVar)) {
                this.f73121d = eVar;
                this.f73118a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f73121d.request(j4);
        }
    }

    public z2(io.reactivex.flowables.a<T> aVar) {
        this(aVar, 1, 0L, TimeUnit.NANOSECONDS, null);
    }

    void M8(a aVar) {
        synchronized (this) {
            a aVar2 = this.f73110g;
            if (aVar2 != null && aVar2 == aVar) {
                long j4 = aVar.f73114c - 1;
                aVar.f73114c = j4;
                if (j4 == 0 && aVar.f73115d) {
                    if (this.f73107d == 0) {
                        Q8(aVar);
                        return;
                    }
                    SequentialDisposable sequentialDisposable = new SequentialDisposable();
                    aVar.f73113b = sequentialDisposable;
                    sequentialDisposable.replace(this.f73109f.g(aVar, this.f73107d, this.f73108e));
                }
            }
        }
    }

    void N8(a aVar) {
        io.reactivex.disposables.c cVar = aVar.f73113b;
        if (cVar != null) {
            cVar.dispose();
            aVar.f73113b = null;
        }
    }

    void O8(a aVar) {
        io.reactivex.flowables.a<T> aVar2 = this.f73105b;
        if (aVar2 instanceof io.reactivex.disposables.c) {
            ((io.reactivex.disposables.c) aVar2).dispose();
        } else if (aVar2 instanceof io.reactivex.internal.disposables.c) {
            ((io.reactivex.internal.disposables.c) aVar2).c(aVar.get());
        }
    }

    void P8(a aVar) {
        synchronized (this) {
            if (this.f73105b instanceof r2) {
                a aVar2 = this.f73110g;
                if (aVar2 != null && aVar2 == aVar) {
                    this.f73110g = null;
                    N8(aVar);
                }
                long j4 = aVar.f73114c - 1;
                aVar.f73114c = j4;
                if (j4 == 0) {
                    O8(aVar);
                }
            } else {
                a aVar3 = this.f73110g;
                if (aVar3 != null && aVar3 == aVar) {
                    N8(aVar);
                    long j10 = aVar.f73114c - 1;
                    aVar.f73114c = j10;
                    if (j10 == 0) {
                        this.f73110g = null;
                        O8(aVar);
                    }
                }
            }
        }
    }

    void Q8(a aVar) {
        synchronized (this) {
            if (aVar.f73114c == 0 && aVar == this.f73110g) {
                this.f73110g = null;
                io.reactivex.disposables.c cVar = aVar.get();
                DisposableHelper.dispose(aVar);
                io.reactivex.flowables.a<T> aVar2 = this.f73105b;
                if (aVar2 instanceof io.reactivex.disposables.c) {
                    ((io.reactivex.disposables.c) aVar2).dispose();
                } else if (aVar2 instanceof io.reactivex.internal.disposables.c) {
                    if (cVar == null) {
                        aVar.f73116e = true;
                    } else {
                        ((io.reactivex.internal.disposables.c) aVar2).c(cVar);
                    }
                }
            }
        }
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a aVar;
        boolean z9;
        io.reactivex.disposables.c cVar;
        synchronized (this) {
            aVar = this.f73110g;
            if (aVar == null) {
                aVar = new a(this);
                this.f73110g = aVar;
            }
            long j4 = aVar.f73114c;
            if (j4 == 0 && (cVar = aVar.f73113b) != null) {
                cVar.dispose();
            }
            long j10 = j4 + 1;
            aVar.f73114c = j10;
            z9 = true;
            if (aVar.f73115d || j10 != this.f73106c) {
                z9 = false;
            } else {
                aVar.f73115d = true;
            }
        }
        this.f73105b.j6(new b(dVar, this, aVar));
        if (z9) {
            this.f73105b.Q8(aVar);
        }
    }

    public z2(io.reactivex.flowables.a<T> aVar, int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        this.f73105b = aVar;
        this.f73106c = i4;
        this.f73107d = j4;
        this.f73108e = timeUnit;
        this.f73109f = h0Var;
    }
}
