package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlattenIterable.java */
/* loaded from: classes3.dex */
public final class f1<T, R> extends io.reactivex.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends Iterable<? extends R>> f71862c;

    /* renamed from: d  reason: collision with root package name */
    final int f71863d;

    /* compiled from: FlowableFlattenIterable.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends BasicIntQueueSubscription<R> implements io.reactivex.o<T> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f71864o = -3096000382929934955L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f71865b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super T, ? extends Iterable<? extends R>> f71866c;

        /* renamed from: d  reason: collision with root package name */
        final int f71867d;

        /* renamed from: e  reason: collision with root package name */
        final int f71868e;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f71870g;

        /* renamed from: h  reason: collision with root package name */
        o7.o<T> f71871h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f71872i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f71873j;

        /* renamed from: l  reason: collision with root package name */
        Iterator<? extends R> f71875l;

        /* renamed from: m  reason: collision with root package name */
        int f71876m;

        /* renamed from: n  reason: collision with root package name */
        int f71877n;

        /* renamed from: k  reason: collision with root package name */
        final AtomicReference<Throwable> f71874k = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f71869f = new AtomicLong();

        a(org.reactivestreams.d<? super R> dVar, n7.o<? super T, ? extends Iterable<? extends R>> oVar, int i4) {
            this.f71865b = dVar;
            this.f71866c = oVar;
            this.f71867d = i4;
            this.f71868e = i4 - (i4 >> 2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:67:0x0121, code lost:
            if (r6 == null) goto L57;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                Method dump skipped, instructions count: 303
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.f1.a.b():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f71873j) {
                return;
            }
            this.f71873j = true;
            this.f71870g.cancel();
            if (getAndIncrement() == 0) {
                this.f71871h.clear();
            }
        }

        @Override // o7.o
        public void clear() {
            this.f71875l = null;
            this.f71871h.clear();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f71875l == null && this.f71871h.isEmpty();
        }

        boolean j(boolean z9, boolean z10, org.reactivestreams.d<?> dVar, o7.o<?> oVar) {
            if (this.f71873j) {
                this.f71875l = null;
                oVar.clear();
                return true;
            } else if (z9) {
                if (this.f71874k.get() == null) {
                    if (z10) {
                        dVar.onComplete();
                        return true;
                    }
                    return false;
                }
                Throwable c10 = io.reactivex.internal.util.g.c(this.f71874k);
                this.f71875l = null;
                oVar.clear();
                dVar.onError(c10);
                return true;
            } else {
                return false;
            }
        }

        void k(boolean z9) {
            if (z9) {
                int i4 = this.f71876m + 1;
                if (i4 == this.f71868e) {
                    this.f71876m = 0;
                    this.f71870g.request(i4);
                    return;
                }
                this.f71876m = i4;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71872i) {
                return;
            }
            this.f71872i = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (!this.f71872i && io.reactivex.internal.util.g.a(this.f71874k, th)) {
                this.f71872i = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71872i) {
                return;
            }
            if (this.f71877n == 0 && !this.f71871h.offer(t9)) {
                onError(new MissingBackpressureException("Queue is full?!"));
            } else {
                b();
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71870g, eVar)) {
                this.f71870g = eVar;
                if (eVar instanceof o7.l) {
                    o7.l lVar = (o7.l) eVar;
                    int requestFusion = lVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f71877n = requestFusion;
                        this.f71871h = lVar;
                        this.f71872i = true;
                        this.f71865b.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f71877n = requestFusion;
                        this.f71871h = lVar;
                        this.f71865b.onSubscribe(this);
                        eVar.request(this.f71867d);
                        return;
                    }
                }
                this.f71871h = new SpscArrayQueue(this.f71867d);
                this.f71865b.onSubscribe(this);
                eVar.request(this.f71867d);
            }
        }

        @Override // o7.o
        @m7.f
        public R poll() throws Exception {
            Iterator<? extends R> it = this.f71875l;
            while (true) {
                if (it == null) {
                    T poll = this.f71871h.poll();
                    if (poll != null) {
                        it = this.f71866c.apply(poll).iterator();
                        if (it.hasNext()) {
                            this.f71875l = it;
                            break;
                        }
                        it = null;
                    } else {
                        return null;
                    }
                } else {
                    break;
                }
            }
            R r9 = (R) io.reactivex.internal.functions.b.g(it.next(), "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f71875l = null;
            }
            return r9;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f71869f, j4);
                b();
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return ((i4 & 1) == 0 || this.f71877n != 1) ? 0 : 1;
        }
    }

    public f1(io.reactivex.j<T> jVar, n7.o<? super T, ? extends Iterable<? extends R>> oVar, int i4) {
        super(jVar);
        this.f71862c = oVar;
        this.f71863d = i4;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super R> dVar) {
        io.reactivex.j<T> jVar = this.f71538b;
        if (jVar instanceof Callable) {
            try {
                Object call = ((Callable) jVar).call();
                if (call == null) {
                    EmptySubscription.complete(dVar);
                    return;
                }
                try {
                    j1.M8(dVar, this.f71862c.apply(call).iterator());
                    return;
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    EmptySubscription.error(th, dVar);
                    return;
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                EmptySubscription.error(th2, dVar);
                return;
            }
        }
        jVar.j6(new a(dVar, this.f71862c, this.f71863d));
    }
}
