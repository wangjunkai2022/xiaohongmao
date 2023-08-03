package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: ObservableWithLatestFromMany.java */
/* loaded from: classes3.dex */
public final class k4<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {
    @m7.f

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.e0<?>[] f74343b;
    @m7.f

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends io.reactivex.e0<?>> f74344c;
    @m7.e

    /* renamed from: d  reason: collision with root package name */
    final n7.o<? super Object[], R> f74345d;

    /* compiled from: ObservableWithLatestFromMany.java */
    /* loaded from: classes3.dex */
    final class a implements n7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // n7.o
        public R apply(T t9) throws Exception {
            return (R) io.reactivex.internal.functions.b.g(k4.this.f74345d.apply(new Object[]{t9}), "The combiner returned a null value");
        }
    }

    /* compiled from: ObservableWithLatestFromMany.java */
    /* loaded from: classes3.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: h  reason: collision with root package name */
        private static final long f74347h = 1577321883966341961L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74348a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Object[], R> f74349b;

        /* renamed from: c  reason: collision with root package name */
        final c[] f74350c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceArray<Object> f74351d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.disposables.c> f74352e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f74353f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f74354g;

        b(io.reactivex.g0<? super R> g0Var, n7.o<? super Object[], R> oVar, int i4) {
            this.f74348a = g0Var;
            this.f74349b = oVar;
            c[] cVarArr = new c[i4];
            for (int i10 = 0; i10 < i4; i10++) {
                cVarArr[i10] = new c(this, i10);
            }
            this.f74350c = cVarArr;
            this.f74351d = new AtomicReferenceArray<>(i4);
            this.f74352e = new AtomicReference<>();
            this.f74353f = new AtomicThrowable();
        }

        void a(int i4) {
            c[] cVarArr = this.f74350c;
            for (int i10 = 0; i10 < cVarArr.length; i10++) {
                if (i10 != i4) {
                    cVarArr[i10].a();
                }
            }
        }

        void b(int i4, boolean z9) {
            if (z9) {
                return;
            }
            this.f74354g = true;
            a(i4);
            io.reactivex.internal.util.h.a(this.f74348a, this, this.f74353f);
        }

        void c(int i4, Throwable th) {
            this.f74354g = true;
            DisposableHelper.dispose(this.f74352e);
            a(i4);
            io.reactivex.internal.util.h.c(this.f74348a, th, this, this.f74353f);
        }

        void d(int i4, Object obj) {
            this.f74351d.set(i4, obj);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this.f74352e);
            for (c cVar : this.f74350c) {
                cVar.a();
            }
        }

        void e(io.reactivex.e0<?>[] e0VarArr, int i4) {
            c[] cVarArr = this.f74350c;
            AtomicReference<io.reactivex.disposables.c> atomicReference = this.f74352e;
            for (int i10 = 0; i10 < i4 && !DisposableHelper.isDisposed(atomicReference.get()) && !this.f74354g; i10++) {
                e0VarArr[i10].subscribe(cVarArr[i10]);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f74352e.get());
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74354g) {
                return;
            }
            this.f74354g = true;
            a(-1);
            io.reactivex.internal.util.h.a(this.f74348a, this, this.f74353f);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74354g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74354g = true;
            a(-1);
            io.reactivex.internal.util.h.c(this.f74348a, th, this, this.f74353f);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74354g) {
                return;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f74351d;
            int length = atomicReferenceArray.length();
            Object[] objArr = new Object[length + 1];
            int i4 = 0;
            objArr[0] = t9;
            while (i4 < length) {
                Object obj = atomicReferenceArray.get(i4);
                if (obj == null) {
                    return;
                }
                i4++;
                objArr[i4] = obj;
            }
            try {
                io.reactivex.internal.util.h.e(this.f74348a, io.reactivex.internal.functions.b.g(this.f74349b.apply(objArr), "combiner returned a null value"), this, this.f74353f);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this.f74352e, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWithLatestFromMany.java */
    /* loaded from: classes3.dex */
    public static final class c extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<Object> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f74355d = 3256684027868224024L;

        /* renamed from: a  reason: collision with root package name */
        final b<?, ?> f74356a;

        /* renamed from: b  reason: collision with root package name */
        final int f74357b;

        /* renamed from: c  reason: collision with root package name */
        boolean f74358c;

        c(b<?, ?> bVar, int i4) {
            this.f74356a = bVar;
            this.f74357b = i4;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74356a.b(this.f74357b, this.f74358c);
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74356a.c(this.f74357b, th);
        }

        @Override // io.reactivex.g0
        public void onNext(Object obj) {
            if (!this.f74358c) {
                this.f74358c = true;
            }
            this.f74356a.d(this.f74357b, obj);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }
    }

    public k4(@m7.e io.reactivex.e0<T> e0Var, @m7.e io.reactivex.e0<?>[] e0VarArr, @m7.e n7.o<? super Object[], R> oVar) {
        super(e0Var);
        this.f74343b = e0VarArr;
        this.f74344c = null;
        this.f74345d = oVar;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        int length;
        io.reactivex.e0<?>[] e0VarArr = this.f74343b;
        if (e0VarArr == null) {
            e0VarArr = new io.reactivex.e0[8];
            try {
                length = 0;
                for (io.reactivex.e0<?> e0Var : this.f74344c) {
                    if (length == e0VarArr.length) {
                        e0VarArr = (io.reactivex.e0[]) Arrays.copyOf(e0VarArr, (length >> 1) + length);
                    }
                    int i4 = length + 1;
                    e0VarArr[length] = e0Var;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
                return;
            }
        } else {
            length = e0VarArr.length;
        }
        if (length == 0) {
            new v1(this.f73827a, new a()).subscribeActual(g0Var);
            return;
        }
        b bVar = new b(g0Var, this.f74345d, length);
        g0Var.onSubscribe(bVar);
        bVar.e(e0VarArr, length);
        this.f73827a.subscribe(bVar);
    }

    public k4(@m7.e io.reactivex.e0<T> e0Var, @m7.e Iterable<? extends io.reactivex.e0<?>> iterable, @m7.e n7.o<? super Object[], R> oVar) {
        super(e0Var);
        this.f74343b = null;
        this.f74344c = iterable;
        this.f74345d = oVar;
    }
}
