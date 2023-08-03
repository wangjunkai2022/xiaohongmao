package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.core.BackpressureStrategy;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.disposables.CancellableDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableCreate.java */
/* loaded from: classes4.dex */
public final class e0<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.p<T> f77056b;

    /* renamed from: c  reason: collision with root package name */
    final BackpressureStrategy f77057c;

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes4.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f77058a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f77058a = iArr;
            try {
                iArr[BackpressureStrategy.MISSING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f77058a[BackpressureStrategy.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f77058a[BackpressureStrategy.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f77058a[BackpressureStrategy.LATEST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableCreate.java */
    /* loaded from: classes4.dex */
    public static abstract class b<T> extends AtomicLong implements io.reactivex.rxjava3.core.o<T>, org.reactivestreams.e {

        /* renamed from: c  reason: collision with root package name */
        private static final long f77059c = 7326289992464377023L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77060a;

        /* renamed from: b  reason: collision with root package name */
        final SequentialDisposable f77061b = new SequentialDisposable();

        b(org.reactivestreams.d<? super T> downstream) {
            this.f77060a = downstream;
        }

        @Override // io.reactivex.rxjava3.core.o
        public final boolean a(Throwable e4) {
            if (e4 == null) {
                e4 = io.reactivex.rxjava3.internal.util.g.b("tryOnError called with a null Throwable.");
            }
            return k(e4);
        }

        @Override // io.reactivex.rxjava3.core.o
        public final void b(io.reactivex.rxjava3.disposables.f d4) {
            this.f77061b.update(d4);
        }

        @Override // io.reactivex.rxjava3.core.o
        public final void c(q7.f c10) {
            b(new CancellableDisposable(c10));
        }

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f77061b.dispose();
            j();
        }

        protected void d() {
            if (isCancelled()) {
                return;
            }
            try {
                this.f77060a.onComplete();
            } finally {
                this.f77061b.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public final long e() {
            return get();
        }

        protected boolean h(Throwable e4) {
            if (isCancelled()) {
                return false;
            }
            try {
                this.f77060a.onError(e4);
                this.f77061b.dispose();
                return true;
            } catch (Throwable th) {
                this.f77061b.dispose();
                throw th;
            }
        }

        void i() {
        }

        @Override // io.reactivex.rxjava3.core.o
        public final boolean isCancelled() {
            return this.f77061b.isDisposed();
        }

        void j() {
        }

        public boolean k(Throwable e4) {
            return h(e4);
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onComplete() {
            d();
        }

        @Override // io.reactivex.rxjava3.core.i
        public final void onError(Throwable e4) {
            if (e4 == null) {
                e4 = io.reactivex.rxjava3.internal.util.g.b("onError called with a null Throwable.");
            }
            if (k(e4)) {
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // org.reactivestreams.e
        public final void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
                i();
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public final io.reactivex.rxjava3.core.o<T> serialize() {
            return new i(this);
        }

        @Override // java.util.concurrent.atomic.AtomicLong
        public String toString() {
            return String.format("%s{%s}", getClass().getSimpleName(), super.toString());
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes4.dex */
    static final class c<T> extends b<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77062h = 2427151001689639875L;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<T> f77063d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f77064e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f77065f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f77066g;

        c(org.reactivestreams.d<? super T> actual, int capacityHint) {
            super(actual);
            this.f77063d = new io.reactivex.rxjava3.internal.queue.b<>(capacityHint);
            this.f77066g = new AtomicInteger();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.b
        void i() {
            l();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.b
        void j() {
            if (this.f77066g.getAndIncrement() == 0) {
                this.f77063d.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.b
        public boolean k(Throwable e4) {
            if (this.f77065f || isCancelled()) {
                return false;
            }
            this.f77064e = e4;
            this.f77065f = true;
            l();
            return true;
        }

        void l() {
            int i4;
            if (this.f77066g.getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f77060a;
            io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f77063d;
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
                        boolean z9 = this.f77065f;
                        Object obj = (T) bVar.poll();
                        boolean z10 = obj == null;
                        if (z9 && z10) {
                            Throwable th = this.f77064e;
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
                    boolean z11 = this.f77065f;
                    boolean isEmpty = bVar.isEmpty();
                    if (z11 && isEmpty) {
                        Throwable th2 = this.f77064e;
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
                    io.reactivex.rxjava3.internal.util.b.e(this, j10);
                }
                i10 = this.f77066g.addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.b, io.reactivex.rxjava3.core.i
        public void onComplete() {
            this.f77065f = true;
            l();
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onNext(T t9) {
            if (this.f77065f || isCancelled()) {
                return;
            }
            if (t9 == null) {
                onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
                return;
            }
            this.f77063d.offer(t9);
            l();
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes4.dex */
    static final class d<T> extends h<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77067e = 8360058422307496563L;

        d(org.reactivestreams.d<? super T> downstream) {
            super(downstream);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.h
        void l() {
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes4.dex */
    static final class e<T> extends h<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77068e = 338953216916120960L;

        e(org.reactivestreams.d<? super T> downstream) {
            super(downstream);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.h
        void l() {
            onError(new MissingBackpressureException("create: could not emit value due to lack of requests"));
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes4.dex */
    static final class f<T> extends b<T> {

        /* renamed from: h  reason: collision with root package name */
        private static final long f77069h = 4023437720691792495L;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReference<T> f77070d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f77071e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f77072f;

        /* renamed from: g  reason: collision with root package name */
        final AtomicInteger f77073g;

        f(org.reactivestreams.d<? super T> downstream) {
            super(downstream);
            this.f77070d = new AtomicReference<>();
            this.f77073g = new AtomicInteger();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.b
        void i() {
            l();
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.b
        void j() {
            if (this.f77073g.getAndIncrement() == 0) {
                this.f77070d.lazySet(null);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.b
        public boolean k(Throwable e4) {
            if (this.f77072f || isCancelled()) {
                return false;
            }
            this.f77071e = e4;
            this.f77072f = true;
            l();
            return true;
        }

        void l() {
            int i4;
            if (this.f77073g.getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f77060a;
            AtomicReference<T> atomicReference = this.f77070d;
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
                        boolean z9 = this.f77072f;
                        Object obj = (T) atomicReference.getAndSet(null);
                        boolean z10 = obj == null;
                        if (z9 && z10) {
                            Throwable th = this.f77071e;
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
                    boolean z11 = this.f77072f;
                    boolean z12 = atomicReference.get() == null;
                    if (z11 && z12) {
                        Throwable th2 = this.f77071e;
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
                    io.reactivex.rxjava3.internal.util.b.e(this, j10);
                }
                i10 = this.f77073g.addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.e0.b, io.reactivex.rxjava3.core.i
        public void onComplete() {
            this.f77072f = true;
            l();
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onNext(T t9) {
            if (this.f77072f || isCancelled()) {
                return;
            }
            if (t9 == null) {
                onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
                return;
            }
            this.f77070d.set(t9);
            l();
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes4.dex */
    static final class g<T> extends b<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f77074d = 3776720187248809713L;

        g(org.reactivestreams.d<? super T> downstream) {
            super(downstream);
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onNext(T t9) {
            long j4;
            if (isCancelled()) {
                return;
            }
            if (t9 != null) {
                this.f77060a.onNext(t9);
                do {
                    j4 = get();
                    if (j4 == 0) {
                        return;
                    }
                } while (!compareAndSet(j4, j4 - 1));
                return;
            }
            onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes4.dex */
    static abstract class h<T> extends b<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f77075d = 4127754106204442833L;

        h(org.reactivestreams.d<? super T> downstream) {
            super(downstream);
        }

        abstract void l();

        @Override // io.reactivex.rxjava3.core.i
        public final void onNext(T t9) {
            if (isCancelled()) {
                return;
            }
            if (t9 == null) {
                onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
            } else if (get() != 0) {
                this.f77060a.onNext(t9);
                io.reactivex.rxjava3.internal.util.b.e(this, 1L);
            } else {
                l();
            }
        }
    }

    /* compiled from: FlowableCreate.java */
    /* loaded from: classes4.dex */
    static final class i<T> extends AtomicInteger implements io.reactivex.rxjava3.core.o<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77076e = 4883307006032401862L;

        /* renamed from: a  reason: collision with root package name */
        final b<T> f77077a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicThrowable f77078b = new AtomicThrowable();

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.p<T> f77079c = new io.reactivex.rxjava3.internal.queue.b(16);

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f77080d;

        i(b<T> emitter) {
            this.f77077a = emitter;
        }

        @Override // io.reactivex.rxjava3.core.o
        public boolean a(Throwable t9) {
            if (!this.f77077a.isCancelled() && !this.f77080d) {
                if (t9 == null) {
                    t9 = io.reactivex.rxjava3.internal.util.g.b("onError called with a null Throwable.");
                }
                if (this.f77078b.tryAddThrowable(t9)) {
                    this.f77080d = true;
                    d();
                    return true;
                }
            }
            return false;
        }

        @Override // io.reactivex.rxjava3.core.o
        public void b(io.reactivex.rxjava3.disposables.f d4) {
            this.f77077a.b(d4);
        }

        @Override // io.reactivex.rxjava3.core.o
        public void c(q7.f c10) {
            this.f77077a.c(c10);
        }

        void d() {
            if (getAndIncrement() == 0) {
                h();
            }
        }

        @Override // io.reactivex.rxjava3.core.o
        public long e() {
            return this.f77077a.e();
        }

        void h() {
            b<T> bVar = this.f77077a;
            io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f77079c;
            AtomicThrowable atomicThrowable = this.f77078b;
            int i4 = 1;
            while (!bVar.isCancelled()) {
                if (atomicThrowable.get() != null) {
                    pVar.clear();
                    atomicThrowable.tryTerminateConsumer(bVar);
                    return;
                }
                boolean z9 = this.f77080d;
                T poll = pVar.poll();
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
            pVar.clear();
        }

        @Override // io.reactivex.rxjava3.core.o
        public boolean isCancelled() {
            return this.f77077a.isCancelled();
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onComplete() {
            if (this.f77077a.isCancelled() || this.f77080d) {
                return;
            }
            this.f77080d = true;
            d();
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onError(Throwable t9) {
            if (a(t9)) {
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.i
        public void onNext(T t9) {
            if (this.f77077a.isCancelled() || this.f77080d) {
                return;
            }
            if (t9 == null) {
                onError(io.reactivex.rxjava3.internal.util.g.b("onNext called with a null value."));
                return;
            }
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f77077a.onNext(t9);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                io.reactivex.rxjava3.internal.fuseable.p<T> pVar = this.f77079c;
                synchronized (pVar) {
                    pVar.offer(t9);
                }
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            h();
        }

        @Override // io.reactivex.rxjava3.core.o
        public io.reactivex.rxjava3.core.o<T> serialize() {
            return this;
        }

        @Override // java.util.concurrent.atomic.AtomicInteger
        public String toString() {
            return this.f77077a.toString();
        }
    }

    public e0(io.reactivex.rxjava3.core.p<T> source, BackpressureStrategy backpressure) {
        this.f77056b = source;
        this.f77057c = backpressure;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> t9) {
        b gVar;
        int i4 = a.f77058a[this.f77057c.ordinal()];
        if (i4 == 1) {
            gVar = new g(t9);
        } else if (i4 == 2) {
            gVar = new e(t9);
        } else if (i4 == 3) {
            gVar = new d(t9);
        } else if (i4 != 4) {
            gVar = new c(t9, io.reactivex.rxjava3.core.m.V());
        } else {
            gVar = new f(t9);
        }
        t9.onSubscribe(gVar);
        try {
            this.f77056b.a(gVar);
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            gVar.onError(th);
        }
    }
}
