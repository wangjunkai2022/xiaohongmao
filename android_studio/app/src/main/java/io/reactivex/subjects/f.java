package io.reactivex.subjects;

import io.reactivex.g0;
import io.reactivex.h0;
import io.reactivex.internal.util.NotificationLite;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ReplaySubject.java */
/* loaded from: classes4.dex */
public final class f<T> extends i<T> {

    /* renamed from: d  reason: collision with root package name */
    static final c[] f81734d = new c[0];

    /* renamed from: e  reason: collision with root package name */
    static final c[] f81735e = new c[0];

    /* renamed from: f  reason: collision with root package name */
    private static final Object[] f81736f = new Object[0];

    /* renamed from: a  reason: collision with root package name */
    final b<T> f81737a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicReference<c<T>[]> f81738b = new AtomicReference<>(f81734d);

    /* renamed from: c  reason: collision with root package name */
    boolean f81739c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<a<T>> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81740b = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f81741a;

        a(T t9) {
            this.f81741a = t9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    public interface b<T> {
        void a(Object obj);

        void add(T t9);

        void b(c<T> cVar);

        void c();

        boolean compareAndSet(Object obj, Object obj2);

        T[] d(T[] tArr);

        Object get();

        @m7.f
        T getValue();

        int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f81742e = 466549804534799122L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super T> f81743a;

        /* renamed from: b  reason: collision with root package name */
        final f<T> f81744b;

        /* renamed from: c  reason: collision with root package name */
        Object f81745c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f81746d;

        c(g0<? super T> g0Var, f<T> fVar) {
            this.f81743a = g0Var;
            this.f81744b = fVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f81746d) {
                return;
            }
            this.f81746d = true;
            this.f81744b.u(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f81746d;
        }
    }

    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    static final class d<T> extends AtomicReference<Object> implements b<T> {

        /* renamed from: i  reason: collision with root package name */
        private static final long f81747i = -8056260896137901749L;

        /* renamed from: a  reason: collision with root package name */
        final int f81748a;

        /* renamed from: b  reason: collision with root package name */
        final long f81749b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f81750c;

        /* renamed from: d  reason: collision with root package name */
        final h0 f81751d;

        /* renamed from: e  reason: collision with root package name */
        int f81752e;

        /* renamed from: f  reason: collision with root package name */
        volatile C0705f<Object> f81753f;

        /* renamed from: g  reason: collision with root package name */
        C0705f<Object> f81754g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f81755h;

        d(int i4, long j4, TimeUnit timeUnit, h0 h0Var) {
            this.f81748a = io.reactivex.internal.functions.b.h(i4, "maxSize");
            this.f81749b = io.reactivex.internal.functions.b.i(j4, "maxAge");
            this.f81750c = (TimeUnit) io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
            this.f81751d = (h0) io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
            C0705f<Object> c0705f = new C0705f<>(null, 0L);
            this.f81754g = c0705f;
            this.f81753f = c0705f;
        }

        @Override // io.reactivex.subjects.f.b
        public void a(Object obj) {
            C0705f<Object> c0705f = new C0705f<>(obj, Long.MAX_VALUE);
            C0705f<Object> c0705f2 = this.f81754g;
            this.f81754g = c0705f;
            this.f81752e++;
            c0705f2.lazySet(c0705f);
            j();
            this.f81755h = true;
        }

        @Override // io.reactivex.subjects.f.b
        public void add(T t9) {
            C0705f<Object> c0705f = new C0705f<>(t9, this.f81751d.e(this.f81750c));
            C0705f<Object> c0705f2 = this.f81754g;
            this.f81754g = c0705f;
            this.f81752e++;
            c0705f2.set(c0705f);
            i();
        }

        @Override // io.reactivex.subjects.f.b
        public void b(c<T> cVar) {
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            g0<? super T> g0Var = cVar.f81743a;
            C0705f<T> c0705f = (C0705f) cVar.f81745c;
            if (c0705f == null) {
                c0705f = e();
            }
            int i4 = 1;
            while (true) {
                c0705f = c0705f;
                if (cVar.f81746d) {
                    cVar.f81745c = null;
                    return;
                }
                while (!cVar.f81746d) {
                    C0705f<T> c0705f2 = c0705f.get();
                    if (c0705f2 == null) {
                        if (c0705f.get() == null) {
                            cVar.f81745c = c0705f;
                            i4 = cVar.addAndGet(-i4);
                            if (i4 == 0) {
                                return;
                            }
                        }
                    } else {
                        Object obj = (T) c0705f2.f81763a;
                        if (this.f81755h && c0705f2.get() == null) {
                            if (NotificationLite.isComplete(obj)) {
                                g0Var.onComplete();
                            } else {
                                g0Var.onError(NotificationLite.getError(obj));
                            }
                            cVar.f81745c = null;
                            cVar.f81746d = true;
                            return;
                        }
                        g0Var.onNext(obj);
                        c0705f = c0705f2;
                    }
                }
                cVar.f81745c = null;
                return;
            }
        }

        @Override // io.reactivex.subjects.f.b
        public void c() {
            C0705f<Object> c0705f = this.f81753f;
            if (c0705f.f81763a != null) {
                C0705f<Object> c0705f2 = new C0705f<>(null, 0L);
                c0705f2.lazySet(c0705f.get());
                this.f81753f = c0705f2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.subjects.f.b
        public T[] d(T[] tArr) {
            C0705f<T> e4 = e();
            int h4 = h(e4);
            if (h4 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
            } else {
                if (tArr.length < h4) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), h4));
                }
                for (int i4 = 0; i4 != h4; i4++) {
                    e4 = e4.get();
                    tArr[i4] = e4.f81763a;
                }
                if (tArr.length > h4) {
                    tArr[h4] = null;
                }
            }
            return tArr;
        }

