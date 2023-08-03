package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableCombineLatest.java */
/* loaded from: classes3.dex */
public final class u<T, R> extends io.reactivex.z<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T>[] f74796a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.e0<? extends T>> f74797b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super Object[], ? extends R> f74798c;

    /* renamed from: d  reason: collision with root package name */
    final int f74799d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f74800e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableCombineLatest.java */
    /* loaded from: classes3.dex */
    public static final class a<T, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f74801c = -4823716997131257941L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f74802a;

        /* renamed from: b  reason: collision with root package name */
        final int f74803b;

        a(b<T, R> bVar, int i4) {
            this.f74802a = bVar;
            this.f74803b = i4;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74802a.d(this.f74803b);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74802a.e(this.f74803b, th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74802a.h(this.f74803b, t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    /* compiled from: ObservableCombineLatest.java */
    /* loaded from: classes3.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: l  reason: collision with root package name */
        private static final long f74804l = 8567835998786448817L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74805a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Object[], ? extends R> f74806b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, R>[] f74807c;

        /* renamed from: d  reason: collision with root package name */
        Object[] f74808d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.internal.queue.b<Object[]> f74809e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f74810f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f74811g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f74812h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicThrowable f74813i = new AtomicThrowable();

        /* renamed from: j  reason: collision with root package name */
        int f74814j;

        /* renamed from: k  reason: collision with root package name */
        int f74815k;

        b(io.reactivex.g0<? super R> g0Var, n7.o<? super Object[], ? extends R> oVar, int i4, int i10, boolean z9) {
            this.f74805a = g0Var;
            this.f74806b = oVar;
            this.f74810f = z9;
            this.f74808d = new Object[i4];
            a<T, R>[] aVarArr = new a[i4];
            for (int i11 = 0; i11 < i4; i11++) {
                aVarArr[i11] = new a<>(this, i11);
            }
            this.f74807c = aVarArr;
            this.f74809e = new io.reactivex.internal.queue.b<>(i10);
        }

        void a() {
            for (a<T, R> aVar : this.f74807c) {
                aVar.a();
            }
        }

        void b(io.reactivex.internal.queue.b<?> bVar) {
            synchronized (this) {
                this.f74808d = null;
            }
            bVar.clear();
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.internal.queue.b<Object[]> bVar = this.f74809e;
            io.reactivex.g0<? super R> g0Var = this.f74805a;
            boolean z9 = this.f74810f;
            int i4 = 1;
            while (!this.f74811g) {
                if (!z9 && this.f74813i.get() != null) {
                    a();
                    b(bVar);
                    g0Var.onError(this.f74813i.terminate());
                    return;
                }
                boolean z10 = this.f74812h;
                Object[] poll = bVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    b(bVar);
                    Throwable terminate = this.f74813i.terminate();
                    if (terminate == null) {
                        g0Var.onComplete();
                        return;
                    } else {
                        g0Var.onError(terminate);
                        return;
                    }
                } else if (z11) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    try {
                        g0Var.onNext((Object) io.reactivex.internal.functions.b.g(this.f74806b.apply(poll), "The combiner returned a null value"));
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f74813i.addThrowable(th);
                        a();
                        b(bVar);
                        g0Var.onError(this.f74813i.terminate());
                        return;
                    }
                }
            }
            b(bVar);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0017, code lost:
            if (r2 == r0.length) goto L19;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void d(int r4) {
            /*
                r3 = this;
                monitor-enter(r3)
                java.lang.Object[] r0 = r3.f74808d     // Catch: java.lang.Throwable -> L25
                if (r0 != 0) goto L7
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L25
                return
            L7:
                r4 = r0[r4]     // Catch: java.lang.Throwable -> L25
                r1 = 1
                if (r4 != 0) goto Le
                r4 = 1
                goto Lf
            Le:
                r4 = 0
            Lf:
                if (r4 != 0) goto L19
                int r2 = r3.f74815k     // Catch: java.lang.Throwable -> L25
                int r2 = r2 + r1
                r3.f74815k = r2     // Catch: java.lang.Throwable -> L25
                int r0 = r0.length     // Catch: java.lang.Throwable -> L25
                if (r2 != r0) goto L1b
            L19:
                r3.f74812h = r1     // Catch: java.lang.Throwable -> L25
            L1b:
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L25
                if (r4 == 0) goto L21
                r3.a()
            L21:
                r3.c()
                return
            L25:
                r4 = move-exception
                monitor-exit(r3)     // Catch: java.lang.Throwable -> L25
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.u.b.d(int):void");
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74811g) {
                return;
            }
            this.f74811g = true;
            a();
            if (getAndIncrement() == 0) {
                b(this.f74809e);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
            if (r1 == r4.length) goto L20;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void e(int r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                io.reactivex.internal.util.AtomicThrowable r0 = r2.f74813i
                boolean r0 = r0.addThrowable(r4)
                if (r0 == 0) goto L36
                boolean r4 = r2.f74810f
                r0 = 1
                if (r4 == 0) goto L2d
                monitor-enter(r2)
                java.lang.Object[] r4 = r2.f74808d     // Catch: java.lang.Throwable -> L2a
                if (r4 != 0) goto L14
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
                return
            L14:
                r3 = r4[r3]     // Catch: java.lang.Throwable -> L2a
                if (r3 != 0) goto L1a
                r3 = 1
                goto L1b
            L1a:
                r3 = 0
            L1b:
                if (r3 != 0) goto L25
                int r1 = r2.f74815k     // Catch: java.lang.Throwable -> L2a
                int r1 = r1 + r0
                r2.f74815k = r1     // Catch: java.lang.Throwable -> L2a
                int r4 = r4.length     // Catch: java.lang.Throwable -> L2a
                if (r1 != r4) goto L27
            L25:
                r2.f74812h = r0     // Catch: java.lang.Throwable -> L2a
            L27:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
                r0 = r3
                goto L2d
            L2a:
                r3 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L2a
                throw r3
            L2d:
                if (r0 == 0) goto L32
                r2.a()
            L32:
                r2.c()
                goto L39
            L36:
                io.reactivex.plugins.a.Y(r4)
            L39:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.u.b.e(int, java.lang.Throwable):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        void h(int i4, T t9) {
            boolean z9;
            synchronized (this) {
                Object[] objArr = this.f74808d;
                if (objArr == null) {
                    return;
                }
                Object obj = objArr[i4];
                int i10 = this.f74814j;
                if (obj == null) {
                    i10++;
                    this.f74814j = i10;
                }
                objArr[i4] = t9;
                if (i10 == objArr.length) {
                    this.f74809e.offer(objArr.clone());
                    z9 = true;
                } else {
                    z9 = false;
                }
                if (z9) {
                    c();
                }
            }
        }

        public void i(io.reactivex.e0<? extends T>[] e0VarArr) {
            a<T, R>[] aVarArr = this.f74807c;
            int length = aVarArr.length;
            this.f74805a.onSubscribe(this);
            for (int i4 = 0; i4 < length && !this.f74812h && !this.f74811g; i4++) {
                e0VarArr[i4].subscribe(aVarArr[i4]);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74811g;
        }
    }

    public u(io.reactivex.e0<? extends T>[] e0VarArr, Iterable<? extends io.reactivex.e0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar, int i4, boolean z9) {
        this.f74796a = e0VarArr;
        this.f74797b = iterable;
        this.f74798c = oVar;
        this.f74799d = i4;
        this.f74800e = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        int length;
        io.reactivex.e0<? extends T>[] e0VarArr = this.f74796a;
        if (e0VarArr == null) {
            e0VarArr = new io.reactivex.e0[8];
            length = 0;
            for (io.reactivex.e0<? extends T> e0Var : this.f74797b) {
                if (length == e0VarArr.length) {
                    io.reactivex.e0<? extends T>[] e0VarArr2 = new io.reactivex.e0[(length >> 2) + length];
                    System.arraycopy(e0VarArr, 0, e0VarArr2, 0, length);
                    e0VarArr = e0VarArr2;
                }
                e0VarArr[length] = e0Var;
                length++;
            }
        } else {
            length = e0VarArr.length;
        }
        int i4 = length;
        if (i4 == 0) {
            EmptyDisposable.complete(g0Var);
        } else {
            new b(g0Var, this.f74798c, i4, this.f74799d, this.f74800e).i(e0VarArr);
        }
    }
}
