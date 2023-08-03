package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSwitchMap.java */
/* loaded from: classes4.dex */
public final class p3<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f79929b;

    /* renamed from: c  reason: collision with root package name */
    final int f79930c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f79931d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableSwitchMap.java */
    /* loaded from: classes4.dex */
    public static final class a<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<R> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f79932f = 3837284832786408377L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f79933a;

        /* renamed from: b  reason: collision with root package name */
        final long f79934b;

        /* renamed from: c  reason: collision with root package name */
        final int f79935c;

        /* renamed from: d  reason: collision with root package name */
        volatile io.reactivex.rxjava3.internal.fuseable.q<R> f79936d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f79937e;

        a(b<T, R> parent, long index, int bufferSize) {
            this.f79933a = parent;
            this.f79934b = index;
            this.f79935c = bufferSize;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79934b == this.f79933a.f79949j) {
                this.f79937e = true;
                this.f79933a.b();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79933a.c(this, t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(R t9) {
            if (this.f79934b == this.f79933a.f79949j) {
                if (t9 != null) {
                    this.f79936d.offer(t9);
                }
                this.f79933a.b();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                    io.reactivex.rxjava3.internal.fuseable.l lVar = (io.reactivex.rxjava3.internal.fuseable.l) d4;
                    int requestFusion = lVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f79936d = lVar;
                        this.f79937e = true;
                        this.f79933a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f79936d = lVar;
                        return;
                    }
                }
                this.f79936d = new io.reactivex.rxjava3.internal.queue.b(this.f79935c);
            }
        }
    }

    /* compiled from: ObservableSwitchMap.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: k  reason: collision with root package name */
        private static final long f79938k = -3491074160481096299L;

        /* renamed from: l  reason: collision with root package name */
        static final a<Object, Object> f79939l;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79940a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> f79941b;

        /* renamed from: c  reason: collision with root package name */
        final int f79942c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f79943d;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f79945f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79946g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79947h;

        /* renamed from: j  reason: collision with root package name */
        volatile long f79949j;

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<a<T, R>> f79948i = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f79944e = new AtomicThrowable();

        static {
            a<Object, Object> aVar = new a<>(null, -1L, 1);
            f79939l = aVar;
            aVar.a();
        }

        b(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> mapper, int bufferSize, boolean delayErrors) {
            this.f79940a = actual;
            this.f79941b = mapper;
            this.f79942c = bufferSize;
            this.f79943d = delayErrors;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            a aVar = (a) this.f79948i.getAndSet(f79939l);
            if (aVar != null) {
                aVar.a();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:76:0x00b7 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:80:0x000f A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                r13 = this;
                int r0 = r13.getAndIncrement()
                if (r0 == 0) goto L7
                return
            L7:
                io.reactivex.rxjava3.core.n0<? super R> r0 = r13.f79940a
                java.util.concurrent.atomic.AtomicReference<io.reactivex.rxjava3.internal.operators.observable.p3$a<T, R>> r1 = r13.f79948i
                boolean r2 = r13.f79943d
                r3 = 1
                r4 = 1
            Lf:
                boolean r5 = r13.f79946g
                if (r5 == 0) goto L14
                return
            L14:
                boolean r5 = r13.f79945f
                r6 = 0
                if (r5 == 0) goto L4e
                java.lang.Object r5 = r1.get()
                if (r5 != 0) goto L21
                r5 = 1
                goto L22
            L21:
                r5 = 0
            L22:
                if (r2 == 0) goto L38
                if (r5 == 0) goto L4e
                io.reactivex.rxjava3.internal.util.AtomicThrowable r1 = r13.f79944e
                java.lang.Object r1 = r1.get()
                java.lang.Throwable r1 = (java.lang.Throwable) r1
                if (r1 == 0) goto L34
                r0.onError(r1)
                goto L37
            L34:
                r0.onComplete()
            L37:
                return
            L38:
                io.reactivex.rxjava3.internal.util.AtomicThrowable r7 = r13.f79944e
                java.lang.Object r7 = r7.get()
                java.lang.Throwable r7 = (java.lang.Throwable) r7
                if (r7 == 0) goto L48
                io.reactivex.rxjava3.internal.util.AtomicThrowable r1 = r13.f79944e
                r1.tryTerminateConsumer(r0)
                return
            L48:
                if (r5 == 0) goto L4e
                r0.onComplete()
                return
            L4e:
                java.lang.Object r5 = r1.get()
                io.reactivex.rxjava3.internal.operators.observable.p3$a r5 = (io.reactivex.rxjava3.internal.operators.observable.p3.a) r5
                if (r5 == 0) goto Lb7
                io.reactivex.rxjava3.internal.fuseable.q<R> r7 = r5.f79936d
                if (r7 == 0) goto Lb7
                r8 = 0
            L5b:
                boolean r9 = r13.f79946g
                if (r9 == 0) goto L60
                return
            L60:
                java.lang.Object r9 = r1.get()
                if (r5 == r9) goto L68
            L66:
                r8 = 1
                goto Laf
            L68:
                if (r2 != 0) goto L7a
                io.reactivex.rxjava3.internal.util.AtomicThrowable r9 = r13.f79944e
                java.lang.Object r9 = r9.get()
                java.lang.Throwable r9 = (java.lang.Throwable) r9
                if (r9 == 0) goto L7a
                io.reactivex.rxjava3.internal.util.AtomicThrowable r1 = r13.f79944e
                r1.tryTerminateConsumer(r0)
                return
            L7a:
                boolean r9 = r5.f79937e
                r10 = 0
                java.lang.Object r11 = r7.poll()     // Catch: java.lang.Throwable -> L82
                goto La0
            L82:
                r8 = move-exception
                io.reactivex.rxjava3.exceptions.a.b(r8)
                io.reactivex.rxjava3.internal.util.AtomicThrowable r11 = r13.f79944e
                r11.tryAddThrowableOrReport(r8)
                r1.compareAndSet(r5, r10)
                if (r2 != 0) goto L9b
                r13.a()
                io.reactivex.rxjava3.disposables.f r8 = r13.f79947h
                r8.dispose()
                r13.f79945f = r3
                goto L9e
            L9b:
                r5.a()
            L9e:
                r11 = r10
                r8 = 1
            La0:
                if (r11 != 0) goto La4
                r12 = 1
                goto La5
            La4:
                r12 = 0
            La5:
                if (r9 == 0) goto Lad
                if (r12 == 0) goto Lad
                r1.compareAndSet(r5, r10)
                goto L66
            Lad:
                if (r12 == 0) goto Lb3
            Laf:
                if (r8 == 0) goto Lb7
                goto Lf
            Lb3:
                r0.onNext(r11)
                goto L5b
            Lb7:
                int r4 = -r4
                int r4 = r13.addAndGet(r4)
                if (r4 != 0) goto Lf
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.observable.p3.b.b():void");
        }

        void c(a<T, R> inner, Throwable ex) {
            if (inner.f79934b == this.f79949j && this.f79944e.tryAddThrowable(ex)) {
                if (!this.f79943d) {
                    this.f79947h.dispose();
                    this.f79945f = true;
                }
                inner.f79937e = true;
                b();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79946g) {
                return;
            }
            this.f79946g = true;
            this.f79947h.dispose();
            a();
            this.f79944e.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79946g;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79945f) {
                return;
            }
            this.f79945f = true;
            b();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (!this.f79945f && this.f79944e.tryAddThrowable(t9)) {
                if (!this.f79943d) {
                    a();
                }
                this.f79945f = true;
                b();
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            a<T, R> aVar;
            long j4 = this.f79949j + 1;
            this.f79949j = j4;
            a<T, R> aVar2 = this.f79948i.get();
            if (aVar2 != null) {
                aVar2.a();
            }
            try {
                io.reactivex.rxjava3.core.l0<? extends R> apply = this.f79941b.apply(t9);
                Objects.requireNonNull(apply, "The ObservableSource returned is null");
                io.reactivex.rxjava3.core.l0<? extends R> l0Var = apply;
                a<T, R> aVar3 = new a<>(this, j4, this.f79942c);
                do {
                    aVar = this.f79948i.get();
                    if (aVar == f79939l) {
                        return;
                    }
                } while (!this.f79948i.compareAndSet(aVar, aVar3));
                l0Var.a(aVar3);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79947h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79947h, d4)) {
                this.f79947h = d4;
                this.f79940a.onSubscribe(this);
            }
        }
    }

    public p3(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.l0<? extends R>> mapper, int bufferSize, boolean delayErrors) {
        super(source);
        this.f79929b = mapper;
        this.f79930c = bufferSize;
        this.f79931d = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super R> t9) {
        if (ObservableScalarXMap.b(this.f79141a, t9, this.f79929b)) {
            return;
        }
        this.f79141a.a(new b(t9, this.f79929b, this.f79930c, this.f79931d));
    }
}