        C0705f<Object> e() {
            C0705f<Object> c0705f;
            C0705f<Object> c0705f2 = this.f81753f;
            long e4 = this.f81751d.e(this.f81750c) - this.f81749b;
            C0705f<T> c0705f3 = c0705f2.get();
            while (true) {
                C0705f<T> c0705f4 = c0705f3;
                c0705f = c0705f2;
                c0705f2 = c0705f4;
                if (c0705f2 == null || c0705f2.f81764b > e4) {
                    break;
                }
                c0705f3 = c0705f2.get();
            }
            return c0705f;
        }

        @Override // io.reactivex.subjects.f.b
        @m7.f
        public T getValue() {
            T t9;
            C0705f<Object> c0705f = this.f81753f;
            C0705f<Object> c0705f2 = null;
            while (true) {
                C0705f<T> c0705f3 = c0705f.get();
                if (c0705f3 == null) {
                    break;
                }
                c0705f2 = c0705f;
                c0705f = c0705f3;
            }
            if (c0705f.f81764b >= this.f81751d.e(this.f81750c) - this.f81749b && (t9 = (T) c0705f.f81763a) != null) {
                return (NotificationLite.isComplete(t9) || NotificationLite.isError(t9)) ? (T) c0705f2.f81763a : t9;
            }
            return null;
        }

        int h(C0705f<Object> c0705f) {
            int i4 = 0;
            while (i4 != Integer.MAX_VALUE) {
                C0705f<T> c0705f2 = c0705f.get();
                if (c0705f2 == null) {
                    Object obj = c0705f.f81763a;
                    return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i4 - 1 : i4;
                }
                i4++;
                c0705f = c0705f2;
            }
            return i4;
        }

        void i() {
            int i4 = this.f81752e;
            if (i4 > this.f81748a) {
                this.f81752e = i4 - 1;
                this.f81753f = this.f81753f.get();
            }
            long e4 = this.f81751d.e(this.f81750c) - this.f81749b;
            C0705f<Object> c0705f = this.f81753f;
            while (this.f81752e > 1) {
                C0705f<T> c0705f2 = c0705f.get();
                if (c0705f2 == null) {
                    this.f81753f = c0705f;
                    return;
                } else if (c0705f2.f81764b > e4) {
                    this.f81753f = c0705f;
                    return;
                } else {
                    this.f81752e--;
                    c0705f = c0705f2;
                }
            }
            this.f81753f = c0705f;
        }

        void j() {
            long e4 = this.f81751d.e(this.f81750c) - this.f81749b;
            C0705f<Object> c0705f = this.f81753f;
            while (true) {
                C0705f<T> c0705f2 = c0705f.get();
                if (c0705f2.get() == null) {
                    if (c0705f.f81763a != null) {
                        C0705f<Object> c0705f3 = new C0705f<>(null, 0L);
                        c0705f3.lazySet(c0705f.get());
                        this.f81753f = c0705f3;
                        return;
                    }
                    this.f81753f = c0705f;
                    return;
                } else if (c0705f2.f81764b > e4) {
                    if (c0705f.f81763a != null) {
                        C0705f<Object> c0705f4 = new C0705f<>(null, 0L);
                        c0705f4.lazySet(c0705f.get());
                        this.f81753f = c0705f4;
                        return;
                    }
                    this.f81753f = c0705f;
                    return;
                } else {
                    c0705f = c0705f2;
                }
            }
        }

