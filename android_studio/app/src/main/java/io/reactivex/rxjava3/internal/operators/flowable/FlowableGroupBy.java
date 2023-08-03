package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.EmptyComponent;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class FlowableGroupBy<T, K, V> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, io.reactivex.rxjava3.flowables.b<K, V>> {

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends K> f76744c;

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super T, ? extends V> f76745d;

    /* renamed from: e  reason: collision with root package name */
    final int f76746e;

    /* renamed from: f  reason: collision with root package name */
    final boolean f76747f;

    /* renamed from: g  reason: collision with root package name */
    final q7.o<? super q7.g<Object>, ? extends Map<K, Object>> f76748g;

    /* loaded from: classes4.dex */
    static final class a<K, V> implements q7.g<b<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Queue<b<K, V>> f76765a;

        a(Queue<b<K, V>> evictedGroups) {
            this.f76765a = evictedGroups;
        }

        @Override // q7.g
        /* renamed from: a */
        public void accept(b<K, V> value) {
            this.f76765a.offer(value);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class b<K, T> extends io.reactivex.rxjava3.flowables.b<K, T> {

        /* renamed from: c  reason: collision with root package name */
        final c<T, K> f76766c;

        protected b(K key, c<T, K> state) {
            super(key);
            this.f76766c = state;
        }

        public static <T, K> b<K, T> h9(K key, int bufferSize, GroupBySubscriber<?, K, T> parent, boolean delayError) {
            return new b<>(key, new c(bufferSize, parent, key, delayError));
        }

        @Override // io.reactivex.rxjava3.core.m
        protected void H6(org.reactivestreams.d<? super T> s9) {
            this.f76766c.i(s9);
        }

        public void onComplete() {
            this.f76766c.onComplete();
        }

        public void onError(Throwable e4) {
            this.f76766c.onError(e4);
        }

        public void onNext(T t9) {
            this.f76766c.onNext(t9);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static final class c<T, K> extends BasicIntQueueSubscription<T> implements org.reactivestreams.c<T> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f76767n = -3852313036005250360L;

        /* renamed from: o  reason: collision with root package name */
        static final int f76768o = 0;

        /* renamed from: p  reason: collision with root package name */
        static final int f76769p = 1;

        /* renamed from: q  reason: collision with root package name */
        static final int f76770q = 2;

        /* renamed from: r  reason: collision with root package name */
        static final int f76771r = 3;

        /* renamed from: b  reason: collision with root package name */
        final K f76772b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<T> f76773c;

        /* renamed from: d  reason: collision with root package name */
        final GroupBySubscriber<?, K, T> f76774d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f76775e;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f76777g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f76778h;

        /* renamed from: k  reason: collision with root package name */
        boolean f76781k;

        /* renamed from: l  reason: collision with root package name */
        int f76782l;

        /* renamed from: f  reason: collision with root package name */
        final AtomicLong f76776f = new AtomicLong();

        /* renamed from: i  reason: collision with root package name */
        final AtomicBoolean f76779i = new AtomicBoolean();

        /* renamed from: j  reason: collision with root package name */
        final AtomicReference<org.reactivestreams.d<? super T>> f76780j = new AtomicReference<>();

        /* renamed from: m  reason: collision with root package name */
        final AtomicInteger f76783m = new AtomicInteger();

        c(int bufferSize, GroupBySubscriber<?, K, T> parent, K key, boolean delayError) {
            this.f76773c = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
            this.f76774d = parent;
            this.f76772b = key;
            this.f76775e = delayError;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.f76781k) {
                l();
            } else {
                m();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f76779i.compareAndSet(false, true)) {
                j();
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f76773c;
            while (bVar.poll() != null) {
                this.f76782l++;
            }
            p();
        }

        @Override // org.reactivestreams.c
        public void i(org.reactivestreams.d<? super T> subscriber) {
            int i4;
            do {
                i4 = this.f76783m.get();
                if ((i4 & 1) != 0) {
                    EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), subscriber);
                    return;
                }
            } while (!this.f76783m.compareAndSet(i4, i4 | 1));
            subscriber.onSubscribe(this);
            this.f76780j.lazySet(subscriber);
            if (this.f76779i.get()) {
                this.f76780j.lazySet(null);
            } else {
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            if (this.f76773c.isEmpty()) {
                p();
                return true;
            }
            p();
            return false;
        }

        void j() {
            if ((this.f76783m.get() & 2) == 0) {
                this.f76774d.cancel(this.f76772b);
            }
        }

        boolean k(boolean d4, boolean empty, org.reactivestreams.d<? super T> a10, boolean delayError, long emitted) {
            if (this.f76779i.get()) {
                while (this.f76773c.poll() != null) {
                    emitted++;
                }
                if (emitted != 0) {
                    n(emitted);
                }
                return true;
            } else if (d4) {
                if (delayError) {
                    if (empty) {
                        Throwable th = this.f76778h;
                        if (th != null) {
                            a10.onError(th);
                        } else {
                            a10.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = this.f76778h;
                if (th2 != null) {
                    this.f76773c.clear();
                    a10.onError(th2);
                    return true;
                } else if (empty) {
                    a10.onComplete();
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
            io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f76773c;
            org.reactivestreams.d<? super T> dVar = this.f76780j.get();
            int i4 = 1;
            while (true) {
                if (dVar != null) {
                    if (this.f76779i.get()) {
                        return;
                    }
                    boolean z9 = this.f76777g;
                    if (z9 && !this.f76775e && (th = this.f76778h) != null) {
                        bVar.clear();
                        dVar.onError(th);
                        return;
                    }
                    dVar.onNext(null);
                    if (z9) {
                        Throwable th2 = this.f76778h;
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
                    dVar = this.f76780j.get();
                }
            }
        }

        void m() {
            int i4;
            long j4;
            io.reactivex.rxjava3.internal.queue.b<T> bVar = this.f76773c;
            boolean z9 = this.f76775e;
            org.reactivestreams.d<? super T> dVar = this.f76780j.get();
            int i10 = 1;
            while (true) {
                if (dVar != null) {
                    long j10 = this.f76776f.get();
                    long j11 = 0;
                    while (true) {
                        i4 = (j11 > j10 ? 1 : (j11 == j10 ? 0 : -1));
                        if (i4 == 0) {
                            break;
                        }
                        boolean z10 = this.f76777g;
                        Object obj = (T) bVar.poll();
                        boolean z11 = obj == null;
                        long j12 = j11;
                        if (k(z10, z11, dVar, z9, j11)) {
                            return;
                        }
                        if (z11) {
                            j11 = j12;
                            break;
                        } else {
                            dVar.onNext(obj);
                            j11 = j12 + 1;
                        }
                    }
                    if (i4 == 0) {
                        j4 = j11;
                        if (k(this.f76777g, bVar.isEmpty(), dVar, z9, j11)) {
                            return;
                        }
                    } else {
                        j4 = j11;
                    }
                    if (j4 != 0) {
                        io.reactivex.rxjava3.internal.util.b.e(this.f76776f, j4);
                        n(j4);
                    }
                }
                i10 = addAndGet(-i10);
                if (i10 == 0) {
                    return;
                }
                if (dVar == null) {
                    dVar = this.f76780j.get();
                }
            }
        }

        void n(long e4) {
            if ((this.f76783m.get() & 2) == 0) {
                this.f76774d.c(e4);
            }
        }

        boolean o() {
            return this.f76783m.get() == 0 && this.f76783m.compareAndSet(0, 2);
        }

        public void onComplete() {
            this.f76777g = true;
            b();
        }

        public void onError(Throwable e4) {
            this.f76778h = e4;
            this.f76777g = true;
            b();
        }

        public void onNext(T t9) {
            this.f76773c.offer(t9);
            b();
        }

        void p() {
            int i4 = this.f76782l;
            if (i4 != 0) {
                this.f76782l = 0;
                n(i4);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            T poll = this.f76773c.poll();
            if (poll != null) {
                this.f76782l++;
                return poll;
            }
            p();
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f76776f, n9);
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f76781k = true;
                return 2;
            }
            return 0;
        }
    }

    public FlowableGroupBy(io.reactivex.rxjava3.core.m<T> source, q7.o<? super T, ? extends K> keySelector, q7.o<? super T, ? extends V> valueSelector, int bufferSize, boolean delayError, q7.o<? super q7.g<Object>, ? extends Map<K, Object>> mapFactory) {
        super(source);
        this.f76744c = keySelector;
        this.f76745d = valueSelector;
        this.f76746e = bufferSize;
        this.f76747f = delayError;
        this.f76748g = mapFactory;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super io.reactivex.rxjava3.flowables.b<K, V>> s9) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        Map<K, Object> apply;
        try {
            if (this.f76748g == null) {
                concurrentLinkedQueue = null;
                apply = new ConcurrentHashMap<>();
            } else {
                concurrentLinkedQueue = new ConcurrentLinkedQueue();
                apply = this.f76748g.apply(new a(concurrentLinkedQueue));
            }
            this.f76811b.G6(new GroupBySubscriber(s9, this.f76744c, this.f76745d, this.f76746e, this.f76747f, apply, concurrentLinkedQueue));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            s9.onSubscribe(EmptyComponent.INSTANCE);
            s9.onError(th);
        }
    }

    /* loaded from: classes4.dex */
    public static final class GroupBySubscriber<T, K, V> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: o  reason: collision with root package name */
        private static final long f76749o = -3688291656102519502L;

        /* renamed from: p  reason: collision with root package name */
        static final Object f76750p = new Object();

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super io.reactivex.rxjava3.flowables.b<K, V>> f76751a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends K> f76752b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends V> f76753c;

        /* renamed from: d  reason: collision with root package name */
        final int f76754d;

        /* renamed from: e  reason: collision with root package name */
        final int f76755e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f76756f;

        /* renamed from: g  reason: collision with root package name */
        final Map<Object, b<K, V>> f76757g;

        /* renamed from: h  reason: collision with root package name */
        final Queue<b<K, V>> f76758h;

        /* renamed from: i  reason: collision with root package name */
        org.reactivestreams.e f76759i;

        /* renamed from: k  reason: collision with root package name */
        long f76761k;

        /* renamed from: n  reason: collision with root package name */
        boolean f76764n;

        /* renamed from: j  reason: collision with root package name */
        final AtomicBoolean f76760j = new AtomicBoolean();

        /* renamed from: l  reason: collision with root package name */
        final AtomicInteger f76762l = new AtomicInteger(1);

        /* renamed from: m  reason: collision with root package name */
        final AtomicLong f76763m = new AtomicLong();

        public GroupBySubscriber(org.reactivestreams.d<? super io.reactivex.rxjava3.flowables.b<K, V>> actual, q7.o<? super T, ? extends K> keySelector, q7.o<? super T, ? extends V> valueSelector, int bufferSize, boolean delayError, Map<Object, b<K, V>> groups, Queue<b<K, V>> evictedGroups) {
            this.f76751a = actual;
            this.f76752b = keySelector;
            this.f76753c = valueSelector;
            this.f76754d = bufferSize;
            this.f76755e = bufferSize - (bufferSize >> 2);
            this.f76756f = delayError;
            this.f76757g = groups;
            this.f76758h = evictedGroups;
        }

        private void a() {
            if (this.f76758h != null) {
                int i4 = 0;
                while (true) {
                    b<K, V> poll = this.f76758h.poll();
                    if (poll == null) {
                        break;
                    }
                    poll.onComplete();
                    i4++;
                }
                if (i4 != 0) {
                    this.f76762l.addAndGet(-i4);
                }
            }
        }

        static String b(long n9) {
            return "Unable to emit a new group (#" + n9 + ") due to lack of requests. Please make sure the downstream can always accept a new group as well as each group is consumed in order for the whole operator to be able to proceed.";
        }

        void c(long n9) {
            long j4;
            long c10;
            AtomicLong atomicLong = this.f76763m;
            int i4 = this.f76755e;
            do {
                j4 = atomicLong.get();
                c10 = io.reactivex.rxjava3.internal.util.b.c(j4, n9);
            } while (!atomicLong.compareAndSet(j4, c10));
            while (true) {
                long j10 = i4;
                if (c10 < j10) {
                    return;
                }
                if (atomicLong.compareAndSet(c10, c10 - j10)) {
                    this.f76759i.request(j10);
                }
                c10 = atomicLong.get();
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f76760j.compareAndSet(false, true)) {
                a();
                if (this.f76762l.decrementAndGet() == 0) {
                    this.f76759i.cancel();
                }
            }
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f76764n) {
                return;
            }
            for (b<K, V> bVar : this.f76757g.values()) {
                bVar.onComplete();
            }
            this.f76757g.clear();
            Queue<b<K, V>> queue = this.f76758h;
            if (queue != null) {
                queue.clear();
            }
            this.f76764n = true;
            this.f76751a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f76764n) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f76764n = true;
            for (b<K, V> bVar : this.f76757g.values()) {
                bVar.onError(t9);
            }
            this.f76757g.clear();
            Queue<b<K, V>> queue = this.f76758h;
            if (queue != null) {
                queue.clear();
            }
            this.f76751a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f76764n) {
                return;
            }
            try {
                K apply = this.f76752b.apply(t9);
                boolean z9 = false;
                Object obj = apply != null ? apply : f76750p;
                b<K, V> bVar = this.f76757g.get(obj);
                if (bVar == null) {
                    if (this.f76760j.get()) {
                        return;
                    }
                    bVar = b.h9(apply, this.f76754d, this, this.f76756f);
                    this.f76757g.put(obj, bVar);
                    this.f76762l.getAndIncrement();
                    z9 = true;
                }
                try {
                    bVar.onNext((V) io.reactivex.rxjava3.internal.util.g.d(this.f76753c.apply(t9), "The valueSelector returned a null value."));
                    a();
                    if (z9) {
                        if (this.f76761k != get()) {
                            this.f76761k++;
                            this.f76751a.onNext(bVar);
                            if (bVar.f76766c.o()) {
                                cancel(apply);
                                bVar.onComplete();
                                c(1L);
                                return;
                            }
                            return;
                        }
                        this.f76759i.cancel();
                        onError(new MissingBackpressureException(b(this.f76761k)));
                    }
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f76759i.cancel();
                    if (z9) {
                        if (this.f76761k != get()) {
                            this.f76751a.onNext(bVar);
                        } else {
                            MissingBackpressureException missingBackpressureException = new MissingBackpressureException(b(this.f76761k));
                            missingBackpressureException.initCause(th);
                            onError(missingBackpressureException);
                            return;
                        }
                    }
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f76759i.cancel();
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f76759i, s9)) {
                this.f76759i = s9;
                this.f76751a.onSubscribe(this);
                s9.request(this.f76754d);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
            }
        }

        public void cancel(K key) {
            if (key == null) {
                key = (K) f76750p;
            }
            this.f76757g.remove(key);
            if (this.f76762l.decrementAndGet() == 0) {
                this.f76759i.cancel();
            }
        }
    }
}
