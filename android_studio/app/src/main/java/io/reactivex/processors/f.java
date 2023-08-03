package io.reactivex.processors;

import io.reactivex.h0;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ReplayProcessor.java */
/* loaded from: classes4.dex */
public final class f<T> extends io.reactivex.processors.c<T> {

    /* renamed from: e  reason: collision with root package name */
    private static final Object[] f76052e = new Object[0];

    /* renamed from: f  reason: collision with root package name */
    static final c[] f76053f = new c[0];

    /* renamed from: g  reason: collision with root package name */
    static final c[] f76054g = new c[0];

    /* renamed from: b  reason: collision with root package name */
    final b<T> f76055b;

    /* renamed from: c  reason: collision with root package name */
    boolean f76056c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicReference<c<T>[]> f76057d = new AtomicReference<>(f76053f);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<a<T>> {

        /* renamed from: b  reason: collision with root package name */
        private static final long f76058b = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f76059a;

        a(T t9) {
            this.f76059a = t9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    public interface b<T> {
        void a(Throwable th);

        void b(T t9);

        void c();

        void complete();

        T[] d(T[] tArr);

        Throwable e();

        void f(c<T> cVar);

        @m7.f
        T getValue();

        boolean isDone();

        int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicInteger implements org.reactivestreams.e {

        /* renamed from: g  reason: collision with root package name */
        private static final long f76060g = 466549804534799122L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f76061a;

        /* renamed from: b  reason: collision with root package name */
        final f<T> f76062b;

        /* renamed from: c  reason: collision with root package name */
        Object f76063c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f76064d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f76065e;

        /* renamed from: f  reason: collision with root package name */
        long f76066f;

        c(org.reactivestreams.d<? super T> dVar, f<T> fVar) {
            this.f76061a = dVar;
            this.f76062b = fVar;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            if (this.f76065e) {
                return;
            }
            this.f76065e = true;
            this.f76062b.d9(this);
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                io.reactivex.internal.util.b.a(this.f76064d, j4);
                this.f76062b.f76055b.f(this);
            }
        }
    }

    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    static final class d<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f76067a;

        /* renamed from: b  reason: collision with root package name */
        final long f76068b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f76069c;

        /* renamed from: d  reason: collision with root package name */
        final h0 f76070d;

        /* renamed from: e  reason: collision with root package name */
        int f76071e;

        /* renamed from: f  reason: collision with root package name */
        volatile C0616f<T> f76072f;

        /* renamed from: g  reason: collision with root package name */
        C0616f<T> f76073g;

        /* renamed from: h  reason: collision with root package name */
        Throwable f76074h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f76075i;

        d(int i4, long j4, TimeUnit timeUnit, h0 h0Var) {
            this.f76067a = io.reactivex.internal.functions.b.h(i4, "maxSize");
            this.f76068b = io.reactivex.internal.functions.b.i(j4, "maxAge");
            this.f76069c = (TimeUnit) io.reactivex.internal.functions.b.g(timeUnit, "unit is null");
            this.f76070d = (h0) io.reactivex.internal.functions.b.g(h0Var, "scheduler is null");
            C0616f<T> c0616f = new C0616f<>(null, 0L);
            this.f76073g = c0616f;
            this.f76072f = c0616f;
        }

        @Override // io.reactivex.processors.f.b
        public void a(Throwable th) {
            j();
            this.f76074h = th;
            this.f76075i = true;
        }

        @Override // io.reactivex.processors.f.b
        public void b(T t9) {
            C0616f<T> c0616f = new C0616f<>(t9, this.f76070d.e(this.f76069c));
            C0616f<T> c0616f2 = this.f76073g;
            this.f76073g = c0616f;
            this.f76071e++;
            c0616f2.set(c0616f);
            i();
        }

        @Override // io.reactivex.processors.f.b
        public void c() {
            if (this.f76072f.f76083a != null) {
                C0616f<T> c0616f = new C0616f<>(null, 0L);
                c0616f.lazySet(this.f76072f.get());
                this.f76072f = c0616f;
            }
        }

        @Override // io.reactivex.processors.f.b
        public void complete() {
            j();
            this.f76075i = true;
        }

        @Override // io.reactivex.processors.f.b
        public T[] d(T[] tArr) {
            C0616f<T> g4 = g();
            int h4 = h(g4);
            if (h4 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
            } else {
                if (tArr.length < h4) {
                    tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), h4));
                }
                for (int i4 = 0; i4 != h4; i4++) {
                    g4 = g4.get();
                    tArr[i4] = g4.f76083a;
                }
                if (tArr.length > h4) {
                    tArr[h4] = null;
                }
            }
            return tArr;
        }

        @Override // io.reactivex.processors.f.b
        public Throwable e() {
            return this.f76074h;
        }

        @Override // io.reactivex.processors.f.b
        public void f(c<T> cVar) {
            int i4;
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = cVar.f76061a;
            C0616f<T> c0616f = (C0616f) cVar.f76063c;
            if (c0616f == null) {
                c0616f = g();
            }
            long j4 = cVar.f76066f;
            int i10 = 1;
            do {
                long j10 = cVar.f76064d.get();
                while (true) {
                    i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (cVar.f76065e) {
                        cVar.f76063c = null;
                        return;
                    } else {
                        boolean z9 = this.f76075i;
                        C0616f<T> c0616f2 = c0616f.get();
                        boolean z10 = c0616f2 == null;
                        if (z9 && z10) {
                            cVar.f76063c = null;
                            cVar.f76065e = true;
                            Throwable th = this.f76074h;
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
                            dVar.onNext((T) c0616f2.f76083a);
                            j4++;
                            c0616f = c0616f2;
                        }
                    }
                }
                if (i4 == 0) {
                    if (cVar.f76065e) {
                        cVar.f76063c = null;
                        return;
                    } else if (this.f76075i && c0616f.get() == null) {
                        cVar.f76063c = null;
                        cVar.f76065e = true;
                        Throwable th2 = this.f76074h;
                        if (th2 == null) {
                            dVar.onComplete();
                            return;
                        } else {
                            dVar.onError(th2);
                            return;
                        }
                    }
                }
                cVar.f76063c = c0616f;
                cVar.f76066f = j4;
                i10 = cVar.addAndGet(-i10);
            } while (i10 != 0);
        }

        C0616f<T> g() {
            C0616f<T> c0616f;
            C0616f<T> c0616f2 = this.f76072f;
            long e4 = this.f76070d.e(this.f76069c) - this.f76068b;
            C0616f<T> c0616f3 = c0616f2.get();
            while (true) {
                C0616f<T> c0616f4 = c0616f3;
                c0616f = c0616f2;
                c0616f2 = c0616f4;
                if (c0616f2 == null || c0616f2.f76084b > e4) {
                    break;
                }
                c0616f3 = c0616f2.get();
            }
            return c0616f;
        }

        @Override // io.reactivex.processors.f.b
        @m7.f
        public T getValue() {
            C0616f<T> c0616f = this.f76072f;
            while (true) {
                C0616f<T> c0616f2 = c0616f.get();
                if (c0616f2 == null) {
                    break;
                }
                c0616f = c0616f2;
            }
            if (c0616f.f76084b < this.f76070d.e(this.f76069c) - this.f76068b) {
                return null;
            }
            return c0616f.f76083a;
        }

        int h(C0616f<T> c0616f) {
            int i4 = 0;
            while (i4 != Integer.MAX_VALUE && (c0616f = c0616f.get()) != null) {
                i4++;
            }
            return i4;
        }

        void i() {
            int i4 = this.f76071e;
            if (i4 > this.f76067a) {
                this.f76071e = i4 - 1;
                this.f76072f = this.f76072f.get();
            }
            long e4 = this.f76070d.e(this.f76069c) - this.f76068b;
            C0616f<T> c0616f = this.f76072f;
            while (this.f76071e > 1) {
                C0616f<T> c0616f2 = c0616f.get();
                if (c0616f2 == null) {
                    this.f76072f = c0616f;
                    return;
                } else if (c0616f2.f76084b > e4) {
                    this.f76072f = c0616f;
                    return;
                } else {
                    this.f76071e--;
                    c0616f = c0616f2;
                }
            }
            this.f76072f = c0616f;
        }

        @Override // io.reactivex.processors.f.b
        public boolean isDone() {
            return this.f76075i;
        }

        void j() {
            long e4 = this.f76070d.e(this.f76069c) - this.f76068b;
            C0616f<T> c0616f = this.f76072f;
            while (true) {
                C0616f<T> c0616f2 = c0616f.get();
                if (c0616f2 == null) {
                    if (c0616f.f76083a != null) {
                        this.f76072f = new C0616f<>(null, 0L);
                        return;
                    } else {
                        this.f76072f = c0616f;
                        return;
                    }
                } else if (c0616f2.f76084b > e4) {
                    if (c0616f.f76083a != null) {
                        C0616f<T> c0616f3 = new C0616f<>(null, 0L);
                        c0616f3.lazySet(c0616f.get());
                        this.f76072f = c0616f3;
                        return;
                    }
                    this.f76072f = c0616f;
                    return;
                } else {
                    c0616f = c0616f2;
                }
            }
        }

        @Override // io.reactivex.processors.f.b
        public int size() {
            return h(g());
        }
    }

    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    static final class e<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f76076a;

        /* renamed from: b  reason: collision with root package name */
        int f76077b;

        /* renamed from: c  reason: collision with root package name */
        volatile a<T> f76078c;

        /* renamed from: d  reason: collision with root package name */
        a<T> f76079d;

        /* renamed from: e  reason: collision with root package name */
        Throwable f76080e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f76081f;

        e(int i4) {
            this.f76076a = io.reactivex.internal.functions.b.h(i4, "maxSize");
            a<T> aVar = new a<>(null);
            this.f76079d = aVar;
            this.f76078c = aVar;
        }

        @Override // io.reactivex.processors.f.b
        public void a(Throwable th) {
            this.f76080e = th;
            c();
            this.f76081f = true;
        }

        @Override // io.reactivex.processors.f.b
        public void b(T t9) {
            a<T> aVar = new a<>(t9);
            a<T> aVar2 = this.f76079d;
            this.f76079d = aVar;
            this.f76077b++;
            aVar2.set(aVar);
            g();
        }

        @Override // io.reactivex.processors.f.b
        public void c() {
            if (this.f76078c.f76059a != null) {
                a<T> aVar = new a<>(null);
                aVar.lazySet(this.f76078c.get());
                this.f76078c = aVar;
            }
        }

        @Override // io.reactivex.processors.f.b
        public void complete() {
            c();
            this.f76081f = true;
        }

        @Override // io.reactivex.processors.f.b
        public T[] d(T[] tArr) {
            a<T> aVar = this.f76078c;
            a<T> aVar2 = aVar;
            int i4 = 0;
            while (true) {
                aVar2 = aVar2.get();
                if (aVar2 == null) {
                    break;
                }
                i4++;
            }
            if (tArr.length < i4) {
                tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i4));
            }
            for (int i10 = 0; i10 < i4; i10++) {
                aVar = aVar.get();
                tArr[i10] = aVar.f76059a;
            }
            if (tArr.length > i4) {
                tArr[i4] = null;
            }
            return tArr;
        }

        @Override // io.reactivex.processors.f.b
        public Throwable e() {
            return this.f76080e;
        }

        @Override // io.reactivex.processors.f.b
        public void f(c<T> cVar) {
            int i4;
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super T> dVar = cVar.f76061a;
            a<T> aVar = (a) cVar.f76063c;
            if (aVar == null) {
                aVar = this.f76078c;
            }
            long j4 = cVar.f76066f;
            int i10 = 1;
            do {
                long j10 = cVar.f76064d.get();
                while (true) {
                    i4 = (j4 > j10 ? 1 : (j4 == j10 ? 0 : -1));
                    if (i4 == 0) {
                        break;
                    } else if (cVar.f76065e) {
                        cVar.f76063c = null;
                        return;
                    } else {
                        boolean z9 = this.f76081f;
                        a<T> aVar2 = aVar.get();
                        boolean z10 = aVar2 == null;
                        if (z9 && z10) {
                            cVar.f76063c = null;
                            cVar.f76065e = true;
                            Throwable th = this.f76080e;
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
                            dVar.onNext((T) aVar2.f76059a);
                            j4++;
                            aVar = aVar2;
                        }
                    }
                }
                if (i4 == 0) {
                    if (cVar.f76065e) {
                        cVar.f76063c = null;
                        return;
                    } else if (this.f76081f && aVar.get() == null) {
                        cVar.f76063c = null;
                        cVar.f76065e = true;
                        Throwable th2 = this.f76080e;
                        if (th2 == null) {
                            dVar.onComplete();
                            return;
                        } else {
                            dVar.onError(th2);
                            return;
                        }
                    }
                }
                cVar.f76063c = aVar;
                cVar.f76066f = j4;
                i10 = cVar.addAndGet(-i10);
            } while (i10 != 0);
        }

        void g() {
            int i4 = this.f76077b;
            if (i4 > this.f76076a) {
                this.f76077b = i4 - 1;
                this.f76078c = this.f76078c.get();
            }
        }

        @Override // io.reactivex.processors.f.b
        public T getValue() {
            a<T> aVar = this.f76078c;
            while (true) {
                a<T> aVar2 = aVar.get();
                if (aVar2 == null) {
                    return aVar.f76059a;
                }
                aVar = aVar2;
            }
        }

        @Override // io.reactivex.processors.f.b
        public boolean isDone() {
            return this.f76081f;
        }

        @Override // io.reactivex.processors.f.b
        public int size() {
            a<T> aVar = this.f76078c;
            int i4 = 0;
            while (i4 != Integer.MAX_VALUE && (aVar = aVar.get()) != null) {
                i4++;
            }
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReplayProcessor.java */
    /* renamed from: io.reactivex.processors.f$f  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0616f<T> extends AtomicReference<C0616f<T>> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f76082c = 6404226426336033100L;

        /* renamed from: a  reason: collision with root package name */
        final T f76083a;

        /* renamed from: b  reason: collision with root package name */
        final long f76084b;

        C0616f(T t9, long j4) {
            this.f76083a = t9;
            this.f76084b = j4;
        }
    }

    /* compiled from: ReplayProcessor.java */
    /* loaded from: classes4.dex */
    static final class g<T> implements b<T> {

        /* renamed from: a  reason: collision with root package name */
        final List<T> f76085a;

        /* renamed from: b  reason: collision with root package name */
        Throwable f76086b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f76087c;

        /* renamed from: d  reason: collision with root package name */
        volatile int f76088d;

        g(int i4) {
            this.f76085a = new ArrayList(io.reactivex.internal.functions.b.h(i4, "capacityHint"));
        }

        @Override // io.reactivex.processors.f.b
        public void a(Throwable th) {
            this.f76086b = th;
            this.f76087c = true;
        }

        @Override // io.reactivex.processors.f.b
        public void b(T t9) {
            this.f76085a.add(t9);
            this.f76088d++;
        }

        @Override // io.reactivex.processors.f.b
        public void c() {
        }

        @Override // io.reactivex.processors.f.b
        public void complete() {
            this.f76087c = true;
        }

        @Override // io.reactivex.processors.f.b
        public T[] d(T[] tArr) {
            int i4 = this.f76088d;
            if (i4 == 0) {
                if (tArr.length != 0) {
                    tArr[0] = null;
                }
                return tArr;
            }
            List<T> list = this.f76085a;
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

        @Override // io.reactivex.processors.f.b
        public Throwable e() {
            return this.f76086b;
        }

        /* JADX WARN: Code restructure failed: missing block: B:28:0x005b, code lost:
            if (r10 != 0) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x005f, code lost:
            if (r14.f76065e == false) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0061, code lost:
            r14.f76063c = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0063, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0064, code lost:
            r7 = r13.f76087c;
            r8 = r13.f76088d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0068, code lost:
            if (r7 == false) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x006a, code lost:
            if (r3 != r8) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x006c, code lost:
            r14.f76063c = null;
            r14.f76065e = true;
            r14 = r13.f76086b;
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
            r14.f76063c = java.lang.Integer.valueOf(r3);
            r14.f76066f = r4;
            r6 = r14.addAndGet(-r6);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:?, code lost:
            return;
         */
        @Override // io.reactivex.processors.f.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void f(io.reactivex.processors.f.c<T> r14) {
            /*
                r13 = this;
                int r0 = r14.getAndIncrement()
                if (r0 == 0) goto L7
                return
            L7:
                java.util.List<T> r0 = r13.f76085a
                org.reactivestreams.d<? super T> r1 = r14.f76061a
                java.lang.Object r2 = r14.f76063c
                java.lang.Integer r2 = (java.lang.Integer) r2
                r3 = 0
                if (r2 == 0) goto L17
                int r3 = r2.intValue()
                goto L1d
            L17:
                java.lang.Integer r2 = java.lang.Integer.valueOf(r3)
                r14.f76063c = r2
            L1d:
                long r4 = r14.f76066f
                r2 = 1
                r6 = 1
            L21:
                java.util.concurrent.atomic.AtomicLong r7 = r14.f76064d
                long r7 = r7.get()
            L27:
                r9 = 0
                int r10 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
                if (r10 == 0) goto L5b
                boolean r11 = r14.f76065e
                if (r11 == 0) goto L33
                r14.f76063c = r9
                return
            L33:
                boolean r11 = r13.f76087c
                int r12 = r13.f76088d
                if (r11 == 0) goto L4b
                if (r3 != r12) goto L4b
                r14.f76063c = r9
                r14.f76065e = r2
                java.lang.Throwable r14 = r13.f76086b
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
                boolean r7 = r14.f76065e
                if (r7 == 0) goto L64
                r14.f76063c = r9
                return
            L64:
                boolean r7 = r13.f76087c
                int r8 = r13.f76088d
                if (r7 == 0) goto L7c
                if (r3 != r8) goto L7c
                r14.f76063c = r9
                r14.f76065e = r2
                java.lang.Throwable r14 = r13.f76086b
                if (r14 != 0) goto L78
                r1.onComplete()
                goto L7b
            L78:
                r1.onError(r14)
            L7b:
                return
            L7c:
                java.lang.Integer r7 = java.lang.Integer.valueOf(r3)
                r14.f76063c = r7
                r14.f76066f = r4
                int r6 = -r6
                int r6 = r14.addAndGet(r6)
                if (r6 != 0) goto L21
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.processors.f.g.f(io.reactivex.processors.f$c):void");
        }

        @Override // io.reactivex.processors.f.b
        @m7.f
        public T getValue() {
            int i4 = this.f76088d;
            if (i4 == 0) {
                return null;
            }
            return this.f76085a.get(i4 - 1);
        }

        @Override // io.reactivex.processors.f.b
        public boolean isDone() {
            return this.f76087c;
        }

        @Override // io.reactivex.processors.f.b
        public int size() {
            return this.f76088d;
        }
    }

    f(b<T> bVar) {
        this.f76055b = bVar;
    }

    @m7.e
    @m7.c
    public static <T> f<T> T8() {
        return new f<>(new g(16));
    }

    @m7.e
    @m7.c
    public static <T> f<T> U8(int i4) {
        return new f<>(new g(i4));
    }

    static <T> f<T> V8() {
        return new f<>(new e(Integer.MAX_VALUE));
    }

    @m7.e
    @m7.c
    public static <T> f<T> W8(int i4) {
        return new f<>(new e(i4));
    }

    @m7.e
    @m7.c
    public static <T> f<T> X8(long j4, TimeUnit timeUnit, h0 h0Var) {
        return new f<>(new d(Integer.MAX_VALUE, j4, timeUnit, h0Var));
    }

    @m7.e
    @m7.c
    public static <T> f<T> Y8(long j4, TimeUnit timeUnit, h0 h0Var, int i4) {
        return new f<>(new d(i4, j4, timeUnit, h0Var));
    }

    @Override // io.reactivex.processors.c
    @m7.f
    public Throwable M8() {
        b<T> bVar = this.f76055b;
        if (bVar.isDone()) {
            return bVar.e();
        }
        return null;
    }

    @Override // io.reactivex.processors.c
    public boolean N8() {
        b<T> bVar = this.f76055b;
        return bVar.isDone() && bVar.e() == null;
    }

    @Override // io.reactivex.processors.c
    public boolean O8() {
        return this.f76057d.get().length != 0;
    }

    @Override // io.reactivex.processors.c
    public boolean P8() {
        b<T> bVar = this.f76055b;
        return bVar.isDone() && bVar.e() != null;
    }

    boolean R8(c<T> cVar) {
        c<T>[] cVarArr;
        c<T>[] cVarArr2;
        do {
            cVarArr = this.f76057d.get();
            if (cVarArr == f76054g) {
                return false;
            }
            int length = cVarArr.length;
            cVarArr2 = new c[length + 1];
            System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
            cVarArr2[length] = cVar;
        } while (!this.f76057d.compareAndSet(cVarArr, cVarArr2));
        return true;
    }

    public void S8() {
        this.f76055b.c();
    }

    public T Z8() {
        return this.f76055b.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Object[] a9() {
        Object[] objArr = f76052e;
        Object[] b92 = b9(objArr);
        return b92 == objArr ? new Object[0] : b92;
    }

    public T[] b9(T[] tArr) {
        return this.f76055b.d(tArr);
    }

    public boolean c9() {
        return this.f76055b.size() != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void d9(c<T> cVar) {
        c<T>[] cVarArr;
        c[] cVarArr2;
        do {
            cVarArr = this.f76057d.get();
            if (cVarArr == f76054g || cVarArr == f76053f) {
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
                cVarArr2 = f76053f;
            } else {
                c[] cVarArr3 = new c[length - 1];
                System.arraycopy(cVarArr, 0, cVarArr3, 0, i4);
                System.arraycopy(cVarArr, i4 + 1, cVarArr3, i4, (length - i4) - 1);
                cVarArr2 = cVarArr3;
            }
        } while (!this.f76057d.compareAndSet(cVarArr, cVarArr2));
    }

    int e9() {
        return this.f76055b.size();
    }

    int f9() {
        return this.f76057d.get().length;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        c<T> cVar = new c<>(dVar, this);
        dVar.onSubscribe(cVar);
        if (R8(cVar) && cVar.f76065e) {
            d9(cVar);
        } else {
            this.f76055b.f(cVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f76056c) {
            return;
        }
        this.f76056c = true;
        b<T> bVar = this.f76055b;
        bVar.complete();
        for (c<T> cVar : this.f76057d.getAndSet(f76054g)) {
            bVar.f(cVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f76056c) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f76056c = true;
        b<T> bVar = this.f76055b;
        bVar.a(th);
        for (c<T> cVar : this.f76057d.getAndSet(f76054g)) {
            bVar.f(cVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.f76056c) {
            return;
        }
        b<T> bVar = this.f76055b;
        bVar.b(t9);
        for (c<T> cVar : this.f76057d.get()) {
            bVar.f(cVar);
        }
    }

    @Override // org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (this.f76056c) {
            eVar.cancel();
        } else {
            eVar.request(Long.MAX_VALUE);
        }
    }
}
