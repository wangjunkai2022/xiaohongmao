package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.internal.util.a;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: BehaviorProcessor.java */
/* loaded from: classes4.dex */
public final class b<T> extends c<T> {

    /* renamed from: i  reason: collision with root package name */
    static final Object[] f81418i = new Object[0];

    /* renamed from: j  reason: collision with root package name */
    static final a[] f81419j = new a[0];

    /* renamed from: k  reason: collision with root package name */
    static final a[] f81420k = new a[0];

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81421b;

    /* renamed from: c  reason: collision with root package name */
    final ReadWriteLock f81422c;

    /* renamed from: d  reason: collision with root package name */
    final Lock f81423d;

    /* renamed from: e  reason: collision with root package name */
    final Lock f81424e;

    /* renamed from: f  reason: collision with root package name */
    final AtomicReference<Object> f81425f;

    /* renamed from: g  reason: collision with root package name */
    final AtomicReference<Throwable> f81426g;

    /* renamed from: h  reason: collision with root package name */
    long f81427h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BehaviorProcessor.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicLong implements org.reactivestreams.e, a.InterfaceC0695a<Object> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f81428i = 3293175281126227086L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f81429a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f81430b;

        /* renamed from: c  reason: collision with root package name */
        boolean f81431c;

        /* renamed from: d  reason: collision with root package name */
        boolean f81432d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.internal.util.a<Object> f81433e;

        /* renamed from: f  reason: collision with root package name */
        boolean f81434f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f81435g;

        /* renamed from: h  reason: collision with root package name */
        long f81436h;

        a(org.reactivestreams.d<? super T> actual, b<T> state) {
            this.f81429a = actual;
            this.f81430b = state;
        }

        void a() {
            if (this.f81435g) {
                return;
            }
            synchronized (this) {
                if (this.f81435g) {
                    return;
                }
                if (this.f81431c) {
                    return;
                }
                b<T> bVar = this.f81430b;
                Lock lock = bVar.f81423d;
                lock.lock();
                this.f81436h = bVar.f81427h;
                Object obj = bVar.f81425f.get();
                lock.unlock();
                this.f81432d = obj != null;
                this.f81431c = true;
                if (obj == null || test(obj)) {
                    return;
                }
                b();
            }
        }

        void b() {
            io.reactivex.rxjava3.internal.util.a<Object> aVar;
            while (!this.f81435g) {
                synchronized (this) {
                    aVar = this.f81433e;
                    if (aVar == null) {
                        this.f81432d = false;
                        return;
                    }
                    this.f81433e = null;
                }
                aVar.d(this);
            }
        }

