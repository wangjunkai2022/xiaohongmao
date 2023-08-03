package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableZip.java */
/* loaded from: classes3.dex */
public final class l4<T, R> extends io.reactivex.z<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T>[] f74379a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.e0<? extends T>> f74380b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super Object[], ? extends R> f74381c;

    /* renamed from: d  reason: collision with root package name */
    final int f74382d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f74383e;

    /* compiled from: ObservableZip.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: g  reason: collision with root package name */
        private static final long f74384g = 2983708048395377667L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74385a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Object[], ? extends R> f74386b;

        /* renamed from: c  reason: collision with root package name */
        final b<T, R>[] f74387c;

        /* renamed from: d  reason: collision with root package name */
        final T[] f74388d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f74389e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f74390f;

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super Object[], ? extends R> oVar, int i4, boolean z9) {
            this.f74385a = g0Var;
            this.f74386b = oVar;
            this.f74387c = new b[i4];
            this.f74388d = (T[]) new Object[i4];
            this.f74389e = z9;
        }

        void a() {
            d();
            b();
        }

        void b() {
            for (b<T, R> bVar : this.f74387c) {
                bVar.a();
            }
        }

        boolean c(boolean z9, boolean z10, io.reactivex.g0<? super R> g0Var, boolean z11, b<?, ?> bVar) {
            if (this.f74390f) {
                a();
                return true;
            } else if (z9) {
                if (z11) {
                    if (z10) {
                        Throwable th = bVar.f74394d;
                        this.f74390f = true;
                        a();
                        if (th != null) {
                            g0Var.onError(th);
                        } else {
                            g0Var.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = bVar.f74394d;
                if (th2 != null) {
                    this.f74390f = true;
                    a();
                    g0Var.onError(th2);
                    return true;
                } else if (z10) {
                    this.f74390f = true;
                    a();
                    g0Var.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void d() {
            for (b<T, R> bVar : this.f74387c) {
                bVar.f74392b.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74390f) {
                return;
            }
            this.f74390f = true;
            b();
            if (getAndIncrement() == 0) {
                d();
            }
        }

        public void e() {
            Throwable th;
            if (getAndIncrement() != 0) {
                return;
            }
            b<T, R>[] bVarArr = this.f74387c;
            io.reactivex.g0<? super R> g0Var = this.f74385a;
            T[] tArr = this.f74388d;
            boolean z9 = this.f74389e;
            int i4 = 1;
            while (true) {
                int i10 = 0;
                int i11 = 0;
                for (b<T, R> bVar : bVarArr) {
                    if (tArr[i11] == null) {
                        boolean z10 = bVar.f74393c;
                        T poll = bVar.f74392b.poll();
                        boolean z11 = poll == null;
                        if (c(z10, z11, g0Var, z9, bVar)) {
                            return;
                        }
                        if (z11) {
                            i10++;
                        } else {
                            tArr[i11] = poll;
                        }
                    } else if (bVar.f74393c && !z9 && (th = bVar.f74394d) != null) {
                        this.f74390f = true;
                        a();
                        g0Var.onError(th);
                        return;
                    }
                    i11++;
                }
                if (i10 != 0) {
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                } else {
                    try {
                        g0Var.onNext((Object) io.reactivex.internal.functions.b.g(this.f74386b.apply(tArr.clone()), "The zipper returned a null value"));
                        Arrays.fill(tArr, (Object) null);
                    } catch (Throwable th2) {
                        io.reactivex.exceptions.a.b(th2);
                        a();
                        g0Var.onError(th2);
                        return;
                    }
                }
            }
        }

        public void h(io.reactivex.e0<? extends T>[] e0VarArr, int i4) {
            b<T, R>[] bVarArr = this.f74387c;
            int length = bVarArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                bVarArr[i10] = new b<>(this, i4);
            }
            lazySet(0);
            this.f74385a.onSubscribe(this);
            for (int i11 = 0; i11 < length && !this.f74390f; i11++) {
                e0VarArr[i11].subscribe(bVarArr[i11]);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74390f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableZip.java */
    /* loaded from: classes3.dex */
    public static final class b<T, R> implements io.reactivex.g0<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T, R> f74391a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.queue.b<T> f74392b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f74393c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f74394d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74395e = new AtomicReference<>();

        b(a<T, R> aVar, int i4) {
            this.f74391a = aVar;
            this.f74392b = new io.reactivex.internal.queue.b<>(i4);
        }

        public void a() {
            DisposableHelper.dispose(this.f74395e);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74393c = true;
            this.f74391a.e();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74394d = th;
            this.f74393c = true;
            this.f74391a.e();
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            this.f74392b.offer(t9);
            this.f74391a.e();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f74395e, cVar);
        }
    }

    public l4(io.reactivex.e0<? extends T>[] e0VarArr, Iterable<? extends io.reactivex.e0<? extends T>> iterable, n7.o<? super Object[], ? extends R> oVar, int i4, boolean z9) {
        this.f74379a = e0VarArr;
        this.f74380b = iterable;
        this.f74381c = oVar;
        this.f74382d = i4;
        this.f74383e = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        int length;
        io.reactivex.e0<? extends T>[] e0VarArr = this.f74379a;
        if (e0VarArr == null) {
            e0VarArr = new io.reactivex.e0[8];
            length = 0;
            for (io.reactivex.e0<? extends T> e0Var : this.f74380b) {
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
        if (length == 0) {
            EmptyDisposable.complete(g0Var);
        } else {
            new a(g0Var, this.f74381c, length, this.f74383e).h(e0VarArr, this.f74382d);
        }
    }
}
