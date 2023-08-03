package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: FlowableConcatMap.java */
/* loaded from: classes3.dex */
public final class w<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f72900c;

    /* renamed from: d  reason: collision with root package name */
    final int f72901d;

    /* renamed from: e  reason: collision with root package name */
    final ErrorMode f72902e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f72903a;

        static {
            int[] iArr = new int[ErrorMode.values().length];
            f72903a = iArr;
            try {
                iArr[ErrorMode.BOUNDARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f72903a[ErrorMode.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes3.dex */
    public static abstract class b<T, R> extends AtomicInteger implements io.reactivex.o<T>, f<R>, org.reactivestreams.e {

        /* renamed from: m  reason: collision with root package name */
        private static final long f72904m = -3511336836796789179L;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> f72906b;

        /* renamed from: c  reason: collision with root package name */
        final int f72907c;

        /* renamed from: d  reason: collision with root package name */
        final int f72908d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f72909e;

        /* renamed from: f  reason: collision with root package name */
        int f72910f;

        /* renamed from: g  reason: collision with root package name */
        o7.o<T> f72911g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f72912h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f72913i;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f72915k;

        /* renamed from: l  reason: collision with root package name */
        int f72916l;

        /* renamed from: a  reason: collision with root package name */
        final e<R> f72905a = new e<>(this);

        /* renamed from: j  reason: collision with root package name */
        final AtomicThrowable f72914j = new AtomicThrowable();

        b(n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4) {
            this.f72906b = oVar;
            this.f72907c = i4;
            this.f72908d = i4 - (i4 >> 2);
        }

        @Override // io.reactivex.internal.operators.flowable.w.f
        public final void b() {
            this.f72915k = false;
            d();
        }

        abstract void d();

        abstract void e();

        @Override // org.reactivestreams.d
        public final void onComplete() {
            this.f72912h = true;
            d();
        }

        @Override // org.reactivestreams.d
        public final void onNext(T t9) {
            if (this.f72916l != 2 && !this.f72911g.offer(t9)) {
                this.f72909e.cancel();
                onError(new IllegalStateException("Queue full?!"));
                return;
            }
            d();
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public final void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72909e, eVar)) {
                this.f72909e = eVar;
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f72916l = requestFusion;
                        this.f72911g = lVar;
                        this.f72912h = true;
                        e();
                        d();
                        return;
                    } else if (requestFusion == 2) {
                        this.f72916l = requestFusion;
                        this.f72911g = lVar;
                        e();
                        eVar.request(this.f72907c);
                        return;
                    }
                }
                this.f72911g = new SpscArrayQueue(this.f72907c);
                e();
                eVar.request(this.f72907c);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes3.dex */
    public static final class c<T, R> extends b<T, R> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f72917p = -2945777694260521066L;

        /* renamed from: n  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f72918n;

        /* renamed from: o  reason: collision with root package name */
        final boolean f72919o;

        c(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, boolean z9) {
            super(oVar, i4);
            this.f72918n = dVar;
            this.f72919o = z9;
        }

        @Override // io.reactivex.internal.operators.flowable.w.f
        public void a(Throwable th) {
            if (this.f72914j.addThrowable(th)) {
                if (!this.f72919o) {
                    this.f72909e.cancel();
                    this.f72912h = true;
                }
                this.f72915k = false;
                d();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.w.f
        public void c(R r9) {
            this.f72918n.onNext(r9);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72913i) {
                return;
            }
            this.f72913i = true;
            this.f72905a.cancel();
            this.f72909e.cancel();
        }

        @Override // io.reactivex.internal.operators.flowable.w.b
        void d() {
            Object obj;
            if (getAndIncrement() == 0) {
                while (!this.f72913i) {
                    if (!this.f72915k) {
                        boolean z9 = this.f72912h;
                        if (z9 && !this.f72919o && this.f72914j.get() != null) {
                            this.f72918n.onError(this.f72914j.terminate());
                            return;
                        }
                        try {
                            T poll = this.f72911g.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                Throwable terminate = this.f72914j.terminate();
                                if (terminate != null) {
                                    this.f72918n.onError(terminate);
                                    return;
                                } else {
                                    this.f72918n.onComplete();
                                    return;
                                }
                            } else if (!z10) {
                                try {
                                    org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72906b.apply(poll), "The mapper returned a null Publisher");
                                    if (this.f72916l != 1) {
                                        int i4 = this.f72910f + 1;
                                        if (i4 == this.f72908d) {
                                            this.f72910f = 0;
                                            this.f72909e.request(i4);
                                        } else {
                                            this.f72910f = i4;
                                        }
                                    }
                                    if (cVar instanceof Callable) {
                                        try {
                                            obj = ((Callable) cVar).call();
                                        } catch (Throwable th) {
                                            io.reactivex.exceptions.a.b(th);
                                            this.f72914j.addThrowable(th);
                                            if (!this.f72919o) {
                                                this.f72909e.cancel();
                                                this.f72918n.onError(this.f72914j.terminate());
                                                return;
                                            }
                                            obj = null;
                                        }
                                        if (obj == null) {
                                            continue;
                                        } else if (this.f72905a.isUnbounded()) {
                                            this.f72918n.onNext(obj);
                                        } else {
                                            this.f72915k = true;
                                            this.f72905a.setSubscription(new g(obj, this.f72905a));
                                        }
                                    } else {
                                        this.f72915k = true;
                                        cVar.i(this.f72905a);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f72909e.cancel();
                                    this.f72914j.addThrowable(th2);
                                    this.f72918n.onError(this.f72914j.terminate());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f72909e.cancel();
                            this.f72914j.addThrowable(th3);
                            this.f72918n.onError(this.f72914j.terminate());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.w.b
        void e() {
            this.f72918n.onSubscribe(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72914j.addThrowable(th)) {
                this.f72912h = true;
                d();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72905a.request(j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes3.dex */
    public static final class d<T, R> extends b<T, R> {

        /* renamed from: p  reason: collision with root package name */
        private static final long f72920p = 7898995095634264146L;

        /* renamed from: n  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f72921n;

        /* renamed from: o  reason: collision with root package name */
        final AtomicInteger f72922o;

        d(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4) {
            super(oVar, i4);
            this.f72921n = dVar;
            this.f72922o = new AtomicInteger();
        }

        @Override // io.reactivex.internal.operators.flowable.w.f
        public void a(Throwable th) {
            if (this.f72914j.addThrowable(th)) {
                this.f72909e.cancel();
                if (getAndIncrement() == 0) {
                    this.f72921n.onError(this.f72914j.terminate());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.operators.flowable.w.f
        public void c(R r9) {
            if (get() == 0 && compareAndSet(0, 1)) {
                this.f72921n.onNext(r9);
                if (compareAndSet(1, 0)) {
                    return;
                }
                this.f72921n.onError(this.f72914j.terminate());
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f72913i) {
                return;
            }
            this.f72913i = true;
            this.f72905a.cancel();
            this.f72909e.cancel();
        }

        @Override // io.reactivex.internal.operators.flowable.w.b
        void d() {
            if (this.f72922o.getAndIncrement() == 0) {
                while (!this.f72913i) {
                    if (!this.f72915k) {
                        boolean z9 = this.f72912h;
                        try {
                            T poll = this.f72911g.poll();
                            boolean z10 = poll == null;
                            if (z9 && z10) {
                                this.f72921n.onComplete();
                                return;
                            } else if (!z10) {
                                try {
                                    org.reactivestreams.c cVar = (org.reactivestreams.c) io.reactivex.internal.functions.b.g(this.f72906b.apply(poll), "The mapper returned a null Publisher");
                                    if (this.f72916l != 1) {
                                        int i4 = this.f72910f + 1;
                                        if (i4 == this.f72908d) {
                                            this.f72910f = 0;
                                            this.f72909e.request(i4);
                                        } else {
                                            this.f72910f = i4;
                                        }
                                    }
                                    if (cVar instanceof Callable) {
                                        try {
                                            Object call = ((Callable) cVar).call();
                                            if (call == null) {
                                                continue;
                                            } else if (this.f72905a.isUnbounded()) {
                                                if (get() == 0 && compareAndSet(0, 1)) {
                                                    this.f72921n.onNext(call);
                                                    if (!compareAndSet(1, 0)) {
                                                        this.f72921n.onError(this.f72914j.terminate());
                                                        return;
                                                    }
                                                }
                                            } else {
                                                this.f72915k = true;
                                                this.f72905a.setSubscription(new g(call, this.f72905a));
                                            }
                                        } catch (Throwable th) {
                                            io.reactivex.exceptions.a.b(th);
                                            this.f72909e.cancel();
                                            this.f72914j.addThrowable(th);
                                            this.f72921n.onError(this.f72914j.terminate());
                                            return;
                                        }
                                    } else {
                                        this.f72915k = true;
                                        cVar.i(this.f72905a);
                                    }
                                } catch (Throwable th2) {
                                    io.reactivex.exceptions.a.b(th2);
                                    this.f72909e.cancel();
                                    this.f72914j.addThrowable(th2);
                                    this.f72921n.onError(this.f72914j.terminate());
                                    return;
                                }
                            }
                        } catch (Throwable th3) {
                            io.reactivex.exceptions.a.b(th3);
                            this.f72909e.cancel();
                            this.f72914j.addThrowable(th3);
                            this.f72921n.onError(this.f72914j.terminate());
                            return;
                        }
                    }
                    if (this.f72922o.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.w.b
        void e() {
            this.f72921n.onSubscribe(this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72914j.addThrowable(th)) {
                this.f72905a.cancel();
                if (getAndIncrement() == 0) {
                    this.f72921n.onError(this.f72914j.terminate());
                    return;
                }
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            this.f72905a.request(j4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes3.dex */
    public static final class e<R> extends SubscriptionArbiter implements io.reactivex.o<R> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f72923l = 897683679971470653L;

        /* renamed from: j  reason: collision with root package name */
        final f<R> f72924j;

        /* renamed from: k  reason: collision with root package name */
        long f72925k;

        e(f<R> fVar) {
            super(false);
            this.f72924j = fVar;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            long j4 = this.f72925k;
            if (j4 != 0) {
                this.f72925k = 0L;
                produced(j4);
            }
            this.f72924j.b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            long j4 = this.f72925k;
            if (j4 != 0) {
                this.f72925k = 0L;
                produced(j4);
            }
            this.f72924j.a(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(R r9) {
            this.f72925k++;
            this.f72924j.c(r9);
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            setSubscription(eVar);
        }
    }

    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes3.dex */
    interface f<T> {
        void a(Throwable th);

        void b();

        void c(T t9);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableConcatMap.java */
    /* loaded from: classes3.dex */
    public static final class g<T> extends AtomicBoolean implements org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72926a;

        /* renamed from: b  reason: collision with root package name */
        final T f72927b;

        g(T t9, org.reactivestreams.d<? super T> dVar) {
            this.f72927b = t9;
            this.f72926a = dVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (j4 <= 0 || !compareAndSet(false, true)) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = this.f72926a;
            dVar.onNext((T) this.f72927b);
            dVar.onComplete();
        }
    }

    public w(io.reactivex.j<T> jVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, ErrorMode errorMode) {
        super(jVar);
        this.f72900c = oVar;
        this.f72901d = i4;
        this.f72902e = errorMode;
    }

    public static <T, R> org.reactivestreams.d<T> M8(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends R>> oVar, int i4, ErrorMode errorMode) {
        int i10 = a.f72903a[errorMode.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return new d(dVar, oVar, i4);
            }
            return new c(dVar, oVar, i4, true);
        }
        return new c(dVar, oVar, i4, false);
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super R> dVar) {
        if (j3.b(this.f71538b, dVar, this.f72900c)) {
            return;
        }
        this.f71538b.i(M8(dVar, this.f72900c, this.f72901d, this.f72902e));
    }
}