        @Override // io.reactivex.subjects.f.b
        public int size() {
            return h(e());
        }
    }

    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    static final class e<T> extends AtomicReference<Object> implements b<T> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f81756f = 1107649250281456395L;

        /* renamed from: a  reason: collision with root package name */
        final int f81757a;

        /* renamed from: b  reason: collision with root package name */
        int f81758b;

        /* renamed from: c  reason: collision with root package name */
        volatile a<Object> f81759c;

        /* renamed from: d  reason: collision with root package name */
        a<Object> f81760d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f81761e;

        e(int i4) {
            this.f81757a = io.reactivex.internal.functions.b.h(i4, "maxSize");
            a<Object> aVar = new a<>(null);
            this.f81760d = aVar;
            this.f81759c = aVar;
        }

        @Override // io.reactivex.subjects.f.b
        public void a(Object obj) {
            a<Object> aVar = new a<>(obj);
            a<Object> aVar2 = this.f81760d;
            this.f81760d = aVar;
            this.f81758b++;
            aVar2.lazySet(aVar);
            c();
            this.f81761e = true;
        }

        @Override // io.reactivex.subjects.f.b
        public void add(T t9) {
            a<Object> aVar = new a<>(t9);
            a<Object> aVar2 = this.f81760d;
            this.f81760d = aVar;
            this.f81758b++;
            aVar2.set(aVar);
            e();
        }

        @Override // io.reactivex.subjects.f.b
        public void b(c<T> cVar) {
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            g0<? super T> g0Var = cVar.f81743a;
            a<T> aVar = (a) cVar.f81745c;
            if (aVar == null) {
                aVar = this.f81759c;
            }
            int i4 = 1;
            while (!cVar.f81746d) {
                a<T> aVar2 = aVar.get();
                if (aVar2 == null) {
                    if (aVar.get() != null) {
                        continue;
                    } else {
                        cVar.f81745c = aVar;
                        i4 = cVar.addAndGet(-i4);
                        if (i4 == 0) {
                            return;
                        }
                    }
                } else {
                    Object obj = (T) aVar2.f81741a;
                    if (this.f81761e && aVar2.get() == null) {
                        if (NotificationLite.isComplete(obj)) {
                            g0Var.onComplete();
                        } else {
                            g0Var.onError(NotificationLite.getError(obj));
                        }
                        cVar.f81745c = null;
                        cVar.f81746d = true;
                        return;
                    }
                    g0Var.onNext(obj);
                    aVar = aVar2;
                }
            }
            cVar.f81745c = null;
        }

        @Override // io.reactivex.subjects.f.b
        public void c() {
            a<Object> aVar = this.f81759c;
            if (aVar.f81741a != null) {
                a<Object> aVar2 = new a<>(null);
                aVar2.lazySet(aVar.get());
                this.f81759c = aVar2;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.subjects.f.b
        public T[] d(T[] tArr) {
            a<T> aVar = this.f81759c;
            int size = size();
            if (size == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
            } else {
                if (tArr.length < size) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
                }
                for (int i4 = 0; i4 != size; i4++) {
                    aVar = aVar.get();
                    tArr[i4] = aVar.f81741a;
                }
                if (tArr.length > size) {
                    tArr[size] = null;
                }
            }
            return tArr;
        }

        void e() {
            int i4 = this.f81758b;
            if (i4 > this.f81757a) {
                this.f81758b = i4 - 1;
                this.f81759c = this.f81759c.get();
            }
        }

        @Override // io.reactivex.subjects.f.b
        @m7.f
        public T getValue() {
            a<Object> aVar = this.f81759c;
            a<Object> aVar2 = null;
            while (true) {
                a<T> aVar3 = aVar.get();
                if (aVar3 == null) {
                    break;
                }
                aVar2 = aVar;
                aVar = aVar3;
            }
            T t9 = (T) aVar.f81741a;
            if (t9 == null) {
                return null;
            }
            return (NotificationLite.isComplete(t9) || NotificationLite.isError(t9)) ? (T) aVar2.f81741a : t9;
        }

        @Override // io.reactivex.subjects.f.b
        public int size() {
            a<Object> aVar = this.f81759c;
            int i4 = 0;
            while (i4 != Integer.MAX_VALUE) {
                a<T> aVar2 = aVar.get();
                if (aVar2 == null) {
                    Object obj = aVar.f81741a;
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
    /* renamed from: io.reactivex.subjects.f$f  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0705f<T> extends AtomicReference<C0705f<T>> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81762c = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f81763a;

        /* renamed from: b  reason: collision with root package name */
        final long f81764b;

        C0705f(T t9, long j4) {
            this.f81763a = t9;
            this.f81764b = j4;
        }
    }

    /* compiled from: ReplaySubject.java */
    /* loaded from: classes4.dex */
    static final class g<T> extends AtomicReference<Object> implements b<T> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f81765d = -733876083048047795L;

        /* renamed from: a  reason: collision with root package name */
        final List<Object> f81766a;

        /* renamed from: b  reason: collision with root package name */
        volatile boolean f81767b;

        /* renamed from: c  reason: collision with root package name */
        volatile int f81768c;

        g(int i4) {
            this.f81766a = new ArrayList(io.reactivex.internal.functions.b.h(i4, "capacityHint"));
        }

        @Override // io.reactivex.subjects.f.b
        public void a(Object obj) {
            this.f81766a.add(obj);
            c();
            this.f81768c++;
            this.f81767b = true;
        }

        @Override // io.reactivex.subjects.f.b
        public void add(T t9) {
            this.f81766a.add(t9);
            this.f81768c++;
        }

        @Override // io.reactivex.subjects.f.b
        public void b(c<T> cVar) {
            int i4;
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            List<Object> list = this.f81766a;
            g0<? super T> g0Var = cVar.f81743a;
            Integer num = (Integer) cVar.f81745c;
            int i10 = 0;
            if (num != null) {
                i10 = num.intValue();
            } else {
                cVar.f81745c = 0;
            }
            int i11 = 1;
            while (!cVar.f81746d) {
                int i12 = this.f81768c;
                while (i12 != i10) {
                    if (cVar.f81746d) {
                        cVar.f81745c = null;
                        return;
                    }
                    Object obj = list.get(i10);
                    if (this.f81767b && (i4 = i10 + 1) == i12 && i4 == (i12 = this.f81768c)) {
                        if (NotificationLite.isComplete(obj)) {
                            g0Var.onComplete();
                        } else {
                            g0Var.onError(NotificationLite.getError(obj));
                        }
                        cVar.f81745c = null;
                        cVar.f81746d = true;
                        return;
                    }
                    g0Var.onNext(obj);
                    i10++;
                }
                if (i10 == this.f81768c) {
                    cVar.f81745c = Integer.valueOf(i10);
                    i11 = cVar.addAndGet(-i11);
                    if (i11 == 0) {
                        return;
                    }
                }
            }
            cVar.f81745c = null;
        }

        @Override // io.reactivex.subjects.f.b
        public void c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.subjects.f.b
        public T[] d(T[] tArr) {
            int i4 = this.f81768c;
            if (i4 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<Object> list = this.f81766a;
            Object obj = list.get(i4 - 1);
            if ((NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) && i4 - 1 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            if (tArr.length < i4) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i4));
            }
            for (int i10 = 0; i10 < i4; i10++) {
                tArr[i10] = list.get(i10);
            }
            if (tArr.length > i4) {
                tArr[i4] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.subjects.f.b
        @m7.f
        public T getValue() {
            int i4 = this.f81768c;
            if (i4 != 0) {
                List<Object> list = this.f81766a;
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

        @Override // io.reactivex.subjects.f.b
        public int size() {
            int i4 = this.f81768c;
            if (i4 != 0) {
                int i10 = i4 - 1;
                Object obj = this.f81766a.get(i10);
                return (NotificationLite.isComplete(obj) || NotificationLite.isError(obj)) ? i10 : i4;
            }
            return 0;
        }
    }

    f(b<T> bVar) {
        this.f81737a = bVar;
    }

    @m7.e
    @m7.c
    public static <T> f<T> j() {
        return new f<>(new g(16));
    }

    @m7.e
    @m7.c
    public static <T> f<T> k(int i4) {
        return new f<>(new g(i4));
    }

    static <T> f<T> l() {
        return new f<>(new e(Integer.MAX_VALUE));
    }

    @m7.e
    @m7.c
    public static <T> f<T> m(int i4) {
        return new f<>(new e(i4));
    }

    @m7.e
    @m7.c
    public static <T> f<T> n(long j4, TimeUnit timeUnit, h0 h0Var) {
        return new f<>(new d(Integer.MAX_VALUE, j4, timeUnit, h0Var));
    }

    @m7.e
    @m7.c
    public static <T> f<T> o(long j4, TimeUnit timeUnit, h0 h0Var, int i4) {
        return new f<>(new d(i4, j4, timeUnit, h0Var));
    }

    @Override // io.reactivex.subjects.i
    @m7.f
    public Throwable b() {
        Object obj = this.f81737a.get();
        if (NotificationLite.isError(obj)) {
            return NotificationLite.getError(obj);
        }
        return null;
    }

    @Override // io.reactivex.subjects.i
    public boolean d() {
        return NotificationLite.isComplete(this.f81737a.get());
    }

    @Override // io.reactivex.subjects.i
    public boolean e() {
        return this.f81738b.get().length != 0;
    }

    @Override // io.reactivex.subjects.i
    public boolean f() {
        return NotificationLite.isError(this.f81737a.get());
    }

    boolean h(c<T> cVar) {
        c<T>[] cVarArr;
        c<T>[] cVarArr2;
        do {
            cVarArr = this.f81738b.get();
            if (cVarArr == f81735e) {
                return false;
            }
            int length = cVarArr.length;
            cVarArr2 = new c[length + 1];
            System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
            cVarArr2[length] = cVar;
        } while (!this.f81738b.compareAndSet(cVarArr, cVarArr2));
        return true;
    }

    public void i() {
        this.f81737a.c();
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f81739c) {
            return;
        }
        this.f81739c = true;
        Object complete = NotificationLite.complete();
        b<T> bVar = this.f81737a;
        bVar.a(complete);
        for (c<T> cVar : w(complete)) {
            bVar.b(cVar);
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81739c) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f81739c = true;
        Object error = NotificationLite.error(th);
        b<T> bVar = this.f81737a;
        bVar.a(error);
        for (c<T> cVar : w(error)) {
            bVar.b(cVar);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f81739c) {
            return;
        }
        b<T> bVar = this.f81737a;
        bVar.add(t9);
        for (c<T> cVar : this.f81738b.get()) {
            bVar.b(cVar);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (this.f81739c) {
            cVar.dispose();
        }
    }

    @m7.f
    public T p() {
        return this.f81737a.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] q() {
        Object[] objArr = f81736f;
        Object[] r9 = r(objArr);
        return r9 == objArr ? new Object[0] : r9;
    }

    public T[] r(T[] tArr) {
        return this.f81737a.d(tArr);
    }

    public boolean s() {
        return this.f81737a.size() != 0;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super T> g0Var) {
        c<T> cVar = new c<>(g0Var, this);
        g0Var.onSubscribe(cVar);
        if (cVar.f81746d) {
            return;
        }
        if (h(cVar) && cVar.f81746d) {
            u(cVar);
        } else {
            this.f81737a.b(cVar);
        }
    }

    int t() {
        return this.f81738b.get().length;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void u(c<T> cVar) {
        c<T>[] cVarArr;
        c[] cVarArr2;
        do {
            cVarArr = this.f81738b.get();
            if (cVarArr == f81735e || cVarArr == f81734d) {
                return;
            }
            int length = cVarArr.length;
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (cVarArr[i10] == cVar) {
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
                cVarArr2 = f81734d;
            } else {
                c[] cVarArr3 = new c[length - 1];
                System.arraycopy(cVarArr, 0, cVarArr3, 0, i4);
                System.arraycopy(cVarArr, i4 + 1, cVarArr3, i4, (length - i4) - 1);
                cVarArr2 = cVarArr3;
            }
        } while (!this.f81738b.compareAndSet(cVarArr, cVarArr2));
    }

    int v() {
        return this.f81737a.size();
    }

    c<T>[] w(Object obj) {
        if (this.f81737a.compareAndSet(null, obj)) {
            return this.f81738b.getAndSet(f81735e);
        }
        return f81735e;
    }
}
