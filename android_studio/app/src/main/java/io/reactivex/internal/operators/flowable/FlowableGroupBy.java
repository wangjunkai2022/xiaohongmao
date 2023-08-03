package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EmptyComponent;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class FlowableGroupBy<T, K, V> extends io.reactivex.internal.operators.flowable.a<T, io.reactivex.flowables.b<K, V>> {

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends K> f71473c;

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super T, ? extends V> f71474d;

    /* renamed from: e  reason: collision with root package name */
    final int f71475e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f71476f;

    /* renamed from: g  reason: collision with root package name */
    final n7.o<? super n7.g<Object>, ? extends Map<K, Object>> f71477g;

    /* loaded from: classes3.dex */
    public static final class GroupBySubscriber<T, K, V> extends BasicIntQueueSubscription<io.reactivex.flowables.b<K, V>> implements io.reactivex.o<T> {

        /* renamed from: r  reason: collision with root package name */
        private static final long f71478r = -3688291656102519502L;

        /* renamed from: s  reason: collision with root package name */
        static final Object f71479s = new Object();

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.flowables.b<K, V>> f71480b;

        /* renamed from: c  reason: collision with root package name */
        final n7.o<? super T, ? extends K> f71481c;

        /* renamed from: d  reason: collision with root package name */
        final n7.o<? super T, ? extends V> f71482d;

        /* renamed from: e  reason: collision with root package name */
        final int f71483e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f71484f;

        /* renamed from: g  reason: collision with root package name */
        final Map<Object, b<K, V>> f71485g;

        /* renamed from: h  reason: collision with root package name */
        final io.reactivex.internal.queue.b<io.reactivex.flowables.b<K, V>> f71486h;

        /* renamed from: i  reason: collision with root package name */
        final Queue<b<K, V>> f71487i;

        /* renamed from: j  reason: collision with root package name */
        org.reactivestreams.e f71488j;

        /* renamed from: k  reason: collision with root package name */
        final AtomicBoolean f71489k = new AtomicBoolean();

        /* renamed from: l  reason: collision with root package name */
        final AtomicLong f71490l = new AtomicLong();

        /* renamed from: m  reason: collision with root package name */
        final AtomicInteger f71491m = new AtomicInteger(1);

        /* renamed from: n  reason: collision with root package name */
        Throwable f71492n;

        /* renamed from: o  reason: collision with root package name */
        volatile boolean f71493o;

        /* renamed from: p  reason: collision with root package name */
        boolean f71494p;

        /* renamed from: q  reason: collision with root package name */
        boolean f71495q;

        public GroupBySubscriber(org.reactivestreams.d<? super io.reactivex.flowables.b<K, V>> dVar, n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, int i4, boolean z9, Map<Object, b<K, V>> map, Queue<b<K, V>> queue) {
            this.f71480b = dVar;
            this.f71481c = oVar;
            this.f71482d = oVar2;
            this.f71483e = i4;
            this.f71484f = z9;
            this.f71485g = map;
            this.f71487i = queue;
            this.f71486h = new io.reactivex.internal.queue.b<>(i4);
        }

        private void k() {
            if (this.f71487i != null) {
                int i4 = 0;
                while (true) {
                    b<K, V> poll = this.f71487i.poll();
                    if (poll == null) {
                        break;
                    }
                    poll.onComplete();
                    i4++;
                }
                if (i4 != 0) {
                    this.f71491m.addAndGet(-i4);
                }
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f71495q) {
                l();
            } else {
                m();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f71489k.compareAndSet(false, true)) {
                k();
                if (this.f71491m.decrementAndGet() == 0) {
                    this.f71488j.cancel();
                }
            }
        }

        @Override // o7.o
        public void clear() {
            this.f71486h.clear();
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f71486h.isEmpty();
        }

        boolean j(boolean z9, boolean z10, org.reactivestreams.d<?> dVar, io.reactivex.internal.queue.b<?> bVar) {
            if (this.f71489k.get()) {
                bVar.clear();
                return true;
            } else if (this.f71484f) {
                if (z9 && z10) {
                    Throwable th = this.f71492n;
                    if (th != null) {
                        dVar.onError(th);
                    } else {
                        dVar.onComplete();
                    }
                    return true;
                }
                return false;
            } else if (z9) {
                Throwable th2 = this.f71492n;
                if (th2 != null) {
                    bVar.clear();
                    dVar.onError(th2);
                    return true;
                } else if (z10) {
                    dVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void l() {
            Throwable th;
            io.reactivex.internal.queue.b<io.reactivex.flowables.b<K, V>> bVar = this.f71486h;
            org.reactivestreams.d<? super io.reactivex.flowables.b<K, V>> dVar = this.f71480b;
            int i4 = 1;
            while (!this.f71489k.get()) {
                boolean z9 = this.f71493o;
                if (z9 && !this.f71484f && (th = this.f71492n) != null) {
                    bVar.clear();
                    dVar.onError(th);
                    return;
                }
                dVar.onNext(null);
                if (z9) {
                    Throwable th2 = this.f71492n;
                    if (th2 != null) {
                        dVar.onError(th2);
                        return;
                    } else {
                        dVar.onComplete();
                        return;
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        void m() {
            int i4;
            io.reactivex.internal.queue.b<io.reactivex.flowables.b<K, V>> bVar = this.f71486h;
            org.reactivestreams.d<? super io.reactivex.flowables.b<K, V>> dVar = this.f71480b;
            int i10 = 1;
            do {
                long j4 = this.f71490l.get();
                long j10 = 0;
                while (true) {
                    i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    }
                    boolean z9 = this.f71493o;
                    io.reactivex.flowables.b<K, V> poll = bVar.poll();
                    boolean z10 = poll == null;
                    if (j(z9, z10, dVar, bVar)) {
                        return;
                    }
                    if (z10) {
                        break;
                    }
                    dVar.onNext(poll);
                    j10++;
                }
                if (i4 == 0 && j(this.f71493o, bVar.isEmpty(), dVar, bVar)) {
                    return;
                }
                if (j10 != 0) {
                    if (j4 != Long.MAX_VALUE) {
                        this.f71490l.addAndGet(-j10);
                    }
                    this.f71488j.request(j10);
                }
                i10 = addAndGet(-i10);
            } while (i10 != 0);
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f71494p) {
                return;
            }
            for (b<K, V> bVar : this.f71485g.values()) {
                bVar.onComplete();
            }
            this.f71485g.clear();
            Queue<b<K, V>> queue = this.f71487i;
            if (queue != null) {
                queue.clear();
            }
            this.f71494p = true;
            this.f71493o = true;
            b();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f71494p) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f71494p = true;
            for (b<K, V> bVar : this.f71485g.values()) {
                bVar.onError(th);
            }
            this.f71485g.clear();
            Queue<b<K, V>> queue = this.f71487i;
            if (queue != null) {
                queue.clear();
            }
            this.f71492n = th;
            this.f71493o = true;
            b();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f71494p) {
                return;
            }
            io.reactivex.internal.queue.b<io.reactivex.flowables.b<K, V>> bVar = this.f71486h;
            try {
                K apply = this.f71481c.apply(t9);
                boolean z9 = false;
                Object obj = apply != null ? apply : f71479s;
                b<K, V> bVar2 = this.f71485g.get(obj);
                if (bVar2 == null) {
                    if (this.f71489k.get()) {
                        return;
                    }
                    bVar2 = b.N8(apply, this.f71483e, this, this.f71484f);
                    this.f71485g.put(obj, bVar2);
                    this.f71491m.getAndIncrement();
                    z9 = true;
                }
                try {
                    bVar2.onNext(io.reactivex.internal.functions.b.g(this.f71482d.apply(t9), "The valueSelector returned null"));
                    k();
                    if (z9) {
                        bVar.offer(bVar2);
                        b();
                    }
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    this.f71488j.cancel();
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f71488j.cancel();
                onError(th2);
            }
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f71488j, eVar)) {
                this.f71488j = eVar;
                this.f71480b.onSubscribe(this);
                eVar.request(this.f71483e);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f71490l, j4);
                b();
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f71495q = true;
                return 2;
            }
            return 0;
        }

        @Override // o7.o
        @m7.f
        public io.reactivex.flowables.b<K, V> poll() {
            return this.f71486h.poll();
        }

        public void cancel(K k10) {
            if (k10 == null) {
                k10 = (K) f71479s;
            }
            this.f71485g.remove(k10);
            if (this.f71491m.decrementAndGet() == 0) {
                this.f71488j.cancel();
                if (this.f71495q || getAndIncrement() != 0) {
                    return;
                }
                this.f71486h.clear();
            }
        }
    }

    /* loaded from: classes3.dex */
    static final class a<K, V> implements n7.g<b<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Queue<b<K, V>> f71496a;

        a(Queue<b<K, V>> queue) {
            this.f71496a = queue;
        }

        @Override // n7.g
        /* renamed from: a */
        public void accept(b<K, V> bVar) {
            this.f71496a.offer(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class b<K, T> extends io.reactivex.flowables.b<K, T> {

        /* renamed from: c  reason: collision with root package name */
        final c<T, K> f71497c;

        protected b(K k10, c<T, K> cVar) {
            super(k10);
            this.f71497c = cVar;
        }

        public static <T, K> b<K, T> N8(K k10, int i4, GroupBySubscriber<?, K, T> groupBySubscriber, boolean z9) {
            return new b<>(k10, new c(i4, groupBySubscriber, k10, z9));
        }

        @Override // io.reactivex.j
        protected void k6(org.reactivestreams.d<? super T> dVar) {
            this.f71497c.i(dVar);
        }

        public void onComplete() {
            this.f71497c.onComplete();
        }

        public void onError(Throwable th) {
            this.f71497c.onError(th);
        }

        public void onNext(T t9) {
            this.f71497c.onNext(t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class c<T, K> extends BasicIntQueueSubscription<T> implements org.reactivestreams.c<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f71498n = -3852313036005250360L;

        /* renamed from: b  reason: collision with root package name */
        final K f71499b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f71500c;

        /* renamed from: d  reason: collision with root package name */
        final GroupBySubscriber<?, K, T> f71501d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f71502e;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f71504g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f71505h;

        /* renamed from: l  reason: collision with root package name */
        boolean f71509l;

        /* renamed from: m  reason: collision with root package name */
        int f71510m;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f71503f = new AtomicLong();

        /* renamed from: i  reason: collision with root package name */
        final AtomicBoolean f71506i = new AtomicBoolean();

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.d<? super T>> f71507j = new AtomicReference<>();

        /* renamed from: k  reason: collision with root package name */
        final AtomicBoolean f71508k = new AtomicBoolean();

        c(int i4, GroupBySubscriber<?, K, T> groupBySubscriber, K k10, boolean z9) {
            this.f71500c = new io.reactivex.internal.queue.b<>(i4);
            this.f71501d = groupBySubscriber;
            this.f71499b = k10;
            this.f71502e = z9;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f71509l) {
                k();
            } else {
                l();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f71506i.compareAndSet(false, true)) {
                this.f71501d.cancel(this.f71499b);
                b();
            }
        }

        @Override // o7.o
        public void clear() {
            io.reactivex.internal.queue.b<T> bVar = this.f71500c;
            while (bVar.poll() != null) {
                this.f71510m++;
            }
            m();
        }

        @Override // org.reactivestreams.c
        public void i(org.reactivestreams.d<? super T> dVar) {
            if (this.f71508k.compareAndSet(false, true)) {
                dVar.onSubscribe(this);
                this.f71507j.lazySet(dVar);
                b();
                return;
            }
            EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), dVar);
        }

        @Override // o7.o
        public boolean isEmpty() {
            if (this.f71500c.isEmpty()) {
                m();
                return true;
            }
            return false;
        }

        boolean j(boolean z9, boolean z10, org.reactivestreams.d<? super T> dVar, boolean z11, long j4) {
            if (this.f71506i.get()) {
                while (this.f71500c.poll() != null) {
                    j4++;
                }
                if (j4 != 0) {
                    this.f71501d.f71488j.request(j4);
                }
                return true;
            } else if (z9) {
                if (z11) {
                    if (z10) {
                        Throwable th = this.f71505h;
                        if (th != null) {
                            dVar.onError(th);
                        } else {
                            dVar.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f71505h;
                if (th2 != null) {
                    this.f71500c.clear();
                    dVar.onError(th2);
                    return true;
                } else if (z10) {
                    dVar.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void k() {
            Throwable th;
            io.reactivex.internal.queue.b<T> bVar = this.f71500c;
            org.reactivestreams.d<? super T> dVar = this.f71507j.get();
            int i4 = 1;
            while (true) {
                if (dVar != null) {
                    if (this.f71506i.get()) {
                        return;
                    }
                    boolean z9 = this.f71504g;
                    if (z9 && !this.f71502e && (th = this.f71505h) != null) {
                        bVar.clear();
                        dVar.onError(th);
                        return;
                    }
                    dVar.onNext(null);
                    if (z9) {
                        Throwable th2 = this.f71505h;
                        if (th2 != null) {
                            dVar.onError(th2);
                            return;
                        } else {
                            dVar.onComplete();
                            return;
                        }
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
                if (dVar == null) {
                    dVar = this.f71507j.get();
                }
            }
        }

        void l() {
            int i4;
            io.reactivex.internal.queue.b<T> bVar = this.f71500c;
            boolean z9 = this.f71502e;
            org.reactivestreams.d<? super T> dVar = this.f71507j.get();
            int i10 = 1;
            while (true) {
                if (dVar != null) {
                    long j4 = this.f71503f.get();
                    long j10 = 0;
                    while (true) {
                        i4 = (j10 > j4 ? 1 : (j10 == j4 ? 0 : -1));
                        if (i4 == 0) {
                            break;
                        }
                        boolean z10 = this.f71504g;
                        Object obj = (T) bVar.poll();
                        boolean z11 = obj == null;
                        long j11 = j10;
                        if (j(z10, z11, dVar, z9, j10)) {
                            return;
                        }
                        if (z11) {
                            j10 = j11;
                            break;
                        } else {
                            dVar.onNext(obj);
                            j10 = j11 + 1;
                        }
                    }
                    if (i4 == 0) {
                        long j12 = j10;
                        if (j(this.f71504g, bVar.isEmpty(), dVar, z9, j10)) {
                            return;
                        }
                        j10 = j12;
                    }
                    if (j10 != 0) {
                        if (j4 != Long.MAX_VALUE) {
                            this.f71503f.addAndGet(-j10);
                        }
                        this.f71501d.f71488j.request(j10);
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
                if (dVar == null) {
                    dVar = this.f71507j.get();
                }
            }
        }

        void m() {
            int i4 = this.f71510m;
            if (i4 != 0) {
                this.f71510m = 0;
                this.f71501d.f71488j.request(i4);
            }
        }

        public void onComplete() {
            this.f71504g = true;
            b();
        }

        public void onError(Throwable th) {
            this.f71505h = th;
            this.f71504g = true;
            b();
        }

        public void onNext(T t9) {
            this.f71500c.offer(t9);
            b();
        }

        @Override // o7.o
        @m7.f
        public T poll() {
            T poll = this.f71500c.poll();
            if (poll != null) {
                this.f71510m++;
                return poll;
            }
            m();
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f71503f, j4);
                b();
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 2) != 0) {
                this.f71509l = true;
                return 2;
            }
            return 0;
        }
    }

    public FlowableGroupBy(io.reactivex.j<T> jVar, n7.o<? super T, ? extends K> oVar, n7.o<? super T, ? extends V> oVar2, int i4, boolean z9, n7.o<? super n7.g<Object>, ? extends Map<K, Object>> oVar3) {
        super(jVar);
        this.f71473c = oVar;
        this.f71474d = oVar2;
        this.f71475e = i4;
        this.f71476f = z9;
        this.f71477g = oVar3;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super io.reactivex.flowables.b<K, V>> dVar) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        Map<K, Object> apply;
        try {
            if (this.f71477g == null) {
                concurrentLinkedQueue = null;
                apply = new ConcurrentHashMap<>();
            } else {
                concurrentLinkedQueue = new ConcurrentLinkedQueue();
                apply = this.f71477g.apply(new a(concurrentLinkedQueue));
            }
            this.f71538b.j6(new GroupBySubscriber(dVar, this.f71473c, this.f71474d, this.f71475e, this.f71476f, apply, concurrentLinkedQueue));
        } catch (Exception e4) {
            io.reactivex.exceptions.a.b(e4);
            dVar.onSubscribe(EmptyComponent.INSTANCE);
            dVar.onError(e4);
        }
    }
}
