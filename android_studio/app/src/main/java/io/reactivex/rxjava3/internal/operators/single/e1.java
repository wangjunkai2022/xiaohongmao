package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.operators.single.o0;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleZipArray.java */
/* loaded from: classes4.dex */
public final class e1<T, R> extends io.reactivex.rxjava3.core.p0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<? extends T>[] f80783a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Object[], ? extends R> f80784b;

    /* compiled from: SingleZipArray.java */
    /* loaded from: classes4.dex */
    final class a implements q7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // q7.o
        public R apply(T t9) throws Throwable {
            R apply = e1.this.f80784b.apply(new Object[]{t9});
            Objects.requireNonNull(apply, "The zipper returned a null value");
            return apply;
        }
    }

    /* compiled from: SingleZipArray.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80786e = -5556924161382950569L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super R> f80787a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Object[], ? extends R> f80788b;

        /* renamed from: c  reason: collision with root package name */
        final c<T>[] f80789c;

        /* renamed from: d  reason: collision with root package name */
        final Object[] f80790d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(io.reactivex.rxjava3.core.s0<? super R> observer, int n9, q7.o<? super Object[], ? extends R> zipper) {
            super(n9);
            this.f80787a = observer;
            this.f80788b = zipper;
            c<T>[] cVarArr = new c[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                cVarArr[i4] = new c<>(this, i4);
            }
            this.f80789c = cVarArr;
            this.f80790d = new Object[n9];
        }

        void a(int index) {
            c<T>[] cVarArr = this.f80789c;
            int length = cVarArr.length;
            for (int i4 = 0; i4 < index; i4++) {
                cVarArr[i4].a();
            }
            while (true) {
                index++;
                if (index >= length) {
                    return;
                }
                cVarArr[index].a();
            }
        }

        void b(Throwable ex, int index) {
            if (getAndSet(0) > 0) {
                a(index);
                this.f80787a.onError(ex);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        void c(T value, int index) {
            this.f80790d[index] = value;
            if (decrementAndGet() == 0) {
                try {
                    R apply = this.f80788b.apply(this.f80790d);
                    Objects.requireNonNull(apply, "The zipper returned a null value");
                    this.f80787a.onSuccess(apply);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f80787a.onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (c<T> cVar : this.f80789c) {
                    cVar.a();
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() <= 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SingleZipArray.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f80791c = 3323743579927613702L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, ?> f80792a;

        /* renamed from: b  reason: collision with root package name */
        final int f80793b;

        c(b<T, ?> parent, int index) {
            this.f80792a = parent;
            this.f80793b = index;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80792a.b(e4, this.f80793b);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80792a.c(value, this.f80793b);
        }
    }

    public e1(io.reactivex.rxjava3.core.v0<? extends T>[] sources, q7.o<? super Object[], ? extends R> zipper) {
        this.f80783a = sources;
        this.f80784b = zipper;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super R> observer) {
        io.reactivex.rxjava3.core.v0<? extends T>[] v0VarArr = this.f80783a;
        int length = v0VarArr.length;
        if (length == 1) {
            v0VarArr[0].d(new o0.a(observer, new a()));
            return;
        }
        b bVar = new b(observer, length, this.f80784b);
        observer.onSubscribe(bVar);
        for (int i4 = 0; i4 < length && !bVar.isDisposed(); i4++) {
            io.reactivex.rxjava3.core.v0<? extends T> v0Var = v0VarArr[i4];
            if (v0Var == null) {
                bVar.b(new NullPointerException("One of the sources is null"), i4);
                return;
            }
            v0Var.d(bVar.f80789c[i4]);
        }
    }
}
