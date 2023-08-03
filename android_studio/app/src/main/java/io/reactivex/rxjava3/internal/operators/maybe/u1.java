package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.operators.maybe.w0;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeZipArray.java */
/* loaded from: classes4.dex */
public final class u1<T, R> extends io.reactivex.rxjava3.core.v<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T>[] f78774a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Object[], ? extends R> f78775b;

    /* compiled from: MaybeZipArray.java */
    /* loaded from: classes4.dex */
    final class a implements q7.o<T, R> {
        a() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // q7.o
        public R apply(T t9) throws Throwable {
            R apply = u1.this.f78775b.apply(new Object[]{t9});
            Objects.requireNonNull(apply, "The zipper returned a null value");
            return apply;
        }
    }

    /* compiled from: MaybeZipArray.java */
    /* loaded from: classes4.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f78777e = -5556924161382950569L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super R> f78778a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Object[], ? extends R> f78779b;

        /* renamed from: c  reason: collision with root package name */
        final c<T>[] f78780c;

        /* renamed from: d  reason: collision with root package name */
        final Object[] f78781d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(io.reactivex.rxjava3.core.y<? super R> observer, int n9, q7.o<? super Object[], ? extends R> zipper) {
            super(n9);
            this.f78778a = observer;
            this.f78779b = zipper;
            c<T>[] cVarArr = new c[n9];
            for (int i4 = 0; i4 < n9; i4++) {
                cVarArr[i4] = new c<>(this, i4);
            }
            this.f78780c = cVarArr;
            this.f78781d = new Object[n9];
        }

        void a(int index) {
            c<T>[] cVarArr = this.f78780c;
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

        void b(int index) {
            if (getAndSet(0) > 0) {
                a(index);
                this.f78778a.onComplete();
            }
        }

        void c(Throwable ex, int index) {
            if (getAndSet(0) > 0) {
                a(index);
                this.f78778a.onError(ex);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        void d(T value, int index) {
            this.f78781d[index] = value;
            if (decrementAndGet() == 0) {
                try {
                    R apply = this.f78779b.apply(this.f78781d);
                    Objects.requireNonNull(apply, "The zipper returned a null value");
                    this.f78778a.onSuccess(apply);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f78778a.onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (getAndSet(0) > 0) {
                for (c<T> cVar : this.f78780c) {
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
    /* compiled from: MaybeZipArray.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78782c = 3323743579927613702L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, ?> f78783a;

        /* renamed from: b  reason: collision with root package name */
        final int f78784b;

        c(b<T, ?> parent, int index) {
            this.f78783a = parent;
            this.f78784b = index;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78783a.b(this.f78784b);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78783a.c(e4, this.f78784b);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78783a.d(value, this.f78784b);
        }
    }

    public u1(io.reactivex.rxjava3.core.b0<? extends T>[] sources, q7.o<? super Object[], ? extends R> zipper) {
        this.f78774a = sources;
        this.f78775b = zipper;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super R> observer) {
        io.reactivex.rxjava3.core.b0<? extends T>[] b0VarArr = this.f78774a;
        int length = b0VarArr.length;
        if (length == 1) {
            b0VarArr[0].b(new w0.a(observer, new a()));
            return;
        }
        b bVar = new b(observer, length, this.f78775b);
        observer.onSubscribe(bVar);
        for (int i4 = 0; i4 < length && !bVar.isDisposed(); i4++) {
            io.reactivex.rxjava3.core.b0<? extends T> b0Var = b0VarArr[i4];
            if (b0Var == null) {
                bVar.c(new NullPointerException("One of the sources is null"), i4);
                return;
            }
            b0Var.b(bVar.f78780c[i4]);
        }
    }
}
