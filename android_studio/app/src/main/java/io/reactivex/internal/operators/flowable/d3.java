package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscribers.SubscriberResourceWrapper;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableReplay.java */
/* loaded from: classes3.dex */
public final class d3<T> extends io.reactivex.flowables.a<T> implements o7.h<T>, io.reactivex.internal.disposables.c {

    /* renamed from: f  reason: collision with root package name */
    static final Callable f71700f = new c();

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.j<T> f71701b;

    /* renamed from: c  reason: collision with root package name */
    final AtomicReference<j<T>> f71702c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<? extends g<T>> f71703d;

    /* renamed from: e  reason: collision with root package name */
    final org.reactivestreams.c<T> f71704e;

    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    static class a<T> extends AtomicReference<f> implements g<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71705d = 2346567790059478686L;

        /* renamed from: a  reason: collision with root package name */
        f f71706a;

        /* renamed from: b  reason: collision with root package name */
        int f71707b;

        /* renamed from: c  reason: collision with root package name */
        long f71708c;

        a() {
            f fVar = new f(null, 0L);
            this.f71706a = fVar;
            set(fVar);
        }

        @Override // io.reactivex.internal.operators.flowable.d3.g
        public final void a(Throwable th) {
            Object h4 = h(NotificationLite.error(th));
            long j4 = this.f71708c + 1;
            this.f71708c = j4;
            d(new f(h4, j4));
            r();
        }

        @Override // io.reactivex.internal.operators.flowable.d3.g
        public final void b(T t9) {
            Object h4 = h(NotificationLite.next(t9));
            long j4 = this.f71708c + 1;
            this.f71708c = j4;
            d(new f(h4, j4));
            q();
        }

        @Override // io.reactivex.internal.operators.flowable.d3.g
        public final void c(d<T> dVar) {
            f fVar;
            synchronized (dVar) {
                if (dVar.f71717e) {
                    dVar.f71718f = true;
                    return;
                }
                dVar.f71717e = true;
                while (!dVar.isDisposed()) {
                    long j4 = dVar.get();
                    boolean z9 = j4 == Long.MAX_VALUE;
                    f fVar2 = (f) dVar.a();
                    if (fVar2 == null) {
                        fVar2 = i();
                        dVar.f71715c = fVar2;
                        io.reactivex.internal.util.b.a(dVar.f71716d, fVar2.f71725b);
                    }
                    long j10 = 0;
                    while (j4 != 0 && (fVar = fVar2.get()) != null) {
                        Object l10 = l(fVar.f71724a);
                        try {
                            if (NotificationLite.accept(l10, dVar.f71714b)) {
                                dVar.f71715c = null;
                                return;
                            }
                            j10++;
                            j4--;
                            if (dVar.isDisposed()) {
                                dVar.f71715c = null;
                                return;
                            }
                            fVar2 = fVar;
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            dVar.f71715c = null;
                            dVar.dispose();
                            if (NotificationLite.isError(l10) || NotificationLite.isComplete(l10)) {
                                return;
                            }
                            dVar.f71714b.onError(th);
                            return;
                        }
                    }
                    if (j10 != 0) {
                        dVar.f71715c = fVar2;
                        if (!z9) {
                            dVar.b(j10);
                        }
                    }
                    synchronized (dVar) {
                        if (!dVar.f71718f) {
                            dVar.f71717e = false;
                            return;
                        }
                        dVar.f71718f = false;
                    }
                }
                dVar.f71715c = null;
            }
        }

        @Override // io.reactivex.internal.operators.flowable.d3.g
        public final void complete() {
            Object h4 = h(NotificationLite.complete());
            long j4 = this.f71708c + 1;
            this.f71708c = j4;
            d(new f(h4, j4));
            r();
        }

        final void d(f fVar) {
            this.f71706a.set(fVar);
            this.f71706a = fVar;
            this.f71707b++;
        }

        final void e(Collection<? super T> collection) {
            f i4 = i();
            while (true) {
                i4 = i4.get();
                if (i4 == null) {
                    return;
                }
                Object l10 = l(i4.f71724a);
                if (NotificationLite.isComplete(l10) || NotificationLite.isError(l10)) {
                    return;
                }
                collection.add((Object) NotificationLite.getValue(l10));
            }
        }

        Object h(Object obj) {
            return obj;
        }

        f i() {
            return get();
        }

