package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableCombineLatest.java */
/* loaded from: classes4.dex */
public final class t<T, R> extends io.reactivex.rxjava3.core.g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T>[] f80097a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.l0<? extends T>> f80098b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super Object[], ? extends R> f80099c;

    /* renamed from: d  reason: collision with root package name */
    final int f80100d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f80101e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableCombineLatest.java */
    /* loaded from: classes4.dex */
    public static final class a<T, R> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80102c = -4823716997131257941L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f80103a;

        /* renamed from: b  reason: collision with root package name */
        final int f80104b;

        a(b<T, R> parent, int index) {
            this.f80103a = parent;
            this.f80104b = index;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f80103a.d(this.f80104b);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80103a.e(this.f80104b, t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f80103a.h(this.f80104b, t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }
    }

    /* compiled from: ObservableCombineLatest.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: l  reason: collision with root package name */
        private static final long f80105l = 8567835998786448817L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f80106a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Object[], ? extends R> f80107b;

        /* renamed from: c  reason: collision with root package name */
        final a<T, R>[] f80108c;

        /* renamed from: d  reason: collision with root package name */
        Object[] f80109d;

        /* renamed from: e  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<Object[]> f80110e;

        /* renamed from: f  reason: collision with root package name */
        final boolean f80111f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f80112g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f80113h;

        /* renamed from: i  reason: collision with root package name */
        final AtomicThrowable f80114i = new AtomicThrowable();

        /* renamed from: j  reason: collision with root package name */
        int f80115j;

        /* renamed from: k  reason: collision with root package name */
        int f80116k;

        b(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super Object[], ? extends R> combiner, int count, int bufferSize, boolean delayError) {
            this.f80106a = actual;
            this.f80107b = combiner;
            this.f80111f = delayError;
            this.f80109d = new Object[count];
            a<T, R>[] aVarArr = new a[count];
            for (int i4 = 0; i4 < count; i4++) {
                aVarArr[i4] = new a<>(this, i4);
            }
            this.f80108c = aVarArr;
            this.f80110e = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
        }

        void a() {
            for (a<T, R> aVar : this.f80108c) {
                aVar.a();
            }
        }

        void b(io.reactivex.rxjava3.internal.queue.b<?> q9) {
            synchronized (this) {
                this.f80109d = null;
            }
            q9.clear();
        }

        void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            io.reactivex.rxjava3.internal.queue.b<Object[]> bVar = this.f80110e;
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f80106a;
            boolean z9 = this.f80111f;
            int i4 = 1;
            while (!this.f80112g) {
                if (!z9 && this.f80114i.get() != null) {
                    a();
                    b(bVar);
                    this.f80114i.tryTerminateConsumer(n0Var);
                    return;
                }
                boolean z10 = this.f80113h;
                Object[] poll = bVar.poll();
                boolean z11 = poll == null;
                if (z10 && z11) {
                    b(bVar);
                    this.f80114i.tryTerminateConsumer(n0Var);
                    return;
                } else if (z11) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    try {
                        Object obj = (R) this.f80107b.apply(poll);
                        Objects.requireNonNull(obj, "The combiner returned a null value");
                        n0Var.onNext(obj);
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f80114i.tryAddThrowableOrReport(th);
                        a();
                        b(bVar);
                        this.f80114i.tryTerminateConsumer(n0Var);
                        return;
                    }
                }
            }
            b(bVar);
            this.f80114i.tryTerminateAndReport();
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
                java.lang.Object[] r0 = r3.f80109d     // Catch: java.lang.Throwable -> L25
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
                int r2 = r3.f80116k     // Catch: java.lang.Throwable -> L25
                int r2 = r2 + r1
                r3.f80116k = r2     // Catch: java.lang.Throwable -> L25
                int r0 = r0.length     // Catch: java.lang.Throwable -> L25
                if (r2 != r0) goto L1b
            L19:
                r3.f80113h = r1     // Catch: java.lang.Throwable -> L25
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.observable.t.b.d(int):void");
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f80112g) {
                return;
            }
            this.f80112g = true;
            a();
            c();
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
                io.reactivex.rxjava3.internal.util.AtomicThrowable r0 = r2.f80114i
                boolean r4 = r0.tryAddThrowableOrReport(r4)
                if (r4 == 0) goto L35
                boolean r4 = r2.f80111f
                r0 = 1
                if (r4 == 0) goto L2d
                monitor-enter(r2)
                java.lang.Object[] r4 = r2.f80109d     // Catch: java.lang.Throwable -> L2a
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
                int r1 = r2.f80116k     // Catch: java.lang.Throwable -> L2a
                int r1 = r1 + r0
                r2.f80116k = r1     // Catch: java.lang.Throwable -> L2a
                int r4 = r4.length     // Catch: java.lang.Throwable -> L2a
                if (r1 != r4) goto L27
            L25:
                r2.f80113h = r0     // Catch: java.lang.Throwable -> L2a
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
            L35:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.observable.t.b.e(int, java.lang.Throwable):void");
        }

        /* JADX WARN: Multi-variable type inference failed */
        void h(int index, T item) {
            boolean z9;
            synchronized (this) {
                Object[] objArr = this.f80109d;
                if (objArr == null) {
                    return;
                }
                Object obj = objArr[index];
                int i4 = this.f80115j;
                if (obj == null) {
                    i4++;
                    this.f80115j = i4;
                }
                objArr[index] = item;
                if (i4 == objArr.length) {
                    this.f80110e.offer(objArr.clone());
                    z9 = true;
                } else {
                    z9 = false;
                }
                if (z9) {
                    c();
                }
            }
        }

        public void i(io.reactivex.rxjava3.core.l0<? extends T>[] sources) {
            a<T, R>[] aVarArr = this.f80108c;
            int length = aVarArr.length;
            this.f80106a.onSubscribe(this);
            for (int i4 = 0; i4 < length && !this.f80113h && !this.f80112g; i4++) {
                sources[i4].a(aVarArr[i4]);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80112g;
        }
    }

    public t(io.reactivex.rxjava3.core.l0<? extends T>[] sources, Iterable<? extends io.reactivex.rxjava3.core.l0<? extends T>> sourcesIterable, q7.o<? super Object[], ? extends R> combiner, int bufferSize, boolean delayError) {
        this.f80097a = sources;
        this.f80098b = sourcesIterable;
        this.f80099c = combiner;
        this.f80100d = bufferSize;
        this.f80101e = delayError;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        int length;
        io.reactivex.rxjava3.core.l0<? extends T>[] l0VarArr = this.f80097a;
        if (l0VarArr == null) {
            l0VarArr = new io.reactivex.rxjava3.core.l0[8];
            try {
                length = 0;
                for (io.reactivex.rxjava3.core.l0<? extends T> l0Var : this.f80098b) {
                    if (length == l0VarArr.length) {
                        io.reactivex.rxjava3.core.l0<? extends T>[] l0VarArr2 = new io.reactivex.rxjava3.core.l0[(length >> 2) + length];
                        System.arraycopy(l0VarArr, 0, l0VarArr2, 0, length);
                        l0VarArr = l0VarArr2;
                    }
                    int i4 = length + 1;
                    Objects.requireNonNull(l0Var, "The Iterator returned a null ObservableSource");
                    l0VarArr[length] = l0Var;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            length = l0VarArr.length;
        }
        int i10 = length;
        if (i10 == 0) {
            EmptyDisposable.complete(observer);
        } else {
            new b(observer, this.f80099c, i10, this.f80100d, this.f80101e).i(l0VarArr);
        }
    }
}
