package io.reactivex.subjects;

import io.reactivex.g0;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.internal.util.a;
import java.lang.reflect.Array;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: BehaviorSubject.java */
/* loaded from: classes4.dex */
public final class b<T> extends i<T> {

    /* renamed from: h  reason: collision with root package name */
    private static final Object[] f81694h = new Object[0];

    /* renamed from: i  reason: collision with root package name */
    static final a[] f81695i = new a[0];

    /* renamed from: j  reason: collision with root package name */
    static final a[] f81696j = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<Object> f81697a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81698b;

    /* renamed from: c  reason: collision with root package name */
    final ReadWriteLock f81699c;

    /* renamed from: d  reason: collision with root package name */
    final Lock f81700d;

    /* renamed from: e  reason: collision with root package name */
    final Lock f81701e;

    /* renamed from: f  reason: collision with root package name */
    final AtomicReference<Throwable> f81702f;

    /* renamed from: g  reason: collision with root package name */
    long f81703g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BehaviorSubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> implements io.reactivex.disposables.c, a.InterfaceC0614a<Object> {

        /* renamed from: a  reason: collision with root package name */
        final g0<? super T> f81704a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f81705b;

        /* renamed from: c  reason: collision with root package name */
        boolean f81706c;

        /* renamed from: d  reason: collision with root package name */
        boolean f81707d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.internal.util.a<Object> f81708e;

        /* renamed from: f  reason: collision with root package name */
        boolean f81709f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f81710g;

        /* renamed from: h  reason: collision with root package name */
        long f81711h;

        a(g0<? super T> g0Var, b<T> bVar) {
            this.f81704a = g0Var;
            this.f81705b = bVar;
        }

        void a() {
            if (this.f81710g) {
                return;
            }
            synchronized (this) {
                if (this.f81710g) {
                    return;
                }
                if (this.f81706c) {
                    return;
                }
                b<T> bVar = this.f81705b;
                Lock lock = bVar.f81700d;
                lock.lock();
                this.f81711h = bVar.f81703g;
                Object obj = bVar.f81697a.get();
                lock.unlock();
                this.f81707d = obj != null;
                this.f81706c = true;
                if (obj == null || test(obj)) {
                    return;
                }
                b();
            }
        }

        void b() {
            io.reactivex.internal.util.a<Object> aVar;
            while (!this.f81710g) {
                synchronized (this) {
                    aVar = this.f81708e;
                    if (aVar == null) {
                        this.f81707d = false;
                        return;
                    }
                    this.f81708e = null;
                }
                aVar.d(this);
            }
        }

        void c(Object obj, long j4) {
            if (this.f81710g) {
                return;
            }
            if (!this.f81709f) {
                synchronized (this) {
                    if (this.f81710g) {
                        return;
                    }
                    if (this.f81711h == j4) {
                        return;
                    }
                    if (this.f81707d) {
                        io.reactivex.internal.util.a<Object> aVar = this.f81708e;
                        if (aVar == null) {
                            aVar = new io.reactivex.internal.util.a<>(4);
                            this.f81708e = aVar;
                        }
                        aVar.c(obj);
                        return;
                    }
                    this.f81706c = true;
                    this.f81709f = true;
                }
            }
            test(obj);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f81710g) {
                return;
            }
            this.f81710g = true;
            this.f81705b.o(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f81710g;
        }

        @Override // io.reactivex.internal.util.a.InterfaceC0614a, n7.r
        public boolean test(Object obj) {
            return this.f81710g || NotificationLite.accept(obj, this.f81704a);
        }
    }

    b() {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f81699c = reentrantReadWriteLock;
        this.f81700d = reentrantReadWriteLock.readLock();
        this.f81701e = reentrantReadWriteLock.writeLock();
        this.f81698b = new AtomicReference<>(f81695i);
        this.f81697a = new AtomicReference<>();
        this.f81702f = new AtomicReference<>();
    }

    @m7.e
    @m7.c
    public static <T> b<T> i() {
        return new b<>();
    }

    @m7.e
    @m7.c
    public static <T> b<T> j(T t9) {
        return new b<>(t9);
    }

    @Override // io.reactivex.subjects.i
    @m7.f
    public Throwable b() {
        Object obj = this.f81697a.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.subjects.i
    public boolean d() {
        return NotificationLite.isComplete(this.f81697a.get());
    }

    @Override // io.reactivex.subjects.i
    public boolean e() {
        return this.f81698b.get().length != 0;
    }

    @Override // io.reactivex.subjects.i
    public boolean f() {
        return NotificationLite.isError(this.f81697a.get());
    }

    boolean h(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81698b.get();
            if (aVarArr == f81696j) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f81698b.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    @m7.f
    public T k() {
        Object obj = this.f81697a.get();
        if (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) {
            return null;
        }
        return (T) NotificationLite.getValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public Object[] l() {
        Object[] objArr = f81694h;
        Object[] m9 = m(objArr);
        return m9 == objArr ? new Object[0] : m9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public T[] m(T[] tArr) {
        Object obj = this.f81697a.get();
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

    public boolean n() {
        Object obj = this.f81697a.get();
        return (obj == null || NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void o(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81698b.get();
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
                aVarArr2 = f81695i;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81698b.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f81702f.compareAndSet(null, io.reactivex.internal.util.g.f75916a)) {
            Object complete = NotificationLite.complete();
            for (a<T> aVar : r(complete)) {
                aVar.c(complete, this.f81703g);
            }
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (!this.f81702f.compareAndSet(null, th)) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        Object error = NotificationLite.error(th);
        for (a<T> aVar : r(error)) {
            aVar.c(error, this.f81703g);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81702f.get() != null) {
            return;
        }
        Object next = NotificationLite.next(t9);
        p(next);
        for (a<T> aVar : this.f81698b.get()) {
            aVar.c(next, this.f81703g);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (this.f81702f.get() != null) {
            cVar.dispose();
        }
    }

    void p(Object obj) {
        this.f81701e.lock();
        this.f81703g++;
        this.f81697a.lazySet(obj);
        this.f81701e.unlock();
    }

    int q() {
        return this.f81698b.get().length;
    }

    a<T>[] r(Object obj) {
        AtomicReference<a<T>[]> atomicReference = this.f81698b;
        a<T>[] aVarArr = f81696j;
        a<T>[] andSet = atomicReference.getAndSet(aVarArr);
        if (andSet != aVarArr) {
            p(obj);
        }
        return andSet;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super T> g0Var) {
        a<T> aVar = new a<>(g0Var, this);
        g0Var.onSubscribe(aVar);
        if (h(aVar)) {
            if (aVar.f81710g) {
                o(aVar);
                return;
            } else {
                aVar.a();
                return;
            }
        }
        Throwable th = this.f81702f.get();
        if (th == io.reactivex.internal.util.g.f75916a) {
            g0Var.onComplete();
        } else {
            g0Var.onError(th);
        }
    }

    b(T t9) {
        this();
        this.f81697a.lazySet(io.reactivex.internal.functions.b.g(t9, "defaultValue is null"));
    }
}
