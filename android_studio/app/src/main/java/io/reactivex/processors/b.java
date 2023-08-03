package io.reactivex.processors;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: BehaviorProcessor.java */
/* loaded from: classes4.dex */
public final class b<T> extends c<T> {

    /* renamed from: i  reason: collision with root package name */
    static final Object[] f76008i = new Object[0];

    /* renamed from: j  reason: collision with root package name */
    static final a[] f76009j = new a[0];

    /* renamed from: k  reason: collision with root package name */
    static final a[] f76010k = new a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a<T>[]> f76011b;

    /* renamed from: c  reason: collision with root package name */
    final ReadWriteLock f76012c;

    /* renamed from: d  reason: collision with root package name */
    final Lock f76013d;

    /* renamed from: e  reason: collision with root package name */
    final Lock f76014e;

    /* renamed from: f  reason: collision with root package name */
    final AtomicReference<Object> f76015f;

    /* renamed from: g  reason: collision with root package name */
    final AtomicReference<Throwable> f76016g;

    /* renamed from: h  reason: collision with root package name */
    long f76017h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BehaviorProcessor.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicLong implements org.reactivestreams.e, a.InterfaceC0614a<Object> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f76018i = 3293175281126227086L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f76019a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f76020b;

        /* renamed from: c  reason: collision with root package name */
        boolean f76021c;

        /* renamed from: d  reason: collision with root package name */
        boolean f76022d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.internal.util.a<Object> f76023e;

        /* renamed from: f  reason: collision with root package name */
        boolean f76024f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f76025g;

        /* renamed from: h  reason: collision with root package name */
        long f76026h;

        a(org.reactivestreams.d<? super T> dVar, b<T> bVar) {
            this.f76019a = dVar;
            this.f76020b = bVar;
        }

        void a() {
            if (this.f76025g) {
                return;
            }
            synchronized (this) {
                if (this.f76025g) {
                    return;
                }
                if (this.f76021c) {
                    return;
                }
                b<T> bVar = this.f76020b;
                Lock lock = bVar.f76013d;
                lock.lock();
                this.f76026h = bVar.f76017h;
                Object obj = bVar.f76015f.get();
                lock.unlock();
                this.f76022d = obj != null;
                this.f76021c = true;
                if (obj == null || test(obj)) {
                    return;
                }
                b();
            }
        }

        void b() {
            io.reactivex.internal.util.a<Object> aVar;
            while (!this.f76025g) {
                synchronized (this) {
                    aVar = this.f76023e;
                    if (aVar == null) {
                        this.f76022d = false;
                        return;
                    }
                    this.f76023e = null;
                }
                aVar.d(this);
            }
        }

