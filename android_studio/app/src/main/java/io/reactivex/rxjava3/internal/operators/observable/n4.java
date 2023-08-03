package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: ObservableWithLatestFromMany.java */
/* loaded from: classes4.dex */
public final class n4<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {
    @p7.f

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<?>[] f79846b;
    @p7.f

    /* renamed from: c  reason: collision with root package name */
    final Iterable<? extends io.reactivex.rxjava3.core.l0<?>> f79847c;
    @p7.e

    /* renamed from: d  reason: collision with root package name */
    final q7.o<? super Object[], R> f79848d;

    /* compiled from: ObservableWithLatestFromMany.java */
    /* loaded from: classes4.dex */
    final class a implements q7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // q7.o
        public R apply(T t9) throws Throwable {
            R apply = n4.this.f79848d.apply(new Object[]{t9});
            Objects.requireNonNull(apply, "The combiner returned a null value");
            return apply;
        }
    }

    /* compiled from: ObservableWithLatestFromMany.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: h  reason: collision with root package name */
        private static final long f79850h = 1577321883966341961L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79851a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Object[], R> f79852b;

        /* renamed from: c  reason: collision with root package name */
        final c[] f79853c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceArray<Object> f79854d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f79855e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f79856f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79857g;

        b(io.reactivex.rxjava3.core.n0<? super R> actual, q7.o<? super Object[], R> combiner, int n9) {
            this.f79851a = actual;
            this.f79852b = combiner;
            c[] cVarArr = new c[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                cVarArr[i4] = new c(this, i4);
            }
            this.f79853c = cVarArr;
            this.f79854d = new AtomicReferenceArray<>(n9);
            this.f79855e = new AtomicReference<>();
            this.f79856f = new AtomicThrowable();
        }

        void a(int index) {
            c[] cVarArr = this.f79853c;
            for (int i4 = 0; i4 < cVarArr.length; i4++) {
                if (i4 != index) {
                    cVarArr[i4].a();
                }
            }
        }

        void b(int index, boolean nonEmpty) {
            if (nonEmpty) {
                return;
            }
            this.f79857g = true;
            a(index);
            io.reactivex.rxjava3.internal.util.h.a(this.f79851a, this, this.f79856f);
        }

        void c(int index, Throwable t9) {
            this.f79857g = true;
            DisposableHelper.dispose(this.f79855e);
            a(index);
            io.reactivex.rxjava3.internal.util.h.c(this.f79851a, t9, this, this.f79856f);
        }

        void d(int index, Object o9) {
            this.f79854d.set(index, o9);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this.f79855e);
            for (c cVar : this.f79853c) {
                cVar.a();
            }
        }

        void e(io.reactivex.rxjava3.core.l0<?>[] others, int n9) {
            c[] cVarArr = this.f79853c;
            AtomicReference<io.reactivex.rxjava3.disposables.f> atomicReference = this.f79855e;
            for (int i4 = 0; i4 < n9 && !DisposableHelper.isDisposed(atomicReference.get()) && !this.f79857g; i4++) {
                others[i4].a(cVarArr[i4]);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f79855e.get());
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79857g) {
                return;
            }
            this.f79857g = true;
            a(-1);
            io.reactivex.rxjava3.internal.util.h.a(this.f79851a, this, this.f79856f);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79857g) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79857g = true;
            a(-1);
            io.reactivex.rxjava3.internal.util.h.c(this.f79851a, t9, this, this.f79856f);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79857g) {
                return;
            }
            AtomicReferenceArray<Object> atomicReferenceArray = this.f79854d;
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
                R apply = this.f79852b.apply(objArr);
                Objects.requireNonNull(apply, "combiner returned a null value");
                io.reactivex.rxjava3.internal.util.h.e(this.f79851a, apply, this, this.f79856f);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this.f79855e, d4);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableWithLatestFromMany.java */
    /* loaded from: classes4.dex */
    public static final class c extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.n0<Object> {

        /* renamed from: d  reason: collision with root package name */
        private static final long f79858d = 3256684027868224024L;

        /* renamed from: a  reason: collision with root package name */
        final b<?, ?> f79859a;

        /* renamed from: b  reason: collision with root package name */
        final int f79860b;

        /* renamed from: c  reason: collision with root package name */
        boolean f79861c;

        c(b<?, ?> parent, int index) {
            this.f79859a = parent;
            this.f79860b = index;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79859a.b(this.f79860b, this.f79861c);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79859a.c(this.f79860b, t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(Object t9) {
            if (!this.f79861c) {
                this.f79861c = true;
            }
            this.f79859a.d(this.f79860b, t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }
    }

    public n4(@p7.e io.reactivex.rxjava3.core.l0<T> source, @p7.e io.reactivex.rxjava3.core.l0<?>[] otherArray, @p7.e q7.o<? super Object[], R> combiner) {
        super(source);
        this.f79846b = otherArray;
        this.f79847c = null;
        this.f79848d = combiner;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        int length;
        io.reactivex.rxjava3.core.l0<?>[] l0VarArr = this.f79846b;
        if (l0VarArr == null) {
            l0VarArr = new io.reactivex.rxjava3.core.l0[8];
            try {
                length = 0;
                for (io.reactivex.rxjava3.core.l0<?> l0Var : this.f79847c) {
                    if (length == l0VarArr.length) {
                        l0VarArr = (io.reactivex.rxjava3.core.l0[]) Arrays.copyOf(l0VarArr, (length >> 1) + length);
                    }
                    int i4 = length + 1;
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
        if (length == 0) {
            new z1(this.f79141a, new a()).d6(observer);
            return;
        }
        b bVar = new b(observer, this.f79848d, length);
        observer.onSubscribe(bVar);
        bVar.e(l0VarArr, length);
        this.f79141a.a(bVar);
    }

    public n4(@p7.e io.reactivex.rxjava3.core.l0<T> source, @p7.e Iterable<? extends io.reactivex.rxjava3.core.l0<?>> otherIterable, @p7.e q7.o<? super Object[], R> combiner) {
        super(source);
        this.f79846b = null;
        this.f79847c = otherIterable;
        this.f79848d = combiner;
    }
}
