package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableZip.java */
/* loaded from: classes4.dex */
public final class o4<T, R> extends io.reactivex.rxjava3.core.g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T>[] f79890a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.l0<? extends T>> f79891b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super Object[], ? extends R> f79892c;

    /* renamed from: d  reason: collision with root package name */
    final int f79893d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f79894e;

    /* compiled from: ObservableZip.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: g  reason: collision with root package name */
        private static final long f79895g = 2983708048395377667L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79896a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Object[], ? extends R> f79897b;

        /* renamed from: c  reason: collision with root package name */
        final b<T, R>[] f79898c;

        /* renamed from: d  reason: collision with root package name */
        final T[] f79899d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f79900e;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f79901f;

        a(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super Object[], ? extends R> zipper, int count, boolean delayError) {
            this.f79896a = actual;
            this.f79897b = zipper;
            this.f79898c = new b[count];
            this.f79899d = (T[]) new Object[count];
            this.f79900e = delayError;
        }

        void a() {
            d();
            b();
        }

        void b() {
            for (b<T, R> bVar : this.f79898c) {
                bVar.a();
            }
        }

        boolean c(boolean d4, boolean empty, io.reactivex.rxjava3.core.n0<? super R> a10, boolean delayError, b<?, ?> source) {
            if (this.f79901f) {
                a();
                return true;
            } else if (d4) {
                if (delayError) {
                    if (empty) {
                        Throwable th = source.f79905d;
                        this.f79901f = true;
                        a();
                        if (th != null) {
                            a10.onError(th);
                        } else {
                            a10.onComplete();
                        }
                        return true;
                    }
                    return false;
                }
                Throwable th2 = source.f79905d;
                if (th2 != null) {
                    this.f79901f = true;
                    a();
                    a10.onError(th2);
                    return true;
                } else if (empty) {
                    this.f79901f = true;
                    a();
                    a10.onComplete();
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }

        void d() {
            for (b<T, R> bVar : this.f79898c) {
                bVar.f79903b.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f79901f) {
                return;
            }
            this.f79901f = true;
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
            b<T, R>[] bVarArr = this.f79898c;
            io.reactivex.rxjava3.core.n0<? super R> n0Var = this.f79896a;
            T[] tArr = this.f79899d;
            boolean z9 = this.f79900e;
            int i4 = 1;
            while (true) {
                int i10 = 0;
                int i11 = 0;
                for (b<T, R> bVar : bVarArr) {
                    if (tArr[i11] == null) {
                        boolean z10 = bVar.f79904c;
                        T poll = bVar.f79903b.poll();
                        boolean z11 = poll == null;
                        if (c(z10, z11, n0Var, z9, bVar)) {
                            return;
                        }
                        if (z11) {
                            i10++;
                        } else {
                            tArr[i11] = poll;
                        }
                    } else if (bVar.f79904c && !z9 && (th = bVar.f79905d) != null) {
                        this.f79901f = true;
                        a();
                        n0Var.onError(th);
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
                        Object obj = (R) this.f79897b.apply(tArr.clone());
                        Objects.requireNonNull(obj, "The zipper returned a null value");
                        n0Var.onNext(obj);
                        Arrays.fill(tArr, (Object) null);
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        a();
                        n0Var.onError(th2);
                        return;
                    }
                }
            }
        }

        public void h(io.reactivex.rxjava3.core.l0<? extends T>[] sources, int bufferSize) {
            b<T, R>[] bVarArr = this.f79898c;
            int length = bVarArr.length;
            for (int i4 = 0; i4 < length; i4++) {
                bVarArr[i4] = new b<>(this, bufferSize);
            }
            lazySet(0);
            this.f79896a.onSubscribe(this);
            for (int i10 = 0; i10 < length && !this.f79901f; i10++) {
                sources[i10].a(bVarArr[i10]);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79901f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableZip.java */
    /* loaded from: classes4.dex */
    public static final class b<T, R> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T, R> f79902a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.queue.b<T> f79903b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f79904c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f79905d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79906e = new AtomicReference<>();

        b(a<T, R> parent, int bufferSize) {
            this.f79902a = parent;
            this.f79903b = new io.reactivex.rxjava3.internal.queue.b<>(bufferSize);
        }

        public void a() {
            DisposableHelper.dispose(this.f79906e);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79904c = true;
            this.f79902a.e();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79905d = t9;
            this.f79904c = true;
            this.f79902a.e();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79903b.offer(t9);
            this.f79902a.e();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79906e, d4);
        }
    }

    public o4(io.reactivex.rxjava3.core.l0<? extends T>[] sources, Iterable<? extends io.reactivex.rxjava3.core.l0<? extends T>> sourcesIterable, q7.o<? super Object[], ? extends R> zipper, int bufferSize, boolean delayError) {
        this.f79890a = sources;
        this.f79891b = sourcesIterable;
        this.f79892c = zipper;
        this.f79893d = bufferSize;
        this.f79894e = delayError;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        int length;
        io.reactivex.rxjava3.core.l0<? extends T>[] l0VarArr = this.f79890a;
        if (l0VarArr == null) {
            l0VarArr = new io.reactivex.rxjava3.core.l0[8];
            length = 0;
            for (io.reactivex.rxjava3.core.l0<? extends T> l0Var : this.f79891b) {
                if (length == l0VarArr.length) {
                    io.reactivex.rxjava3.core.l0<? extends T>[] l0VarArr2 = new io.reactivex.rxjava3.core.l0[(length >> 2) + length];
                    System.arraycopy(l0VarArr, 0, l0VarArr2, 0, length);
                    l0VarArr = l0VarArr2;
                }
                l0VarArr[length] = l0Var;
                length++;
            }
        } else {
            length = l0VarArr.length;
        }
        if (length == 0) {
            EmptyDisposable.complete(observer);
        } else {
            new a(observer, this.f79892c, length, this.f79894e).h(l0VarArr, this.f79893d);
        }
    }
}
