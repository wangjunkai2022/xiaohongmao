package io.reactivex.rxjava3.processors;

import io.reactivex.rxjava3.core.o0;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ReplayProcessor.java */
/* loaded from: classes4.dex */
public final class f<T> extends io.reactivex.rxjava3.processors.c<T> {

    /* renamed from: e  reason: collision with root package name */
    private static final Object[] f81461e = new Object[0];

    /* renamed from: f  reason: collision with root package name */
    static final c[] f81462f = new c[0];

    /* renamed from: g  reason: collision with root package name */
    static final c[] f81463g = new c[0];

    /* renamed from: b  reason: collision with root package name */
    final b<T> f81464b;

    /* renamed from: c  reason: collision with root package name */
    boolean f81465c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<c<T>[]> f81466d = new AtomicReference<>(f81462f);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<a<T>> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f81467b = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f81468a;

        a(T value) {
            this.f81468a = value;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    public interface b<T> {
        void a(Throwable ex);

        void b(T value);

        void c();

        void complete();

        T[] d(T[] array);

        Throwable e();

        void f(c<T> rs);

        @p7.f
        T getValue();

        boolean isDone();

        int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f81469g = 466549804534799122L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f81470a;

        /* renamed from: b  reason: collision with root package name */
        final f<T> f81471b;

        /* renamed from: c  reason: collision with root package name */
        Object f81472c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f81473d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f81474e;

        /* renamed from: f  reason: collision with root package name */
        long f81475f;

        c(org.reactivestreams.d<? super T> actual, f<T> state) {
            this.f81470a = actual;
            this.f81471b = state;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f81474e) {
                return;
            }
            this.f81474e = true;
            this.f81471b.x9(this);
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f81473d, n9);
                this.f81471b.f81464b.f(this);
            }
        }
    }

    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    static final class d<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f81476a;

        /* renamed from: b  reason: collision with root package name */
        final long f81477b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f81478c;

        /* renamed from: d  reason: collision with root package name */
        final o0 f81479d;

        /* renamed from: e  reason: collision with root package name */
        int f81480e;

        /* renamed from: f  reason: collision with root package name */
        volatile C0697f<T> f81481f;

        /* renamed from: g  reason: collision with root package name */
        C0697f<T> f81482g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f81483h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f81484i;

        d(int maxSize, long maxAge, TimeUnit unit, o0 scheduler) {
            this.f81476a = maxSize;
            this.f81477b = maxAge;
            this.f81478c = unit;
            this.f81479d = scheduler;
            C0697f<T> c0697f = new C0697f<>(null, 0L);
            this.f81482g = c0697f;
            this.f81481f = c0697f;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void a(Throwable ex) {
            j();
            this.f81483h = ex;
            this.f81484i = true;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void b(T value) {
            C0697f<T> c0697f = new C0697f<>(value, this.f81479d.e(this.f81478c));
            C0697f<T> c0697f2 = this.f81482g;
            this.f81482g = c0697f;
            this.f81480e++;
            c0697f2.set(c0697f);
            i();
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void c() {
            if (this.f81481f.f81492a != null) {
                C0697f<T> c0697f = new C0697f<>(null, 0L);
                c0697f.lazySet(this.f81481f.get());
                this.f81481f = c0697f;
            }
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void complete() {
            j();
            this.f81484i = true;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public T[] d(T[] array) {
            C0697f<T> g4 = g();
            int h4 = h(g4);
            if (h4 == 0) {
                if (array.length != 0) {
                    array[0] = null;
                }
            } else {
                if (array.length < h4) {
                    array = (T[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), h4));
                }
                for (int i4 = 0; i4 != h4; i4++) {
                    g4 = g4.get();
                    array[i4] = g4.f81492a;
                }
                if (array.length > h4) {
                    array[h4] = null;
                }
            }
            return array;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public Throwable e() {
            return this.f81483h;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void f(c<T> rs) {
            int i4;
            if (rs.getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = rs.f81470a;
            C0697f<T> c0697f = (C0697f) rs.f81472c;
            if (c0697f == null) {
                c0697f = g();
            }
            long j4 = rs.f81475f;
            int i10 = 1;
            do {
                long j10 = rs.f81473d.get();
                while (true) {
                    i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (rs.f81474e) {
                        rs.f81472c = null;
                        return;
                    } else {
                        boolean z9 = this.f81484i;
                        C0697f<T> c0697f2 = c0697f.get();
                        boolean z10 = c0697f2 == null;
                        if (z9 && z10) {
                            rs.f81472c = null;
                            rs.f81474e = true;
                            Throwable th = this.f81483h;
                            if (th == null) {
                                dVar.onComplete();
                                return;
                            } else {
                                dVar.onError(th);
                                return;
                            }
                        } else if (z10) {
                            break;
                        } else {
                            dVar.onNext((T) c0697f2.f81492a);
                            j4++;
                            c0697f = c0697f2;
                        }
                    }
                }
                if (i4 == 0) {
                    if (rs.f81474e) {
                        rs.f81472c = null;
                        return;
                    } else if (this.f81484i && c0697f.get() == null) {
                        rs.f81472c = null;
                        rs.f81474e = true;
                        Throwable th2 = this.f81483h;
                        if (th2 == null) {
                            dVar.onComplete();
                            return;
                        } else {
                            dVar.onError(th2);
                            return;
                        }
                    }
                }
                rs.f81472c = c0697f;
                rs.f81475f = j4;
                i10 = rs.addAndGet(-i10);
            } while (i10 != 0);
        }

        C0697f<T> g() {
            C0697f<T> c0697f;
            C0697f<T> c0697f2 = this.f81481f;
            long e4 = this.f81479d.e(this.f81478c) - this.f81477b;
            C0697f<T> c0697f3 = c0697f2.get();
            while (true) {
                C0697f<T> c0697f4 = c0697f3;
                c0697f = c0697f2;
                c0697f2 = c0697f4;
                if (c0697f2 == null || c0697f2.f81493b > e4) {
                    break;
                }
                c0697f3 = c0697f2.get();
            }
            return c0697f;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        @p7.f
        public T getValue() {
            C0697f<T> c0697f = this.f81481f;
            while (true) {
                C0697f<T> c0697f2 = c0697f.get();
                if (c0697f2 == null) {
                    break;
                }
                c0697f = c0697f2;
            }
            if (c0697f.f81493b < this.f81479d.e(this.f81478c) - this.f81477b) {
                return null;
            }
            return c0697f.f81492a;
        }

        int h(C0697f<T> h4) {
            int i4 = 0;
            while (i4 != Integer.MAX_VALUE && (h4 = h4.get()) != null) {
                i4++;
            }
            return i4;
        }

        void i() {
            int i4 = this.f81480e;
            if (i4 > this.f81476a) {
                this.f81480e = i4 - 1;
                this.f81481f = this.f81481f.get();
            }
            long e4 = this.f81479d.e(this.f81478c) - this.f81477b;
            C0697f<T> c0697f = this.f81481f;
            while (this.f81480e > 1) {
                C0697f<T> c0697f2 = c0697f.get();
                if (c0697f2.f81493b > e4) {
                    this.f81481f = c0697f;
                    return;
                } else {
                    this.f81480e--;
                    c0697f = c0697f2;
                }
            }
            this.f81481f = c0697f;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public boolean isDone() {
            return this.f81484i;
        }

        void j() {
            long e4 = this.f81479d.e(this.f81478c) - this.f81477b;
            C0697f<T> c0697f = this.f81481f;
            while (true) {
                C0697f<T> c0697f2 = c0697f.get();
                if (c0697f2 == null) {
                    if (c0697f.f81492a != null) {
                        this.f81481f = new C0697f<>(null, 0L);
                        return;
                    } else {
                        this.f81481f = c0697f;
                        return;
                    }
                } else if (c0697f2.f81493b > e4) {
                    if (c0697f.f81492a != null) {
                        C0697f<T> c0697f3 = new C0697f<>(null, 0L);
                        c0697f3.lazySet(c0697f.get());
                        this.f81481f = c0697f3;
                        return;
                    }
                    this.f81481f = c0697f;
                    return;
                } else {
                    c0697f = c0697f2;
                }
            }
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public int size() {
            return h(g());
        }
    }

    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    static final class e<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f81485a;

        /* renamed from: b  reason: collision with root package name */
        int f81486b;

        /* renamed from: c  reason: collision with root package name */
        volatile a<T> f81487c;

        /* renamed from: d  reason: collision with root package name */
        a<T> f81488d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f81489e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f81490f;

        e(int maxSize) {
            this.f81485a = maxSize;
            a<T> aVar = new a<>(null);
            this.f81488d = aVar;
            this.f81487c = aVar;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void a(Throwable ex) {
            this.f81489e = ex;
            c();
            this.f81490f = true;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void b(T value) {
            a<T> aVar = new a<>(value);
            a<T> aVar2 = this.f81488d;
            this.f81488d = aVar;
            this.f81486b++;
            aVar2.set(aVar);
            g();
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void c() {
            if (this.f81487c.f81468a != null) {
                a<T> aVar = new a<>(null);
                aVar.lazySet(this.f81487c.get());
                this.f81487c = aVar;
            }
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void complete() {
            c();
            this.f81490f = true;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public T[] d(T[] array) {
            a<T> aVar = this.f81487c;
            a<T> aVar2 = aVar;
            int i4 = 0;
            while (true) {
                aVar2 = aVar2.get();
                if (aVar2 == null) {
                    break;
                }
                i4++;
            }
            if (array.length < i4) {
                array = (T[]) ((Object[]) Array.newInstance(array.getClass().getComponentType(), i4));
            }
            for (int i10 = 0; i10 < i4; i10++) {
                aVar = aVar.get();
                array[i10] = aVar.f81468a;
            }
            if (array.length > i4) {
                array[i4] = null;
            }
            return array;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public Throwable e() {
            return this.f81489e;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void f(c<T> rs) {
            int i4;
            if (rs.getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = rs.f81470a;
            a<T> aVar = (a) rs.f81472c;
            if (aVar == null) {
                aVar = this.f81487c;
            }
            long j4 = rs.f81475f;
            int i10 = 1;
            do {
                long j10 = rs.f81473d.get();
                while (true) {
                    i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (rs.f81474e) {
                        rs.f81472c = null;
                        return;
                    } else {
                        boolean z9 = this.f81490f;
                        a<T> aVar2 = aVar.get();
                        boolean z10 = aVar2 == null;
                        if (z9 && z10) {
                            rs.f81472c = null;
                            rs.f81474e = true;
                            Throwable th = this.f81489e;
                            if (th == null) {
                                dVar.onComplete();
                                return;
                            } else {
                                dVar.onError(th);
                                return;
                            }
                        } else if (z10) {
                            break;
                        } else {
                            dVar.onNext((T) aVar2.f81468a);
                            j4++;
                            aVar = aVar2;
                        }
                    }
                }
                if (i4 == 0) {
                    if (rs.f81474e) {
                        rs.f81472c = null;
                        return;
                    } else if (this.f81490f && aVar.get() == null) {
                        rs.f81472c = null;
                        rs.f81474e = true;
                        Throwable th2 = this.f81489e;
                        if (th2 == null) {
                            dVar.onComplete();
                            return;
                        } else {
                            dVar.onError(th2);
                            return;
                        }
                    }
                }
                rs.f81472c = aVar;
                rs.f81475f = j4;
                i10 = rs.addAndGet(-i10);
            } while (i10 != 0);
        }

        void g() {
            int i4 = this.f81486b;
            if (i4 > this.f81485a) {
                this.f81486b = i4 - 1;
                this.f81487c = this.f81487c.get();
            }
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public T getValue() {
            a<T> aVar = this.f81487c;
            while (true) {
                a<T> aVar2 = aVar.get();
                if (aVar2 == null) {
                    return aVar.f81468a;
                }
                aVar = aVar2;
            }
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public boolean isDone() {
            return this.f81490f;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public int size() {
            a<T> aVar = this.f81487c;
            int i4 = 0;
            while (i4 != Integer.MAX_VALUE && (aVar = aVar.get()) != null) {
                i4++;
            }
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplayProcessor.java */
    /* renamed from: io.reactivex.rxjava3.processors.f$f  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0697f<T> extends AtomicReference<C0697f<T>> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81491c = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f81492a;

        /* renamed from: b  reason: collision with root package name */
        final long f81493b;

        C0697f(T value, long time) {
            this.f81492a = value;
            this.f81493b = time;
        }
    }

    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    static final class g<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        final List<T> f81494a;

        /* renamed from: b  reason: collision with root package name */
        Throwable f81495b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f81496c;

        /* renamed from: d  reason: collision with root package name */
        volatile int f81497d;

        g(int capacityHint) {
            this.f81494a = new ArrayList(capacityHint);
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void a(Throwable ex) {
            this.f81495b = ex;
            this.f81496c = true;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void b(T value) {
            this.f81494a.add(value);
            this.f81497d++;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void c() {
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public void complete() {
            this.f81496c = true;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public T[] d(T[] array) {
            int i4 = this.f81497d;
            if (i4 == 0) {
                if (array.length != 0) {
                    array[0] = null;
                }
                return array;
            }
            List<T> list = this.f81494a;
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

        @Override // io.reactivex.rxjava3.processors.f.b
        public Throwable e() {
            return this.f81495b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x005b, code lost:
            if (r10 != 0) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x005f, code lost:
            if (r14.f81474e == false) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0061, code lost:
            r14.f81472c = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0063, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
            r7 = r13.f81496c;
            r8 = r13.f81497d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0068, code lost:
            if (r7 == false) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x006a, code lost:
            if (r3 != r8) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x006c, code lost:
            r14.f81472c = null;
            r14.f81474e = true;
            r14 = r13.f81495b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x0072, code lost:
            if (r14 != null) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0074, code lost:
            r1.onComplete();
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0078, code lost:
            r1.onError(r14);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x007b, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x007c, code lost:
            r14.f81472c = java.lang.Integer.valueOf(r3);
            r14.f81475f = r4;
            r6 = r14.addAndGet(-r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
            return;
         */
        @Override // io.reactivex.rxjava3.processors.f.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void f(io.reactivex.rxjava3.processors.f.c<T> r14) {
            /*
                r13 = this;
                int r0 = r14.getAndIncrement()
                if (r0 == 0) goto L7
                return
            L7:
                java.util.List<T> r0 = r13.f81494a
                org.reactivestreams.d<? super T> r1 = r14.f81470a
                java.lang.Object r2 = r14.f81472c
                java.lang.Integer r2 = (java.lang.Integer) r2
                r3 = 0
                if (r2 == 0) goto L17
                int r3 = r2.intValue()
                goto L1d
            L17:
                java.lang.Integer r2 = java.lang.Integer.valueOf(r3)
                r14.f81472c = r2
            L1d:
                long r4 = r14.f81475f
                r2 = 1
                r6 = 1
            L21:
                java.util.concurrent.atomic.AtomicLong r7 = r14.f81473d
                long r7 = r7.get()
            L27:
                r9 = 0
                int r10 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
                if (r10 == 0) goto L5b
                boolean r11 = r14.f81474e
                if (r11 == 0) goto L33
                r14.f81472c = r9
                return
            L33:
                boolean r11 = r13.f81496c
                int r12 = r13.f81497d
                if (r11 == 0) goto L4b
                if (r3 != r12) goto L4b
                r14.f81472c = r9
                r14.f81474e = r2
                java.lang.Throwable r14 = r13.f81495b
                if (r14 != 0) goto L47
                r1.onComplete()
                goto L4a
            L47:
                r1.onError(r14)
            L4a:
                return
            L4b:
                if (r3 != r12) goto L4e
                goto L5b
            L4e:
                java.lang.Object r9 = r0.get(r3)
                r1.onNext(r9)
                int r3 = r3 + 1
                r9 = 1
                long r4 = r4 + r9
                goto L27
            L5b:
                if (r10 != 0) goto L7c
                boolean r7 = r14.f81474e
                if (r7 == 0) goto L64
                r14.f81472c = r9
                return
            L64:
                boolean r7 = r13.f81496c
                int r8 = r13.f81497d
                if (r7 == 0) goto L7c
                if (r3 != r8) goto L7c
                r14.f81472c = r9
                r14.f81474e = r2
                java.lang.Throwable r14 = r13.f81495b
                if (r14 != 0) goto L78
                r1.onComplete()
                goto L7b
            L78:
                r1.onError(r14)
            L7b:
                return
            L7c:
                java.lang.Integer r7 = java.lang.Integer.valueOf(r3)
                r14.f81472c = r7
                r14.f81475f = r4
                int r6 = -r6
                int r6 = r14.addAndGet(r6)
                if (r6 != 0) goto L21
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.processors.f.g.f(io.reactivex.rxjava3.processors.f$c):void");
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        @p7.f
        public T getValue() {
            int i4 = this.f81497d;
            if (i4 == 0) {
                return null;
            }
            return this.f81494a.get(i4 - 1);
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public boolean isDone() {
            return this.f81496c;
        }

        @Override // io.reactivex.rxjava3.processors.f.b
        public int size() {
            return this.f81497d;
        }
    }

    f(b<T> buffer) {
        this.f81464b = buffer;
    }

    @p7.c
    @p7.e
    public static <T> f<T> n9() {
        return new f<>(new g(16));
    }

    @p7.c
    @p7.e
    public static <T> f<T> o9(int capacityHint) {
        io.reactivex.rxjava3.internal.functions.b.b(capacityHint, "capacityHint");
        return new f<>(new g(capacityHint));
    }

    @p7.c
    static <T> f<T> p9() {
        return new f<>(new e(Integer.MAX_VALUE));
    }

    @p7.c
    @p7.e
    public static <T> f<T> q9(int maxSize) {
        io.reactivex.rxjava3.internal.functions.b.b(maxSize, "maxSize");
        return new f<>(new e(maxSize));
    }

    @p7.c
    @p7.e
    public static <T> f<T> r9(long maxAge, @p7.e TimeUnit unit, @p7.e o0 scheduler) {
        io.reactivex.rxjava3.internal.functions.b.c(maxAge, "maxAge");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new f<>(new d(Integer.MAX_VALUE, maxAge, unit, scheduler));
    }

    @p7.c
    @p7.e
    public static <T> f<T> s9(long maxAge, @p7.e TimeUnit unit, @p7.e o0 scheduler, int maxSize) {
        io.reactivex.rxjava3.internal.functions.b.b(maxSize, "maxSize");
        io.reactivex.rxjava3.internal.functions.b.c(maxAge, "maxAge");
        Objects.requireNonNull(unit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new f<>(new d(maxSize, maxAge, unit, scheduler));
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        c<T> cVar = new c<>(s9, this);
        s9.onSubscribe(cVar);
        if (l9(cVar) && cVar.f81474e) {
            x9(cVar);
        } else {
            this.f81464b.f(cVar);
        }
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    @p7.f
    public Throwable g9() {
        b<T> bVar = this.f81464b;
        if (bVar.isDone()) {
            return bVar.e();
        }
        return null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean h9() {
        b<T> bVar = this.f81464b;
        return bVar.isDone() && bVar.e() == null;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean i9() {
        return this.f81466d.get().length != 0;
    }

    @Override // io.reactivex.rxjava3.processors.c
    @p7.c
    public boolean j9() {
        b<T> bVar = this.f81464b;
        return bVar.isDone() && bVar.e() != null;
    }

    boolean l9(c<T> rs) {
        c<T>[] cVarArr;
        c<T>[] cVarArr2;
        do {
            cVarArr = this.f81466d.get();
            if (cVarArr == f81463g) {
                return false;
            }
            int length = cVarArr.length;
            cVarArr2 = new c[length + 1];
            System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
            cVarArr2[length] = rs;
        } while (!this.f81466d.compareAndSet(cVarArr, cVarArr2));
        return true;
    }

    public void m9() {
        this.f81464b.c();
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81465c) {
            return;
        }
        this.f81465c = true;
        b<T> bVar = this.f81464b;
        bVar.complete();
        for (c<T> cVar : this.f81466d.getAndSet(f81463g)) {
            bVar.f(cVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onError called with a null Throwable.");
        if (this.f81465c) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81465c = true;
        b<T> bVar = this.f81464b;
        bVar.a(t9);
        for (c<T> cVar : this.f81466d.getAndSet(f81463g)) {
            bVar.f(cVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        io.reactivex.rxjava3.internal.util.g.d(t9, "onNext called with a null value.");
        if (this.f81465c) {
            return;
        }
        b<T> bVar = this.f81464b;
        bVar.b(t9);
        for (c<T> cVar : this.f81466d.get()) {
            bVar.f(cVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        if (this.f81465c) {
            s9.cancel();
        } else {
            s9.request(Long.MAX_VALUE);
        }
    }

    @p7.c
    public T t9() {
        return this.f81464b.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @p7.c
    public Object[] u9() {
        Object[] objArr = f81461e;
        Object[] v9 = v9(objArr);
        return v9 == objArr ? new Object[0] : v9;
    }

    @p7.c
    public T[] v9(T[] array) {
        return this.f81464b.d(array);
    }

    @p7.c
    public boolean w9() {
        return this.f81464b.size() != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void x9(c<T> rs) {
        c<T>[] cVarArr;
        c[] cVarArr2;
        do {
            cVarArr = this.f81466d.get();
            if (cVarArr == f81463g || cVarArr == f81462f) {
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
                cVarArr2 = f81462f;
            } else {
                c[] cVarArr3 = new c[length - 1];
                System.arraycopy(cVarArr, 0, cVarArr3, 0, i4);
                System.arraycopy(cVarArr, i4 + 1, cVarArr3, i4, (length - i4) - 1);
                cVarArr2 = cVarArr3;
            }
        } while (!this.f81466d.compareAndSet(cVarArr, cVarArr2));
    }

    @p7.c
    int y9() {
        return this.f81464b.size();
    }

    @p7.c
    int z9() {
        return this.f81466d.get().length;
    }
}
