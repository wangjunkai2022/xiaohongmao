package io.reactivex.rxjava3.subjects;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ReplaySubject.java */
/* loaded from: classes4.dex */
public final class f<T> extends i<T> {

    /* renamed from: d  reason: collision with root package name */
    static final c[] f81584d = new c[0];

    /* renamed from: e  reason: collision with root package name */
    static final c[] f81585e = new c[0];

    /* renamed from: f  reason: collision with root package name */
    private static final Object[] f81586f = new Object[0];

    /* renamed from: a  reason: collision with root package name */
    final b<T> f81587a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<c<T>[]> f81588b = new AtomicReference<>(f81584d);

    /* renamed from: c  reason: collision with root package name */
    boolean f81589c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<a<T>> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81590b = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f81591a;

        a(T value) {
            this.f81591a = value;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    public interface b<T> {
        void a(Object notificationLite);

        void add(T value);

        void b(c<T> rs);

        void c();

        boolean compareAndSet(Object expected, Object next);

        T[] d(T[] array);

        Object get();

        @p7.f
        T getValue();

        int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f81592e = 466549804534799122L;

        /* renamed from: a  reason: collision with root package name */
        final n0<? super T> f81593a;

        /* renamed from: b  reason: collision with root package name */
        final f<T> f81594b;

        /* renamed from: c  reason: collision with root package name */
        Object f81595c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f81596d;

        c(n0<? super T> actual, f<T> state) {
            this.f81593a = actual;
            this.f81594b = state;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f81596d) {
                return;
            }
            this.f81596d = true;
            this.f81594b.S8(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f81596d;
        }
    }

    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    static final class d<T> extends AtomicReference<Object> implements b<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f81597i = -8056260896137901749L;

        /* renamed from: a  reason: collision with root package name */
        final int f81598a;

        /* renamed from: b  reason: collision with root package name */
        final long f81599b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f81600c;

        /* renamed from: d  reason: collision with root package name */
        final o0 f81601d;

        /* renamed from: e  reason: collision with root package name */
        int f81602e;

        /* renamed from: f  reason: collision with root package name */
        volatile C0701f<Object> f81603f;

        /* renamed from: g  reason: collision with root package name */
        C0701f<Object> f81604g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f81605h;

        d(int maxSize, long maxAge, TimeUnit unit, o0 scheduler) {
            this.f81598a = maxSize;
            this.f81599b = maxAge;
            this.f81600c = unit;
            this.f81601d = scheduler;
            C0701f<Object> c0701f = new C0701f<>(null, 0L);
            this.f81604g = c0701f;
            this.f81603f = c0701f;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void a(Object notificationLite) {
            C0701f<Object> c0701f = new C0701f<>(notificationLite, Long.MAX_VALUE);
            C0701f<Object> c0701f2 = this.f81604g;
            this.f81604g = c0701f;
            this.f81602e++;
            c0701f2.lazySet(c0701f);
            j();
            this.f81605h = true;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void add(T value) {
            C0701f<Object> c0701f = new C0701f<>(value, this.f81601d.e(this.f81600c));
            C0701f<Object> c0701f2 = this.f81604g;
            this.f81604g = c0701f;
            this.f81602e++;
            c0701f2.set(c0701f);
            i();
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void b(c<T> rs) {
            if (rs.getAndIncrement() != 0) {
                return;
            }
            n0<? super T> n0Var = rs.f81593a;
            C0701f<T> c0701f = (C0701f) rs.f81595c;
            if (c0701f == null) {
                c0701f = e();
            }
            int i4 = 1;
            while (!rs.f81596d) {
                C0701f<T> c0701f2 = c0701f.get();
                if (c0701f2 == null) {
                    rs.f81595c = c0701f;
                    i4 = rs.addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    Object obj = (T) c0701f2.f81613a;
                    if (this.f81605h && c0701f2.get() == null) {
                        if (NotificationLite.isComplete(obj)) {
                            n0Var.onComplete();
                        } else {
                            n0Var.onError(NotificationLite.getError(obj));
                        }
                        rs.f81595c = null;
                        rs.f81596d = true;
                        return;
                    }
                    n0Var.onNext(obj);
                    c0701f = c0701f2;
                }
            }
            rs.f81595c = null;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void c() {
            C0701f<Object> c0701f = this.f81603f;
            if (c0701f.f81613a != null) {
                C0701f<Object> c0701f2 = new C0701f<>(null, 0L);
                c0701f2.lazySet(c0701f.get());
                this.f81603f = c0701f2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.subjects.f.b
        public T[] d(T[] array) {
            C0701f<T> e4 = e();
            int h4 = h(e4);
            if (h4 == 0) {
                if (array.length != 0) {
                    array[0] = null;
                }
            } else {
                if (array.length < h4) {
                    array = (T[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), h4));
                }
                for (int i4 = 0; i4 != h4; i4++) {
                    e4 = e4.get();
                    array[i4] = e4.f81613a;
                }
                if (array.length > h4) {
                    array[h4] = null;
                }
            }
            return array;
        }

        C0701f<Object> e() {
            C0701f<Object> c0701f;
            C0701f<Object> c0701f2 = this.f81603f;
            long e4 = this.f81601d.e(this.f81600c) - this.f81599b;
            C0701f<T> c0701f3 = c0701f2.get();
            while (true) {
                C0701f<T> c0701f4 = c0701f3;
                c0701f = c0701f2;
                c0701f2 = c0701f4;
                if (c0701f2 == null || c0701f2.f81614b > e4) {
                    break;
                }
                c0701f3 = c0701f2.get();
            }
            return c0701f;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        @p7.f
        public T getValue() {
            T t9;
            C0701f<Object> c0701f = this.f81603f;
            C0701f<Object> c0701f2 = null;
            while (true) {
                C0701f<T> c0701f3 = c0701f.get();
                if (c0701f3 == null) {
                    break;
                }
                c0701f2 = c0701f;
                c0701f = c0701f3;
            }
            if (c0701f.f81614b >= this.f81601d.e(this.f81600c) - this.f81599b && (t9 = (T) c0701f.f81613a) != null) {
                return (NotificationLite.isComplete(t9) || NotificationLite.isError(t9)) ? (T) c0701f2.f81613a : t9;
            }
            return null;
        }

        int h(C0701f<Object> h4) {
            int i4 = 0;
            while (i4 != Integer.MAX_VALUE) {
                C0701f<T> c0701f = h4.get();
                if (c0701f == null) {
                    Object obj = h4.f81613a;
                    return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i4 - 1 : i4;
                }
                i4++;
                h4 = c0701f;
            }
            return i4;
        }

        void i() {
            int i4 = this.f81602e;
            if (i4 > this.f81598a) {
                this.f81602e = i4 - 1;
                this.f81603f = this.f81603f.get();
            }
            long e4 = this.f81601d.e(this.f81600c) - this.f81599b;
            C0701f<Object> c0701f = this.f81603f;
            while (this.f81602e > 1) {
                C0701f<T> c0701f2 = c0701f.get();
                if (c0701f2.f81614b > e4) {
                    this.f81603f = c0701f;
                    return;
                } else {
                    this.f81602e--;
                    c0701f = c0701f2;
                }
            }
            this.f81603f = c0701f;
        }

        void j() {
            long e4 = this.f81601d.e(this.f81600c) - this.f81599b;
            C0701f<Object> c0701f = this.f81603f;
            while (true) {
                C0701f<T> c0701f2 = c0701f.get();
                if (c0701f2.get() == null) {
                    if (c0701f.f81613a != null) {
                        C0701f<Object> c0701f3 = new C0701f<>(null, 0L);
                        c0701f3.lazySet(c0701f.get());
                        this.f81603f = c0701f3;
                        return;
                    }
                    this.f81603f = c0701f;
                    return;
                } else if (c0701f2.f81614b > e4) {
                    if (c0701f.f81613a != null) {
                        C0701f<Object> c0701f4 = new C0701f<>(null, 0L);
                        c0701f4.lazySet(c0701f.get());
                        this.f81603f = c0701f4;
                        return;
                    }
                    this.f81603f = c0701f;
                    return;
                } else {
                    c0701f = c0701f2;
                }
            }
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public int size() {
            return h(e());
        }
    }

    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    static final class e<T> extends AtomicReference<Object> implements b<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f81606f = 1107649250281456395L;

        /* renamed from: a  reason: collision with root package name */
        final int f81607a;

        /* renamed from: b  reason: collision with root package name */
        int f81608b;

        /* renamed from: c  reason: collision with root package name */
        volatile a<Object> f81609c;

        /* renamed from: d  reason: collision with root package name */
        a<Object> f81610d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f81611e;

        e(int maxSize) {
            this.f81607a = maxSize;
            a<Object> aVar = new a<>(null);
            this.f81610d = aVar;
            this.f81609c = aVar;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void a(Object notificationLite) {
            a<Object> aVar = new a<>(notificationLite);
            a<Object> aVar2 = this.f81610d;
            this.f81610d = aVar;
            this.f81608b++;
            aVar2.lazySet(aVar);
            c();
            this.f81611e = true;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void add(T value) {
            a<Object> aVar = new a<>(value);
            a<Object> aVar2 = this.f81610d;
            this.f81610d = aVar;
            this.f81608b++;
            aVar2.set(aVar);
            e();
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void b(c<T> rs) {
            if (rs.getAndIncrement() != 0) {
                return;
            }
            n0<? super T> n0Var = rs.f81593a;
            a<T> aVar = (a) rs.f81595c;
            if (aVar == null) {
                aVar = this.f81609c;
            }
            int i4 = 1;
            while (!rs.f81596d) {
                a<T> aVar2 = aVar.get();
                if (aVar2 == null) {
                    if (aVar.get() != null) {
                        continue;
                    } else {
                        rs.f81595c = aVar;
                        i4 = rs.addAndGet(-i4);
                        if (i4 == 0) {
                            return;
                        }
                    }
                } else {
                    Object obj = (T) aVar2.f81591a;
                    if (this.f81611e && aVar2.get() == null) {
                        if (NotificationLite.isComplete(obj)) {
                            n0Var.onComplete();
                        } else {
                            n0Var.onError(NotificationLite.getError(obj));
                        }
                        rs.f81595c = null;
                        rs.f81596d = true;
                        return;
                    }
                    n0Var.onNext(obj);
                    aVar = aVar2;
                }
            }
            rs.f81595c = null;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void c() {
            a<Object> aVar = this.f81609c;
            if (aVar.f81591a != null) {
                a<Object> aVar2 = new a<>(null);
                aVar2.lazySet(aVar.get());
                this.f81609c = aVar2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.subjects.f.b
        public T[] d(T[] array) {
            a<T> aVar = this.f81609c;
            int size = size();
            if (size == 0) {
                if (array.length != 0) {
                    array[0] = null;
                }
            } else {
                if (array.length < size) {
                    array = (T[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), size));
                }
                for (int i4 = 0; i4 != size; i4++) {
                    aVar = aVar.get();
                    array[i4] = aVar.f81591a;
                }
                if (array.length > size) {
                    array[size] = null;
                }
            }
            return array;
        }

        void e() {
            int i4 = this.f81608b;
            if (i4 > this.f81607a) {
                this.f81608b = i4 - 1;
                this.f81609c = this.f81609c.get();
            }
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        @p7.f
        public T getValue() {
            a<Object> aVar = this.f81609c;
            a<Object> aVar2 = null;
            while (true) {
                a<T> aVar3 = aVar.get();
                if (aVar3 == null) {
                    break;
                }
                aVar2 = aVar;
                aVar = aVar3;
            }
            T t9 = (T) aVar.f81591a;
            if (t9 == null) {
                return null;
            }
            return (NotificationLite.isComplete(t9) || NotificationLite.isError(t9)) ? (T) aVar2.f81591a : t9;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public int size() {
            a<Object> aVar = this.f81609c;
            int i4 = 0;
            while (i4 != Integer.MAX_VALUE) {
                a<T> aVar2 = aVar.get();
                if (aVar2 == null) {
                    Object obj = aVar.f81591a;
                    return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i4 - 1 : i4;
                }
                i4++;
                aVar = aVar2;
            }
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplaySubject.java */
    /* renamed from: io.reactivex.rxjava3.subjects.f$f  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0701f<T> extends AtomicReference<C0701f<T>> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81612c = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f81613a;

        /* renamed from: b  reason: collision with root package name */
        final long f81614b;

        C0701f(T value, long time) {
            this.f81613a = value;
            this.f81614b = time;
        }
    }

    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    static final class g<T> extends AtomicReference<Object> implements b<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f81615d = -733876083048047795L;

        /* renamed from: a  reason: collision with root package name */
        final List<Object> f81616a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f81617b;

        /* renamed from: c  reason: collision with root package name */
        volatile int f81618c;

        g(int capacityHint) {
            this.f81616a = new ArrayList(capacityHint);
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void a(Object notificationLite) {
            this.f81616a.add(notificationLite);
            c();
            this.f81618c++;
            this.f81617b = true;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void add(T value) {
            this.f81616a.add(value);
            this.f81618c++;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void b(c<T> rs) {
            int i4;
            if (rs.getAndIncrement() != 0) {
                return;
            }
            List<Object> list = this.f81616a;
            n0<? super T> n0Var = rs.f81593a;
            Integer num = (Integer) rs.f81595c;
            int i10 = 0;
            if (num != null) {
                i10 = num.intValue();
            } else {
                rs.f81595c = 0;
            }
            int i11 = 1;
            while (!rs.f81596d) {
                int i12 = this.f81618c;
                while (i12 != i10) {
                    if (rs.f81596d) {
                        rs.f81595c = null;
                        return;
                    }
                    Object obj = list.get(i10);
                    if (this.f81617b && (i4 = i10 + 1) == i12 && i4 == (i12 = this.f81618c)) {
                        if (NotificationLite.isComplete(obj)) {
                            n0Var.onComplete();
                        } else {
                            n0Var.onError(NotificationLite.getError(obj));
                        }
                        rs.f81595c = null;
                        rs.f81596d = true;
                        return;
                    }
                    n0Var.onNext(obj);
                    i10++;
                }
                if (i10 == this.f81618c) {
                    rs.f81595c = Integer.valueOf(i10);
                    i11 = rs.addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                }
            }
            rs.f81595c = null;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public void c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.subjects.f.b
        public T[] d(T[] array) {
            int i4 = this.f81618c;
            if (i4 == 0) {
                if (array.length != 0) {
                    array[0] = null;
                }
                return array;
            }
            List<Object> list = this.f81616a;
            Object obj = list.get(i4 - 1);
            if ((NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) && i4 - 1 == 0) {
                if (array.length != 0) {
                    array[0] = null;
                }
                return array;
            }
            if (array.length < i4) {
                array = (T[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), i4));
            }
            for (int i10 = 0; i10 < i4; i10++) {
                array[i10] = list.get(i10);
            }
            if (array.length > i4) {
                array[i4] = null;
            }
            return array;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        @p7.f
        public T getValue() {
            int i4 = this.f81618c;
            if (i4 != 0) {
                List<Object> list = this.f81616a;
                T t9 = (T) list.get(i4 - 1);
                if (NotificationLite.isComplete(t9) || NotificationLite.isError(t9)) {
                    if (i4 == 1) {
                        return null;
                    }
                    return (T) list.get(i4 - 2);
                }
                return t9;
            }
            return null;
        }

        @Override // io.reactivex.rxjava3.subjects.f.b
        public int size() {
            int i4 = this.f81618c;
            if (i4 != 0) {
                int i10 = i4 - 1;
                Object obj = this.f81616a.get(i10);
                return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i10 : i4;
            }
            return 0;
        }
    }

    f(b<T> buffer) {
        this.f81587a = buffer;
    }

    @p7.c
    @p7.e
    public static <T> f<T> H8() {
        return new f<>(new g(16));
    }

    @p7.c
    @p7.e
    public static <T> f<T> I8(int capacityHint) {
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return new f<>(new g(capacityHint));
    }

    static <T> f<T> J8() {
        return new f<>(new e(Integer.MAX_VALUE));
    }

    @p7.c
    @p7.e
    public static <T> f<T> K8(int maxSize) {
        io.reactivex.rxjava3.internal.functions.b.b(maxSize, "maxSize");
        return new f<>(new e(maxSize));
    }

    @p7.c
    @p7.e
    public static <T> f<T> L8(long maxAge, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        io.reactivex.rxjava3.internal.functions.b.c(maxAge, "maxAge");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new f<>(new d(Integer.MAX_VALUE, maxAge, unit, scheduler));
    }

    @p7.c
    @p7.e
    public static <T> f<T> M8(long maxAge, @p7.e TimeUnit unit, @p7.e o0 scheduler, int maxSize) {
        io.reactivex.rxjava3.internal.functions.b.b(maxSize, "maxSize");
        io.reactivex.rxjava3.internal.functions.b.c(maxAge, "maxAge");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new f<>(new d(maxSize, maxAge, unit, scheduler));
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    @p7.f
    public Throwable A8() {
        Object obj = this.f81587a.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean B8() {
        return NotificationLite.isComplete(this.f81587a.get());
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean C8() {
        return this.f81588b.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.subjects.i
    @p7.c
    public boolean D8() {
        return NotificationLite.isError(this.f81587a.get());
    }

    boolean F8(c<T> rs) {
        c<T>[] cVarArr;
        c<T>[] cVarArr2;
        do {
            cVarArr = this.f81588b.get();
            if (cVarArr == f81585e) {
                return false;
            }
            int length = cVarArr.length;
            cVarArr2 = new c[length + 1];
            System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
            cVarArr2[length] = rs;
        } while (!this.f81588b.compareAndSet(cVarArr, cVarArr2));
        return true;
    }

    public void G8() {
        this.f81587a.c();
    }

    @p7.c
    @p7.f
    public T N8() {
        return this.f81587a.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    public Object[] O8() {
        Object[] objArr = f81586f;
        Object[] P8 = P8(objArr);
        return P8 == objArr ? new Object[0] : P8;
    }

    @p7.c
    public T[] P8(T[] array) {
        return this.f81587a.d(array);
    }

    @p7.c
    public boolean Q8() {
        return this.f81587a.size() != 0;
    }

    @p7.c
    int R8() {
        return this.f81588b.get().length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void S8(c<T> rs) {
        c<T>[] cVarArr;
        c[] cVarArr2;
        do {
            cVarArr = this.f81588b.get();
            if (cVarArr == f81585e || cVarArr == f81584d) {
                return;
            }
            int length = cVarArr.length;
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (cVarArr[i10] == rs) {
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
                cVarArr2 = f81584d;
            } else {
                c[] cVarArr3 = new c[length - 1];
                System.arraycopy(cVarArr, 0, cVarArr3, 0, i4);
                System.arraycopy(cVarArr, i4 + 1, cVarArr3, i4, (length - i4) - 1);
                cVarArr2 = cVarArr3;
            }
        } while (!this.f81588b.compareAndSet(cVarArr, cVarArr2));
    }

    @p7.c
    int T8() {
        return this.f81587a.size();
    }

    c<T>[] U8(Object terminalValue) {
        this.f81587a.compareAndSet(null, terminalValue);
        return this.f81588b.getAndSet(f81585e);
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super T> observer) {
        c<T> cVar = new c<>(observer, this);
        observer.onSubscribe(cVar);
        if (F8(cVar) && cVar.f81596d) {
            S8(cVar);
        } else {
            this.f81587a.b(cVar);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (this.f81589c) {
            return;
        }
        this.f81589c = true;
        Object complete = NotificationLite.complete();
        b<T> bVar = this.f81587a;
        bVar.a(complete);
        for (c<T> cVar : U8(complete)) {
            bVar.b(cVar);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        if (this.f81589c) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81589c = true;
        Object error = NotificationLite.error(t9);
        b<T> bVar = this.f81587a;
        bVar.a(error);
        for (c<T> cVar : U8(error)) {
            bVar.b(cVar);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onNext(T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        if (this.f81589c) {
            return;
        }
        b<T> bVar = this.f81587a;
        bVar.add(t9);
        for (c<T> cVar : this.f81588b.get()) {
            bVar.b(cVar);
        }
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (this.f81589c) {
            d4.dispose();
        }
    }
}