        void c(Object value, long stateIndex) {
            if (this.f81435g) {
                return;
            }
            if (!this.f81434f) {
                synchronized (this) {
                    if (this.f81435g) {
                        return;
                    }
                    if (this.f81436h == stateIndex) {
                        return;
                    }
                    if (this.f81432d) {
                        io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81433e;
                        if (aVar == null) {
                            aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                            this.f81433e = aVar;
                        }
                        aVar.c(value);
                        return;
                    }
                    this.f81431c = true;
                    this.f81434f = true;
                }
            }
            test(value);
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f81435g) {
                return;
            }
            this.f81435g = true;
            this.f81430b.r9(this);
        }

        public boolean d() {
            return get() == 0;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this, n9);
            }
        }

        @Override // io.reactivex.rxjava3.internal.util.a.InterfaceC0695a, q7.r
        public boolean test(Object o9) {
            if (this.f81435g) {
                return true;
            }
            if (NotificationLite.isComplete(o9)) {
                this.f81429a.onComplete();
                return true;
            } else if (NotificationLite.isError(o9)) {
                this.f81429a.onError(NotificationLite.getError(o9));
                return true;
            } else {
                long j4 = get();
                if (j4 != 0) {
                    this.f81429a.onNext((Object) NotificationLite.getValue(o9));
                    if (j4 != Long.MAX_VALUE) {
                        decrementAndGet();
                        return false;
                    }
                    return false;
                }
                cancel();
                this.f81429a.onError(new MissingBackpressureException("Could not deliver value due to lack of requests"));
                return true;
            }
        }
    }

    b() {
        this.f81425f = new AtomicReference<>();
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f81422c = reentrantReadWriteLock;
        this.f81423d = reentrantReadWriteLock.readLock();
        this.f81424e = reentrantReadWriteLock.writeLock();
        this.f81421b = new AtomicReference<>(f81419j);
        this.f81426g = new AtomicReference<>();
    }

    @p7.c
    @p7.e
    public static <T> b<T> m9() {
        return new b<>();
    }

    @p7.c
    @p7.e
    public static <T> b<T> n9(T defaultValue) {
        Objects.requireNonNull(defaultValue, "defaultValue is null");
        return new b<>(defaultValue);
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(@p7.e org.reactivestreams.d<? super T> s9) {
        a<T> aVar = new a<>(s9, this);
        s9.onSubscribe(aVar);
        if (l9(aVar)) {
            if (aVar.f81435g) {
                r9(aVar);
                return;
            } else {
                aVar.a();
                return;
            }
        }
        Throwable th = this.f81426g.get();
        if (th == io.reactivex.rxjava3.internal.util.g.f81331a) {
            s9.onComplete();
        } else {
            s9.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    @p7.f
    public Throwable g9() {
        Object obj = this.f81425f.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean h9() {
        return NotificationLite.isComplete(this.f81425f.get());
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean i9() {
        return this.f81421b.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean j9() {
        return NotificationLite.isError(this.f81425f.get());
    }

    boolean l9(a<T> rs) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81421b.get();
            if (aVarArr == f81420k) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = rs;
        } while (!this.f81421b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @p7.c
    @p7.f
    public T o9() {
        Object obj = this.f81425f.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) NotificationLite.getValue(obj);
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81426g.compareAndSet(null, io.reactivex.rxjava3.internal.util.g.f81331a)) {
            Object complete = NotificationLite.complete();
            for (a<T> aVar : u9(complete)) {
                aVar.c(complete, this.f81427h);
            }
        }
    }

    @Override // org.reactivestreams.d
    public void onError(@p7.e Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        if (!this.f81426g.compareAndSet(null, t9)) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        Object error = NotificationLite.error(t9);
        for (a<T> aVar : u9(error)) {
            aVar.c(error, this.f81427h);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(@p7.e T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        if (this.f81426g.get() != null) {
            return;
        }
        Object next = NotificationLite.next(t9);
        s9(next);
        for (a<T> aVar : this.f81421b.get()) {
            aVar.c(next, this.f81427h);
        }
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(@p7.e org.reactivestreams.e s9) {
        if (this.f81426g.get() != null) {
            s9.cancel();
        } else {
            s9.request(Long.MAX_VALUE);
        }
    }

    @p7.c
    public boolean p9() {
        Object obj = this.f81425f.get();
        return (obj == null || NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? false : true;
    }

    @p7.c
    public boolean q9(@p7.e T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "offer called with a null value.");
        a<T>[] aVarArr = this.f81421b.get();
        for (a<T> aVar : aVarArr) {
            if (aVar.d()) {
                return false;
            }
        }
        Object next = NotificationLite.next(t9);
        s9(next);
        for (a<T> aVar2 : aVarArr) {
            aVar2.c(next, this.f81427h);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void r9(a<T> rs) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81421b.get();
            int length = aVarArr.length;
            if (length == 0) {
                return;
            }
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == rs) {
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
                aVarArr2 = f81419j;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81421b.compareAndSet(aVarArr, aVarArr2));
    }

    void s9(Object o9) {
        Lock lock = this.f81424e;
        lock.lock();
        this.f81427h++;
        this.f81425f.lazySet(o9);
        lock.unlock();
    }

    @p7.c
    int t9() {
        return this.f81421b.get().length;
    }

    a<T>[] u9(Object terminalValue) {
        s9(terminalValue);
        return this.f81421b.getAndSet(f81420k);
    }

    b(T defaultValue) {
        this();
        this.f81425f.lazySet(defaultValue);
    }
}