        boolean j() {
            Object obj = this.f71706a.f71724a;
            return obj != null && NotificationLite.isComplete(l(obj));
        }

        boolean k() {
            Object obj = this.f71706a.f71724a;
            return obj != null && NotificationLite.isError(l(obj));
        }

        Object l(Object obj) {
            return obj;
        }

        final void m() {
            f fVar = get().get();
            if (fVar != null) {
                this.f71707b--;
                o(fVar);
                return;
            }
            throw new IllegalStateException("Empty list!");
        }

        final void n(int i4) {
            f fVar = get();
            while (i4 > 0) {
                fVar = fVar.get();
                i4--;
                this.f71707b--;
            }
            o(fVar);
            f fVar2 = get();
            if (fVar2.get() == null) {
                this.f71706a = fVar2;
            }
        }

        final void o(f fVar) {
            set(fVar);
        }

        final void p() {
            f fVar = get();
            if (fVar.f71724a != null) {
                f fVar2 = new f(null, 0L);
                fVar2.lazySet(fVar.get());
                set(fVar2);
            }
        }

        void q() {
        }

        void r() {
            p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends io.reactivex.flowables.a<T> {

        /* renamed from: b  reason: collision with root package name */
        private final io.reactivex.flowables.a<T> f71709b;

        /* renamed from: c  reason: collision with root package name */
        private final io.reactivex.j<T> f71710c;

        b(io.reactivex.flowables.a<T> aVar, io.reactivex.j<T> jVar) {
            this.f71709b = aVar;
            this.f71710c = jVar;
        }

        @Override // io.reactivex.flowables.a
        public void Q8(n7.g<? super io.reactivex.disposables.c> gVar) {
            this.f71709b.Q8(gVar);
        }

        @Override // io.reactivex.j
        protected void k6(org.reactivestreams.d<? super T> dVar) {
            this.f71710c.i(dVar);
        }
    }

    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    static final class c implements Callable<Object> {
        c() {
        }

        @Override // java.util.concurrent.Callable
        public Object call() {
            return new n(16);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class d<T> extends AtomicLong implements org.reactivestreams.e, io.reactivex.disposables.c {

        /* renamed from: g  reason: collision with root package name */
        private static final long f71711g = -4453897557930727610L;

        /* renamed from: h  reason: collision with root package name */
        static final long f71712h = Long.MIN_VALUE;

        /* renamed from: a  reason: collision with root package name */
        final j<T> f71713a;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f71714b;

        /* renamed from: c  reason: collision with root package name */
        Object f71715c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f71716d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        boolean f71717e;

        /* renamed from: f  reason: collision with root package name */
        boolean f71718f;

        d(j<T> jVar, org.reactivestreams.d<? super T> dVar) {
            this.f71713a = jVar;
            this.f71714b = dVar;
        }

        <U> U a() {
            return (U) this.f71715c;
        }

        public long b(long j4) {
            return io.reactivex.internal.util.b.f(this, j4);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            dispose();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.f71713a.c(this);
                this.f71713a.b();
                this.f71715c = null;
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() == Long.MIN_VALUE;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (!SubscriptionHelper.validate(j4) || io.reactivex.internal.util.b.b(this, j4) == Long.MIN_VALUE) {
                return;
            }
            io.reactivex.internal.util.b.a(this.f71716d, j4);
            this.f71713a.b();
            this.f71713a.f71732a.c(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class e<R, U> extends io.reactivex.j<R> {

        /* renamed from: b  reason: collision with root package name */
        private final Callable<? extends io.reactivex.flowables.a<U>> f71719b;

        /* renamed from: c  reason: collision with root package name */
        private final n7.o<? super io.reactivex.j<U>, ? extends org.reactivestreams.c<R>> f71720c;

        /* compiled from: FlowableReplay.java */
        /* loaded from: classes3.dex */
        final class a implements n7.g<io.reactivex.disposables.c> {

            /* renamed from: a  reason: collision with root package name */
            private final SubscriberResourceWrapper<R> f71721a;

            a(SubscriberResourceWrapper<R> subscriberResourceWrapper) {
                this.f71721a = subscriberResourceWrapper;
            }

            @Override // n7.g
            /* renamed from: a */
            public void accept(io.reactivex.disposables.c cVar) {
                this.f71721a.setResource(cVar);
            }
        }

        e(Callable<? extends io.reactivex.flowables.a<U>> callable, n7.o<? super io.reactivex.j<U>, ? extends org.reactivestreams.c<R>> oVar) {
            this.f71719b = callable;
            this.f71720c = oVar;
        }

        @Override // io.reactivex.j
        protected void k6(org.reactivestreams.d<? super R> dVar) {
            try {
                io.reactivex.flowables.a aVar = (io.reactivex.flowables.a) io.reactivex.internal.functions.b.g(this.f71719b.call(), "The connectableFactory returned null");
                try {
                    org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f71720c.apply(aVar), "The selector returned a null Publisher");
                    SubscriberResourceWrapper subscriberResourceWrapper = new SubscriberResourceWrapper(dVar);
                    cVar.i(subscriberResourceWrapper);
                    aVar.Q8(new a(subscriberResourceWrapper));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    EmptySubscription.error(th, dVar);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptySubscription.error(th2, dVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class f extends AtomicReference<f> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f71723c = 245354315435971818L;

        /* renamed from: a  reason: collision with root package name */
        final Object f71724a;

        /* renamed from: b  reason: collision with root package name */
        final long f71725b;

        f(Object obj, long j4) {
            this.f71724a = obj;
            this.f71725b = j4;
        }
    }

    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    interface g<T> {
        void a(Throwable th);

        void b(T t9);

        void c(d<T> dVar);

        void complete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class h<T> implements Callable<g<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final int f71726a;

        h(int i4) {
            this.f71726a = i4;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public g<T> call() {
            return new m(this.f71726a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class i<T> implements org.reactivestreams.c<T> {

        /* renamed from: a  reason: collision with root package name */
        private final AtomicReference<j<T>> f71727a;

        /* renamed from: b  reason: collision with root package name */
        private final Callable<? extends g<T>> f71728b;

        i(AtomicReference<j<T>> atomicReference, Callable<? extends g<T>> callable) {
            this.f71727a = atomicReference;
            this.f71728b = callable;
        }

        @Override // org.reactivestreams.c
        public void i(org.reactivestreams.d<? super T> dVar) {
            j<T> jVar;
            while (true) {
                jVar = this.f71727a.get();
                if (jVar != null) {
                    break;
                }
                try {
                    j<T> jVar2 = new j<>(this.f71728b.call());
                    if (this.f71727a.compareAndSet(null, jVar2)) {
                        jVar = jVar2;
                        break;
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    EmptySubscription.error(th, dVar);
                    return;
                }
            }
            d<T> dVar2 = new d<>(jVar, dVar);
            dVar.onSubscribe(dVar2);
            jVar.a(dVar2);
            if (dVar2.isDisposed()) {
                jVar.c(dVar2);
                return;
            }
            jVar.b();
            jVar.f71732a.c(dVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class j<T> extends AtomicReference<org.reactivestreams.e> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: h  reason: collision with root package name */
        private static final long f71729h = 7224554242710036740L;

        /* renamed from: i  reason: collision with root package name */
        static final d[] f71730i = new d[0];

        /* renamed from: j  reason: collision with root package name */
        static final d[] f71731j = new d[0];

        /* renamed from: a  reason: collision with root package name */
        final g<T> f71732a;

        /* renamed from: b  reason: collision with root package name */
        boolean f71733b;

        /* renamed from: f  reason: collision with root package name */
        long f71737f;

        /* renamed from: g  reason: collision with root package name */
        long f71738g;

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f71736e = new AtomicInteger();

        /* renamed from: c  reason: collision with root package name */
        final AtomicReference<d<T>[]> f71734c = new AtomicReference<>(f71730i);

        /* renamed from: d  reason: collision with root package name */
        final AtomicBoolean f71735d = new AtomicBoolean();

        j(g<T> gVar) {
            this.f71732a = gVar;
        }

        boolean a(d<T> dVar) {
            d<T>[] dVarArr;
            d<T>[] dVarArr2;
            Objects.requireNonNull(dVar);
            do {
                dVarArr = this.f71734c.get();
                if (dVarArr == f71731j) {
                    return false;
                }
                int length = dVarArr.length;
                dVarArr2 = new d[length + 1];
                System.arraycopy(dVarArr, 0, dVarArr2, 0, length);
                dVarArr2[length] = dVar;
            } while (!this.f71734c.compareAndSet(dVarArr, dVarArr2));
            return true;
        }

        void b() {
            if (this.f71736e.getAndIncrement() != 0) {
                return;
            }
            int i4 = 1;
            while (!isDisposed()) {
                d<T>[] dVarArr = this.f71734c.get();
                long j4 = this.f71737f;
                long j10 = j4;
                for (d<T> dVar : dVarArr) {
                    j10 = Math.max(j10, dVar.f71716d.get());
                }
                long j11 = this.f71738g;
                org.reactivestreams.e eVar = get();
                long j12 = j10 - j4;
                if (j12 != 0) {
                    this.f71737f = j10;
                    if (eVar == null) {
                        long j13 = j11 + j12;
                        if (j13 < 0) {
                            j13 = Long.MAX_VALUE;
                        }
                        this.f71738g = j13;
                    } else if (j11 != 0) {
                        this.f71738g = 0L;
                        eVar.request(j11 + j12);
                    } else {
                        eVar.request(j12);
                    }
                } else if (j11 != 0 && eVar != null) {
                    this.f71738g = 0L;
                    eVar.request(j11);
                }
                i4 = this.f71736e.addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void c(d<T> dVar) {
            d<T>[] dVarArr;
            d[] dVarArr2;
            do {
                dVarArr = this.f71734c.get();
                int length = dVarArr.length;
                if (length == 0) {
                    return;
                }
                int i4 = -1;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    } else if (dVarArr[i10].equals(dVar)) {
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
                    dVarArr2 = f71730i;
                } else {
                    d[] dVarArr3 = new d[length - 1];
                    System.arraycopy(dVarArr, 0, dVarArr3, 0, i4);
                    System.arraycopy(dVarArr, i4 + 1, dVarArr3, i4, (length - i4) - 1);
                    dVarArr2 = dVarArr3;
                }
            } while (!this.f71734c.compareAndSet(dVarArr, dVarArr2));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f71734c.set(f71731j);
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71734c.get() == f71731j;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71733b) {
                return;
            }
            this.f71733b = true;
            this.f71732a.complete();
            for (d<T> dVar : this.f71734c.getAndSet(f71731j)) {
                this.f71732a.c(dVar);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (!this.f71733b) {
                this.f71733b = true;
                this.f71732a.a(th);
                for (d<T> dVar : this.f71734c.getAndSet(f71731j)) {
                    this.f71732a.c(dVar);
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71733b) {
                return;
            }
            this.f71732a.b(t9);
            for (d<T> dVar : this.f71734c.get()) {
                this.f71732a.c(dVar);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.setOnce(this, eVar)) {
                b();
                for (d<T> dVar : this.f71734c.get()) {
                    this.f71732a.c(dVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class k<T> implements Callable<g<T>> {

        /* renamed from: a  reason: collision with root package name */
        private final int f71739a;

        /* renamed from: b  reason: collision with root package name */
        private final long f71740b;

        /* renamed from: c  reason: collision with root package name */
        private final TimeUnit f71741c;

        /* renamed from: d  reason: collision with root package name */
        private final io.reactivex.h0 f71742d;

        k(int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f71739a = i4;
            this.f71740b = j4;
            this.f71741c = timeUnit;
            this.f71742d = h0Var;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public g<T> call() {
            return new l(this.f71739a, this.f71740b, this.f71741c, this.f71742d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class l<T> extends a<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f71743i = 3457957419649567404L;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.h0 f71744e;

        /* renamed from: f  reason: collision with root package name */
        final long f71745f;

        /* renamed from: g  reason: collision with root package name */
        final TimeUnit f71746g;

        /* renamed from: h  reason: collision with root package name */
        final int f71747h;

        l(int i4, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f71744e = h0Var;
            this.f71747h = i4;
            this.f71745f = j4;
            this.f71746g = timeUnit;
        }

        @Override // io.reactivex.internal.operators.flowable.d3.a
        Object h(Object obj) {
            return new io.reactivex.schedulers.d(obj, this.f71744e.e(this.f71746g), this.f71746g);
        }

        @Override // io.reactivex.internal.operators.flowable.d3.a
        f i() {
            f fVar;
            long e4 = this.f71744e.e(this.f71746g) - this.f71745f;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 != null) {
                    io.reactivex.schedulers.d dVar = (io.reactivex.schedulers.d) fVar2.f71724a;
                    if (NotificationLite.isComplete(dVar.d()) || NotificationLite.isError(dVar.d()) || dVar.a() > e4) {
                        break;
                    }
                    fVar3 = fVar2.get();
                } else {
                    break;
                }
            }
            return fVar;
        }

        @Override // io.reactivex.internal.operators.flowable.d3.a
        Object l(Object obj) {
            return ((io.reactivex.schedulers.d) obj).d();
        }

        @Override // io.reactivex.internal.operators.flowable.d3.a
        void q() {
            f fVar;
            long e4 = this.f71744e.e(this.f71746g) - this.f71745f;
            f fVar2 = get();
            f fVar3 = fVar2.get();
            int i4 = 0;
            while (true) {
                f fVar4 = fVar3;
                fVar = fVar2;
                fVar2 = fVar4;
                if (fVar2 == null) {
                    break;
                }
                int i10 = this.f71707b;
                if (i10 > this.f71747h && i10 > 1) {
                    i4++;
                    this.f71707b = i10 - 1;
                    fVar3 = fVar2.get();
                } else if (((io.reactivex.schedulers.d) fVar2.f71724a).a() > e4) {
                    break;
                } else {
                    i4++;
                    this.f71707b--;
                    fVar3 = fVar2.get();
                }
            }
            if (i4 != 0) {
                o(fVar);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
            o(r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
            return;
         */
        @Override // io.reactivex.internal.operators.flowable.d3.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void r() {
            /*
                r10 = this;
                io.reactivex.h0 r0 = r10.f71744e
                java.util.concurrent.TimeUnit r1 = r10.f71746g
                long r0 = r0.e(r1)
                long r2 = r10.f71745f
                long r0 = r0 - r2
                java.lang.Object r2 = r10.get()
                io.reactivex.internal.operators.flowable.d3$f r2 = (io.reactivex.internal.operators.flowable.d3.f) r2
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.flowable.d3$f r3 = (io.reactivex.internal.operators.flowable.d3.f) r3
                r4 = 0
            L18:
                r9 = r3
                r3 = r2
                r2 = r9
                if (r2 == 0) goto L3c
                int r5 = r10.f71707b
                r6 = 1
                if (r5 <= r6) goto L3c
                java.lang.Object r5 = r2.f71724a
                io.reactivex.schedulers.d r5 = (io.reactivex.schedulers.d) r5
                long r7 = r5.a()
                int r5 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
                if (r5 > 0) goto L3c
                int r4 = r4 + 1
                int r3 = r10.f71707b
                int r3 = r3 - r6
                r10.f71707b = r3
                java.lang.Object r3 = r2.get()
                io.reactivex.internal.operators.flowable.d3$f r3 = (io.reactivex.internal.operators.flowable.d3.f) r3
                goto L18
            L3c:
                if (r4 == 0) goto L41
                r10.o(r3)
            L41:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.d3.l.r():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    public static final class m<T> extends a<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f71748f = -5898283885385201806L;

        /* renamed from: e  reason: collision with root package name */
        final int f71749e;

        m(int i4) {
            this.f71749e = i4;
        }

        @Override // io.reactivex.internal.operators.flowable.d3.a
        void q() {
            if (this.f71707b > this.f71749e) {
                m();
            }
        }
    }

    /* compiled from: FlowableReplay.java */
    /* loaded from: classes3.dex */
    static final class n<T> extends ArrayList<Object> implements g<T> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f71750b = 7063189396499112664L;

        /* renamed from: a  reason: collision with root package name */
        volatile int f71751a;

        n(int i4) {
            super(i4);
        }

        @Override // io.reactivex.internal.operators.flowable.d3.g
        public void a(Throwable th) {
            add(NotificationLite.error(th));
            this.f71751a++;
        }

        @Override // io.reactivex.internal.operators.flowable.d3.g
        public void b(T t9) {
            add(NotificationLite.next(t9));
            this.f71751a++;
        }

        @Override // io.reactivex.internal.operators.flowable.d3.g
        public void c(d<T> dVar) {
            synchronized (dVar) {
                if (dVar.f71717e) {
                    dVar.f71718f = true;
                    return;
                }
                dVar.f71717e = true;
                org.reactivestreams.d<? super T> dVar2 = dVar.f71714b;
                while (!dVar.isDisposed()) {
                    int i4 = this.f71751a;
                    Integer num = (Integer) dVar.a();
                    int intValue = num != null ? num.intValue() : 0;
                    long j4 = dVar.get();
                    long j10 = j4;
                    long j11 = 0;
                    while (j10 != 0 && intValue < i4) {
                        Object obj = get(intValue);
                        try {
                            if (NotificationLite.accept(obj, dVar2) || dVar.isDisposed()) {
                                return;
                            }
                            intValue++;
                            j10--;
                            j11++;
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            dVar.dispose();
                            if (NotificationLite.isError(obj) || NotificationLite.isComplete(obj)) {
                                return;
                            }
                            dVar2.onError(th);
                            return;
                        }
                    }
                    if (j11 != 0) {
                        dVar.f71715c = Integer.valueOf(intValue);
                        if (j4 != Long.MAX_VALUE) {
                            dVar.b(j11);
                        }
                    }
                    synchronized (dVar) {
                        if (!dVar.f71718f) {
                            dVar.f71717e = false;
                            return;
                        }
                        dVar.f71718f = false;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.d3.g
        public void complete() {
            add(NotificationLite.complete());
            this.f71751a++;
        }
    }

    private d3(org.reactivestreams.c<T> cVar, io.reactivex.j<T> jVar, AtomicReference<j<T>> atomicReference, Callable<? extends g<T>> callable) {
        this.f71704e = cVar;
        this.f71701b = jVar;
        this.f71702c = atomicReference;
        this.f71703d = callable;
    }

    public static <T> io.reactivex.flowables.a<T> Y8(io.reactivex.j<T> jVar, int i4) {
        if (i4 == Integer.MAX_VALUE) {
            return c9(jVar);
        }
        return b9(jVar, new h(i4));
    }

    public static <T> io.reactivex.flowables.a<T> Z8(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        return a9(jVar, j4, timeUnit, h0Var, Integer.MAX_VALUE);
    }

    public static <T> io.reactivex.flowables.a<T> a9(io.reactivex.j<T> jVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, int i4) {
        return b9(jVar, new k(i4, j4, timeUnit, h0Var));
    }

    static <T> io.reactivex.flowables.a<T> b9(io.reactivex.j<T> jVar, Callable<? extends g<T>> callable) {
        AtomicReference atomicReference = new AtomicReference();
        return io.reactivex.plugins.a.T(new d3(new i(atomicReference, callable), jVar, atomicReference, callable));
    }

    public static <T> io.reactivex.flowables.a<T> c9(io.reactivex.j<? extends T> jVar) {
        return b9(jVar, f71700f);
    }

    public static <U, R> io.reactivex.j<R> d9(Callable<? extends io.reactivex.flowables.a<U>> callable, n7.o<? super io.reactivex.j<U>, ? extends org.reactivestreams.c<R>> oVar) {
        return new e(callable, oVar);
    }

    public static <T> io.reactivex.flowables.a<T> e9(io.reactivex.flowables.a<T> aVar, io.reactivex.h0 h0Var) {
        return io.reactivex.plugins.a.T(new b(aVar, aVar.l4(h0Var)));
    }

    @Override // io.reactivex.flowables.a
    public void Q8(n7.g<? super io.reactivex.disposables.c> gVar) {
        j<T> jVar;
        while (true) {
            jVar = this.f71702c.get();
            if (jVar != null && !jVar.isDisposed()) {
                break;
            }
            try {
                j<T> jVar2 = new j<>(this.f71703d.call());
                if (this.f71702c.compareAndSet(jVar, jVar2)) {
                    jVar = jVar2;
                    break;
                }
            } finally {
                io.reactivex.exceptions.a.b(th);
                RuntimeException f10 = io.reactivex.internal.util.g.f(th);
            }
        }
        boolean z9 = !jVar.f71735d.get() && jVar.f71735d.compareAndSet(false, true);
        try {
            gVar.accept(jVar);
            if (z9) {
                this.f71701b.j6(jVar);
            }
        } catch (Throwable th) {
            if (z9) {
                jVar.f71735d.compareAndSet(true, false);
            }
            throw io.reactivex.internal.util.g.f(th);
        }
    }

    @Override // io.reactivex.internal.disposables.c
    public void c(io.reactivex.disposables.c cVar) {
        this.f71702c.compareAndSet((j) cVar, null);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        this.f71704e.i(dVar);
    }

    @Override // o7.h
    public org.reactivestreams.c<T> source() {
        return this.f71701b;
    }
}