        void c(Object obj, long j4) {
            if (this.f76025g) {
                return;
            }
            if (!this.f76024f) {
                synchronized (this) {
                    if (this.f76025g) {
                        return;
                    }
                    if (this.f76026h == j4) {
                        return;
                    }
                    if (this.f76022d) {
                        io.reactivex.internal.util.a<Object> aVar = this.f76023e;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f76023e = aVar;
                        }
                        aVar.c(obj);
                        return;
                    }
                    this.f76021c = true;
                    this.f76024f = true;
                }
            }
            test(obj);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f76025g) {
                return;
            }
            this.f76025g = true;
            this.f76020b.Z8(this);
        }

        public boolean d() {
            return get() == 0;
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this, j4);
            }
        }

        @Override // io.reactivex.internal.util.a.InterfaceC0614a, n7.r
        public boolean test(Object obj) {
            if (this.f76025g) {
                return true;
            }
            if (NotificationLite.isComplete(obj)) {
                this.f76019a.onComplete();
                return true;
            } else if (NotificationLite.isError(obj)) {
                this.f76019a.onError(NotificationLite.getError(obj));
                return true;
            } else {
                long j4 = get();
                if (j4 != 0) {
                    this.f76019a.onNext((Object) NotificationLite.getValue(obj));
                    if (j4 != Long.MAX_VALUE) {
                        decrementAndGet();
                        return false;
                    }
                    return false;
                }
                cancel();
                this.f76019a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
                return true;
            }
        }
    }

    b() {
        this.f76015f = new AtomicReference<>();
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f76012c = reentrantReadWriteLock;
        this.f76013d = reentrantReadWriteLock.readLock();
        this.f76014e = reentrantReadWriteLock.writeLock();
        this.f76011b = new AtomicReference<>(f76009j);
        this.f76016g = new AtomicReference<>();
    }

    @m7.e
    @m7.c
    public static <T> b<T> S8() {
        return new b<>();
    }

    @m7.e
    @m7.c
    public static <T> b<T> T8(T t9) {
        io.reactivex.internal.functions.b.g(t9, "defaultValue is null");
        return new b<>(t9);
    }

    @Override // io.reactivex.processors.c
    @m7.f
    public Throwable M8() {
        Object obj = this.f76015f.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.processors.c
    public boolean N8() {
        return NotificationLite.isComplete(this.f76015f.get());
    }

    @Override // io.reactivex.processors.c
    public boolean O8() {
        return this.f76011b.get().length != 0;
    }

    @Override // io.reactivex.processors.c
    public boolean P8() {
        return NotificationLite.isError(this.f76015f.get());
    }

    boolean R8(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f76011b.get();
            if (aVarArr == f76010k) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f76011b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @m7.f
    public T U8() {
        Object obj = this.f76015f.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) NotificationLite.getValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public Object[] V8() {
        Object[] objArr = f76008i;
        Object[] W8 = W8(objArr);
        return W8 == objArr ? new Object[0] : W8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public T[] W8(T[] tArr) {
        Object obj = this.f76015f.get();
        if (obj != null && !NotificationLite.isComplete(obj) && !NotificationLite.isError(obj)) {
            Object value = NotificationLite.getValue(obj);
            if (tArr.length != 0) {
                tArr[0] = value;
                if (tArr.length != 1) {
                    tArr[1] = 0;
                    return tArr;
                }
                return tArr;
            }
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
            tArr2[0] = value;
            return tArr2;
        }
        if (tArr.length != 0) {
            tArr[0] = 0;
        }
        return tArr;
    }

    public boolean X8() {
        Object obj = this.f76015f.get();
        return (obj == null || NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? false : true;
    }

    public boolean Y8(T t9) {
        if (t9 == null) {
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return true;
        }
        a<T>[] aVarArr = this.f76011b.get();
        for (a<T> aVar : aVarArr) {
            if (aVar.d()) {
                return false;
            }
        }
        Object next = NotificationLite.next(t9);
        a9(next);
        for (a<T> aVar2 : aVarArr) {
            aVar2.c(next, this.f76017h);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void Z8(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f76011b.get();
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
                aVarArr2 = f76009j;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f76011b.compareAndSet(aVarArr, aVarArr2));
    }

    void a9(Object obj) {
        Lock lock = this.f76014e;
        lock.lock();
        this.f76017h++;
        this.f76015f.lazySet(obj);
        lock.unlock();
    }

    int b9() {
        return this.f76011b.get().length;
    }

    a<T>[] c9(Object obj) {
        a<T>[] aVarArr = this.f76011b.get();
        a<T>[] aVarArr2 = f76010k;
        if (aVarArr != aVarArr2 && (aVarArr = this.f76011b.getAndSet(aVarArr2)) != aVarArr2) {
            a9(obj);
        }
        return aVarArr;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        a<T> aVar = new a<>(dVar, this);
        dVar.onSubscribe(aVar);
        if (R8(aVar)) {
            if (aVar.f76025g) {
                Z8(aVar);
                return;
            } else {
                aVar.a();
                return;
            }
        }
        Throwable th = this.f76016g.get();
        if (th == io.reactivex.internal.util.g.f75916a) {
            dVar.onComplete();
        } else {
            dVar.onError(th);
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f76016g.compareAndSet(null, io.reactivex.internal.util.g.f75916a)) {
            Object complete = NotificationLite.complete();
            for (a<T> aVar : c9(complete)) {
                aVar.c(complete, this.f76017h);
            }
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f76016g.compareAndSet(null, th)) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        Object error = NotificationLite.error(th);
        for (a<T> aVar : c9(error)) {
            aVar.c(error, this.f76017h);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f76016g.get() != null) {
            return;
        }
        Object next = NotificationLite.next(t9);
        a9(next);
        for (a<T> aVar : this.f76011b.get()) {
            aVar.c(next, this.f76017h);
        }
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (this.f76016g.get() != null) {
            eVar.cancel();
        } else {
            eVar.request(Long.MAX_VALUE);
        }
    }

    b(T t9) {
        this();
        this.f76015f.lazySet(io.reactivex.internal.functions.b.g(t9, "defaultValue is null"));
    }
}
