package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.queue.SpscArrayQueue;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableFlattenIterable.java */
/* loaded from: classes4.dex */
public final class g1<T, R> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends Iterable<? extends R>> f77182c;

    /* renamed from: d  reason: collision with root package name */
    final int f77183d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFlattenIterable.java */
    /* loaded from: classes4.dex */
    public static final class a<T, R> extends BasicIntQueueSubscription<R> implements io.reactivex.rxjava3.core.r<T> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f77184o = -3096000382929934955L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f77185b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends Iterable<? extends R>> f77186c;

        /* renamed from: d  reason: collision with root package name */
        final int f77187d;

        /* renamed from: e  reason: collision with root package name */
        final int f77188e;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f77190g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.internal.fuseable.q<T> f77191h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f77192i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f77193j;

        /* renamed from: l  reason: collision with root package name */
        Iterator<? extends R> f77195l;

        /* renamed from: m  reason: collision with root package name */
        int f77196m;

        /* renamed from: n  reason: collision with root package name */
        int f77197n;

        /* renamed from: k  reason: collision with root package name */
        final AtomicReference<Throwable> f77194k = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f77189f = new AtomicLong();

        a(org.reactivestreams.d<? super R> actual, q7.o<? super T, ? extends Iterable<? extends R>> mapper, int prefetch) {
            this.f77185b = actual;
            this.f77186c = mapper;
            this.f77187d = prefetch;
            this.f77188e = prefetch - (prefetch >> 2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:53:0x00f7, code lost:
            if (r13 != r9) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00f9, code lost:
            r5 = r18.f77192i;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00ff, code lost:
            if (r3.isEmpty() == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0101, code lost:
            if (r6 != null) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x0103, code lost:
            r15 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0105, code lost:
            r15 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x010a, code lost:
            if (j(r5, r15, r2, r3) == false) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x010c, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x010f, code lost:
            if (r13 == 0) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0118, code lost:
            if (r9 == Long.MAX_VALUE) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x011a, code lost:
            r18.f77189f.addAndGet(-r13);
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x0120, code lost:
            if (r6 != null) goto L73;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                Method dump skipped, instructions count: 302
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.flowable.g1.a.b():void");
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f77193j) {
                return;
            }
            this.f77193j = true;
            this.f77190g.cancel();
            if (getAndIncrement() == 0) {
                this.f77191h.clear();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f77195l = null;
            this.f77191h.clear();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f77195l == null && this.f77191h.isEmpty();
        }

        boolean j(boolean d4, boolean empty, org.reactivestreams.d<?> a10, io.reactivex.rxjava3.internal.fuseable.q<?> q9) {
            if (this.f77193j) {
                this.f77195l = null;
                q9.clear();
                return true;
            } else if (d4) {
                if (this.f77194k.get() == null) {
                    if (empty) {
                        a10.onComplete();
                        return true;
                    }
                    return false;
                }
                Throwable f10 = io.reactivex.rxjava3.internal.util.g.f(this.f77194k);
                this.f77195l = null;
                q9.clear();
                a10.onError(f10);
                return true;
            } else {
                return false;
            }
        }

        void k(boolean enabled) {
            if (enabled) {
                int i4 = this.f77196m + 1;
                if (i4 == this.f77188e) {
                    this.f77196m = 0;
                    this.f77190g.request(i4);
                    return;
                }
                this.f77196m = i4;
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77192i) {
                return;
            }
            this.f77192i = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (!this.f77192i && io.reactivex.rxjava3.internal.util.g.a(this.f77194k, t9)) {
                this.f77192i = true;
                b();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77192i) {
                return;
            }
            if (this.f77197n == 0 && !this.f77191h.offer(t9)) {
                onError(new MissingBackpressureException("Queue is full?!"));
            } else {
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77190g, s9)) {
                this.f77190g = s9;
                if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.n) {
                    io.reactivex.rxjava3.internal.fuseable.n nVar = (io.reactivex.rxjava3.internal.fuseable.n) s9;
                    int requestFusion = nVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f77197n = requestFusion;
                        this.f77191h = nVar;
                        this.f77192i = true;
                        this.f77185b.onSubscribe(this);
                        return;
                    } else if (requestFusion == 2) {
                        this.f77197n = requestFusion;
                        this.f77191h = nVar;
                        this.f77185b.onSubscribe(this);
                        s9.request(this.f77187d);
                        return;
                    }
                }
                this.f77191h = new SpscArrayQueue(this.f77187d);
                this.f77185b.onSubscribe(this);
                s9.request(this.f77187d);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public R poll() throws Throwable {
            Iterator<? extends R> it = this.f77195l;
            while (true) {
                if (it == null) {
                    T poll = this.f77191h.poll();
                    if (poll != null) {
                        it = this.f77186c.apply(poll).iterator();
                        if (it.hasNext()) {
                            this.f77195l = it;
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
            R next = it.next();
            Objects.requireNonNull(next, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.f77195l = null;
            }
            return next;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f77189f, n9);
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int requestedMode) {
            return ((requestedMode & 1) == 0 || this.f77197n != 1) ? 0 : 1;
        }
    }

    public g1(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends Iterable<? extends R>> mapper, int prefetch) {
        super(source);
        this.f77182c = mapper;
        this.f77183d = prefetch;
    }

    public static <T, R> org.reactivestreams.d<T> g9(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends Iterable<? extends R>> mapper, int prefetch) {
        return new a(downstream, mapper, prefetch);
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super R> s9) {
        io.reactivex.rxjava3.core.m<T> mVar = this.f76811b;
        if (mVar instanceof q7.s) {
            try {
                Object obj = ((q7.s) mVar).get();
                if (obj == null) {
                    EmptySubscription.complete(s9);
                    return;
                }
                try {
                    m1.g9(s9, this.f77182c.apply(obj).iterator());
                    return;
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    EmptySubscription.error(th, s9);
                    return;
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                EmptySubscription.error(th2, s9);
                return;
            }
        }
        mVar.G6(new a(s9, this.f77182c, this.f77183d));
    }
}
