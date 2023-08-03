package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureStrategy;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.CancellableDisposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableCreate.java */
/* loaded from: classes3.dex */
public final class f0<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.m<T> f71837b;

    /* renamed from: c  reason: collision with root package name */
    final BackpressureStrategy f71838c;

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes3.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f71839a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f71839a = iArr;
            try {
                iArr[BackpressureStrategy.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71839a[BackpressureStrategy.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f71839a[BackpressureStrategy.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f71839a[BackpressureStrategy.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableCreate.java */
    /* loaded from: classes3.dex */
    public static abstract class b<T> extends AtomicLong implements io.reactivex.l<T>, org.reactivestreams.e {

        /* renamed from: c  reason: collision with root package name */
        private static final long f71840c = 7326289992464377023L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71841a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f71842b = new SequentialDisposable();

        b(org.reactivestreams.d<? super T> dVar) {
            this.f71841a = dVar;
        }

        @Override // io.reactivex.l
        public boolean a(Throwable th) {
            return h(th);
        }

        @Override // io.reactivex.l
        public final void b(io.reactivex.disposables.c cVar) {
            this.f71842b.update(cVar);
        }

        @Override // io.reactivex.l
        public final void c(n7.f fVar) {
            b(new CancellableDisposable(fVar));
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f71842b.dispose();
            j();
        }

        protected void d() {
            if (isCancelled()) {
                return;
            }
            try {
                this.f71841a.onComplete();
            } finally {
                this.f71842b.dispose();
            }
        }

        @Override // io.reactivex.l
        public final long e() {
            return get();
        }

        protected boolean h(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isCancelled()) {
                return false;
            }
            try {
                this.f71841a.onError(th);
                this.f71842b.dispose();
                return true;
            } catch (Throwable th2) {
                this.f71842b.dispose();
                throw th2;
            }
        }

        void i() {
        }

        @Override // io.reactivex.l
        public final boolean isCancelled() {
            return this.f71842b.isDisposed();
        }

        void j() {
        }

        @Override // io.reactivex.i
        public void onComplete() {
            d();
        }

        @Override // io.reactivex.i
        public final void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.e
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
                i();
            }
        }

        @Override // io.reactivex.l
        public final io.reactivex.l<T> serialize() {
            return new i(this);
        }

        @Override // java.util.concurrent.atomic.AtomicLong
        public String toString() {
            return String.format("%s{%s}", getClass().getSimpleName(), super.toString());
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes3.dex */
    static final class c<T> extends b<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f71843h = 2427151001689639875L;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f71844d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f71845e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f71846f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f71847g;

        c(org.reactivestreams.d<? super T> dVar, int i4) {
            super(dVar);
            this.f71844d = new io.reactivex.internal.queue.b<>(i4);
            this.f71847g = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.flowable.f0.b, io.reactivex.l
        public boolean a(Throwable th) {
            if (this.f71846f || isCancelled()) {
                return false;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f71845e = th;
            this.f71846f = true;
            k();
            return true;
        }

        @Override // io.reactivex.internal.operators.flowable.f0.b
        void i() {
            k();
        }

        @Override // io.reactivex.internal.operators.flowable.f0.b
        void j() {
            if (this.f71847g.getAndIncrement() == 0) {
                this.f71844d.clear();
            }
        }

        void k() {
            int i4;
            if (this.f71847g.getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f71841a;
            io.reactivex.internal.queue.b<T> bVar = this.f71844d;
            int i10 = 1;
            do {
                long j4 = get();
                long j10 = 0;
                while (true) {
                    i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (isCancelled()) {
                        bVar.clear();
                        return;
                    } else {
                        boolean z9 = this.f71846f;
                        Object obj = (T) bVar.poll();
                        boolean z10 = obj == null;
                        if (z9 && z10) {
                            Throwable th = this.f71845e;
                            if (th != null) {
                                h(th);
                                return;
                            } else {
                                d();
                                return;
                            }
                        } else if (z10) {
                            break;
                        } else {
                            dVar.onNext(obj);
                            j10++;
                        }
                    }
                }
                if (i4 == 0) {
                    if (isCancelled()) {
                        bVar.clear();
                        return;
                    }
                    boolean z11 = this.f71846f;
                    boolean isEmpty = bVar.isEmpty();
                    if (z11 && isEmpty) {
                        Throwable th2 = this.f71845e;
                        if (th2 != null) {
                            h(th2);
                            return;
                        } else {
                            d();
                            return;
                        }
                    }
                }
                if (j10 != 0) {
                    io.reactivex.internal.util.b.e(this, j10);
                }
                i10 = this.f71847g.addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override // io.reactivex.internal.operators.flowable.f0.b, io.reactivex.i
        public void onComplete() {
            this.f71846f = true;
            k();
        }

        @Override // io.reactivex.i
        public void onNext(T t9) {
            if (this.f71846f || isCancelled()) {
                return;
            }
            if (t9 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.f71844d.offer(t9);
            k();
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes3.dex */
    static final class d<T> extends h<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f71848e = 8360058422307496563L;

        d(org.reactivestreams.d<? super T> dVar) {
            super(dVar);
        }

        @Override // io.reactivex.internal.operators.flowable.f0.h
        void k() {
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes3.dex */
    static final class e<T> extends h<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f71849e = 338953216916120960L;

        e(org.reactivestreams.d<? super T> dVar) {
            super(dVar);
        }

        @Override // io.reactivex.internal.operators.flowable.f0.h
        void k() {
            onError(new MissingBackpressureException("create: could not emit value due to lack of requests"));
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes3.dex */
    static final class f<T> extends b<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f71850h = 4023437720691792495L;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<T> f71851d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f71852e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f71853f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f71854g;

        f(org.reactivestreams.d<? super T> dVar) {
            super(dVar);
            this.f71851d = new AtomicReference<>();
            this.f71854g = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.flowable.f0.b, io.reactivex.l
        public boolean a(Throwable th) {
            if (this.f71853f || isCancelled()) {
                return false;
            }
            if (th == null) {
                onError(new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
            this.f71852e = th;
            this.f71853f = true;
            k();
            return true;
        }

        @Override // io.reactivex.internal.operators.flowable.f0.b
        void i() {
            k();
        }

        @Override // io.reactivex.internal.operators.flowable.f0.b
        void j() {
            if (this.f71854g.getAndIncrement() == 0) {
                this.f71851d.lazySet(null);
            }
        }

        void k() {
            int i4;
            if (this.f71854g.getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f71841a;
            AtomicReference<T> atomicReference = this.f71851d;
            int i10 = 1;
            do {
                long j4 = get();
                long j10 = 0;
                while (true) {
                    i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (isCancelled()) {
                        atomicReference.lazySet(null);
                        return;
                    } else {
                        boolean z9 = this.f71853f;
                        Object obj = (T) atomicReference.getAndSet(null);
                        boolean z10 = obj == null;
                        if (z9 && z10) {
                            Throwable th = this.f71852e;
                            if (th != null) {
                                h(th);
                                return;
                            } else {
                                d();
                                return;
                            }
                        } else if (z10) {
                            break;
                        } else {
                            dVar.onNext(obj);
                            j10++;
                        }
                    }
                }
                if (i4 == 0) {
                    if (isCancelled()) {
                        atomicReference.lazySet(null);
                        return;
                    }
                    boolean z11 = this.f71853f;
                    boolean z12 = atomicReference.get() == null;
                    if (z11 && z12) {
                        Throwable th2 = this.f71852e;
                        if (th2 != null) {
                            h(th2);
                            return;
                        } else {
                            d();
                            return;
                        }
                    }
                }
                if (j10 != 0) {
                    io.reactivex.internal.util.b.e(this, j10);
                }
                i10 = this.f71854g.addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override // io.reactivex.internal.operators.flowable.f0.b, io.reactivex.i
        public void onComplete() {
            this.f71853f = true;
            k();
        }

        @Override // io.reactivex.i
        public void onNext(T t9) {
            if (this.f71853f || isCancelled()) {
                return;
            }
            if (t9 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            this.f71851d.set(t9);
            k();
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes3.dex */
    static final class g<T> extends b<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71855d = 3776720187248809713L;

        g(org.reactivestreams.d<? super T> dVar) {
            super(dVar);
        }

        @Override // io.reactivex.i
        public void onNext(T t9) {
            long j4;
            if (isCancelled()) {
                return;
            }
            if (t9 != null) {
                this.f71841a.onNext(t9);
                do {
                    j4 = get();
                    if (j4 == 0) {
                        return;
                    }
                } while (!compareAndSet(j4, j4 - 1));
                return;
            }
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes3.dex */
    static abstract class h<T> extends b<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71856d = 4127754106204442833L;

        h(org.reactivestreams.d<? super T> dVar) {
            super(dVar);
        }

        abstract void k();

        @Override // io.reactivex.i
        public final void onNext(T t9) {
            if (isCancelled()) {
                return;
            }
            if (t9 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else if (get() != 0) {
                this.f71841a.onNext(t9);
                io.reactivex.internal.util.b.e(this, 1L);
            } else {
                k();
            }
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes3.dex */
    static final class i<T> extends AtomicInteger implements io.reactivex.l<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f71857e = 4883307006032401862L;

        /* renamed from: a  reason: collision with root package name */
        final b<T> f71858a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f71859b = new AtomicThrowable();

        /* renamed from: c  reason: collision with root package name */
        final o7.n<T> f71860c = new io.reactivex.internal.queue.b(16);

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f71861d;

        i(b<T> bVar) {
            this.f71858a = bVar;
        }

        @Override // io.reactivex.l
        public boolean a(Throwable th) {
            if (!this.f71858a.isCancelled() && !this.f71861d) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.f71859b.addThrowable(th)) {
                    this.f71861d = true;
                    d();
                    return true;
                }
            }
            return false;
        }

        @Override // io.reactivex.l
        public void b(io.reactivex.disposables.c cVar) {
            this.f71858a.b(cVar);
        }

        @Override // io.reactivex.l
        public void c(n7.f fVar) {
            this.f71858a.c(fVar);
        }

        void d() {
            if (getAndIncrement() == 0) {
                h();
            }
        }

        @Override // io.reactivex.l
        public long e() {
            return this.f71858a.e();
        }

        void h() {
            b<T> bVar = this.f71858a;
            o7.n<T> nVar = this.f71860c;
            AtomicThrowable atomicThrowable = this.f71859b;
            int i4 = 1;
            while (!bVar.isCancelled()) {
                if (atomicThrowable.get() != null) {
                    nVar.clear();
                    bVar.onError(atomicThrowable.terminate());
                    return;
                }
                boolean z9 = this.f71861d;
                T poll = nVar.poll();
                boolean z10 = poll == null;
                if (z9 && z10) {
                    bVar.onComplete();
                    return;
                } else if (z10) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    bVar.onNext(poll);
                }
            }
            nVar.clear();
        }

        @Override // io.reactivex.l
        public boolean isCancelled() {
            return this.f71858a.isCancelled();
        }

        @Override // io.reactivex.i
        public void onComplete() {
            if (this.f71858a.isCancelled() || this.f71861d) {
                return;
            }
            this.f71861d = true;
            d();
        }

        @Override // io.reactivex.i
        public void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.i
        public void onNext(T t9) {
            if (this.f71858a.isCancelled() || this.f71861d) {
                return;
            }
            if (t9 == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f71858a.onNext(t9);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                o7.n<T> nVar = this.f71860c;
                synchronized (nVar) {
                    nVar.offer(t9);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            h();
        }

        @Override // io.reactivex.l
        public io.reactivex.l<T> serialize() {
            return this;
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.f71858a.toString();
        }
    }

    public f0(io.reactivex.m<T> mVar, BackpressureStrategy backpressureStrategy) {
        this.f71837b = mVar;
        this.f71838c = backpressureStrategy;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        b gVar;
        int i4 = a.f71839a[this.f71838c.ordinal()];
        if (i4 == 1) {
            gVar = new g(dVar);
        } else if (i4 == 2) {
            gVar = new e(dVar);
        } else if (i4 == 3) {
            gVar = new d(dVar);
        } else if (i4 != 4) {
            gVar = new c(dVar, io.reactivex.j.Y());
        } else {
            gVar = new f(dVar);
        }
        dVar.onSubscribe(gVar);
        try {
            this.f71837b.a(gVar);
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            gVar.onError(th);
        }
    }
}
