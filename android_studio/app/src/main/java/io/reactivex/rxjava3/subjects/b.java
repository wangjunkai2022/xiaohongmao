package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import io.reactivex.rxjava3.internal.util.a;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: BehaviorSubject.java */
/* loaded from: classes4.dex */
public final class b<T> extends i<T> {

    /* renamed from: h  reason: collision with root package name */
    static final a[] f81545h = new a[0];

    /* renamed from: i  reason: collision with root package name */
    static final a[] f81546i = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<Object> f81547a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81548b;

    /* renamed from: c  reason: collision with root package name */
    final ReadWriteLock f81549c;

    /* renamed from: d  reason: collision with root package name */
    final Lock f81550d;

    /* renamed from: e  reason: collision with root package name */
    final Lock f81551e;

    /* renamed from: f  reason: collision with root package name */
    final AtomicReference<Throwable> f81552f;

    /* renamed from: g  reason: collision with root package name */
    long f81553g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BehaviorSubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> implements io.reactivex.rxjava3.disposables.f, a.InterfaceC0695a<Object> {

        /* renamed from: a  reason: collision with root package name */
        final n0<? super T> f81554a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f81555b;

        /* renamed from: c  reason: collision with root package name */
        boolean f81556c;

        /* renamed from: d  reason: collision with root package name */
        boolean f81557d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.internal.util.a<Object> f81558e;

        /* renamed from: f  reason: collision with root package name */
        boolean f81559f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f81560g;

        /* renamed from: h  reason: collision with root package name */
        long f81561h;

        a(n0<? super T> actual, b<T> state) {
            this.f81554a = actual;
            this.f81555b = state;
        }

        void a() {
            if (this.f81560g) {
                return;
            }
            synchronized (this) {
                if (this.f81560g) {
                    return;
                }
                if (this.f81556c) {
                    return;
                }
                b<T> bVar = this.f81555b;
                Lock lock = bVar.f81550d;
                lock.lock();
                this.f81561h = bVar.f81553g;
                Object obj = bVar.f81547a.get();
                lock.unlock();
                this.f81557d = obj != null;
                this.f81556c = true;
                if (obj == null || test(obj)) {
                    return;
                }
                b();
            }
        }

        void b() {
            io.reactivex.rxjava3.internal.util.a<Object> aVar;
            while (!this.f81560g) {
                synchronized (this) {
                    aVar = this.f81558e;
                    if (aVar == null) {
                        this.f81557d = false;
                        return;
                    }
                    this.f81558e = null;
                }
                aVar.d(this);
            }
        }

        void c(Object value, long stateIndex) {
            if (this.f81560g) {
                return;
            }
            if (!this.f81559f) {
                synchronized (this) {
                    if (this.f81560g) {
                        return;
                    }
                    if (this.f81561h == stateIndex) {
                        return;
                    }
                    if (this.f81557d) {
                        io.reactivex.rxjava3.internal.util.a<Object> aVar = this.f81558e;
                        if (aVar == null) {
                            aVar = new io.reactivex.rxjava3.internal.util.a<>(4);
                            this.f81558e = aVar;
                        }
                        aVar.c(value);
                        return;
                    }
                    this.f81556c = true;
                    this.f81559f = true;
                }
            }
            test(value);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f81560g) {
                return;
            }
            this.f81560g = true;
            this.f81555b.K8(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81560g;
        }

        @Override // io.reactivex.rxjava3.internal.util.a.InterfaceC0695a, q7.r
        public boolean test(Object o9) {
            return this.f81560g || NotificationLite.accept(o9, this.f81554a);
        }
    }

    b(T defaultValue) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f81549c = reentrantReadWriteLock;
        this.f81550d = reentrantReadWriteLock.readLock();
        this.f81551e = reentrantReadWriteLock.writeLock();
        this.f81548b = new AtomicReference<>(f81545h);
        this.f81547a = new AtomicReference<>(defaultValue);
        this.f81552f = new AtomicReference<>();
    }

    @p7.c
    @p7.e
    public static <T> b<T> G8() {
        return new b<>(null);
    }

    @p7.c
    @p7.e
    public static <T> b<T> H8(T defaultValue) {
        Objects.requireNonNull(defaultValue, "defaultValue is null");
        return new b<>(defaultValue);
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    @p7.f
    public Throwable A8() {
        Object obj = this.f81547a.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean B8() {
        return NotificationLite.isComplete(this.f81547a.get());
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean C8() {
        return this.f81548b.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean D8() {
        return NotificationLite.isError(this.f81547a.get());
    }

    boolean F8(a<T> rs) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81548b.get();
            if (aVarArr == f81546i) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = rs;
        } while (!this.f81548b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @p7.c
    @p7.f
    public T I8() {
        Object obj = this.f81547a.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) NotificationLite.getValue(obj);
    }

    @p7.c
    public boolean J8() {
        Object obj = this.f81547a.get();
        return (obj == null || NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void K8(a<T> rs) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81548b.get();
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
                aVarArr2 = f81545h;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81548b.compareAndSet(aVarArr, aVarArr2));
    }

    void L8(Object o9) {
        this.f81551e.lock();
        this.f81553g++;
        this.f81547a.lazySet(o9);
        this.f81551e.unlock();
    }

    @p7.c
    int M8() {
        return this.f81548b.get().length;
    }

    a<T>[] N8(Object terminalValue) {
        L8(terminalValue);
        return this.f81548b.getAndSet(f81546i);
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super T> observer) {
        a<T> aVar = new a<>(observer, this);
        observer.onSubscribe(aVar);
        if (F8(aVar)) {
            if (aVar.f81560g) {
                K8(aVar);
                return;
            } else {
                aVar.a();
                return;
            }
        }
        Throwable th = this.f81552f.get();
        if (th == io.reactivex.rxjava3.internal.util.g.f81331a) {
            observer.onComplete();
        } else {
            observer.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (this.f81552f.compareAndSet(null, io.reactivex.rxjava3.internal.util.g.f81331a)) {
            Object complete = NotificationLite.complete();
            for (a<T> aVar : N8(complete)) {
                aVar.c(complete, this.f81553g);
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        if (!this.f81552f.compareAndSet(null, t9)) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        Object error = NotificationLite.error(t9);
        for (a<T> aVar : N8(error)) {
            aVar.c(error, this.f81553g);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        if (this.f81552f.get() != null) {
            return;
        }
        Object next = NotificationLite.next(t9);
        L8(next);
        for (a<T> aVar : this.f81548b.get()) {
            aVar.c(next, this.f81553g);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (this.f81552f.get() != null) {
            d4.dispose();
        }
    }
}
