package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: SingleAmb.java */
/* loaded from: classes4.dex */
public final class a<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final io.reactivex.o0<? extends T>[] f75317a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends io.reactivex.o0<? extends T>> f75318b;

    /* compiled from: SingleAmb.java */
    /* renamed from: io.reactivex.internal.operators.single.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0606a<T> implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.disposables.b f75319a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75320b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f75321c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f75322d;

        C0606a(io.reactivex.l0<? super T> l0Var, io.reactivex.disposables.b bVar, AtomicBoolean atomicBoolean) {
            this.f75320b = l0Var;
            this.f75319a = bVar;
            this.f75321c = atomicBoolean;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            if (this.f75321c.compareAndSet(false, true)) {
                this.f75319a.c(this.f75322d);
                this.f75319a.dispose();
                this.f75320b.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75322d = cVar;
            this.f75319a.b(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            if (this.f75321c.compareAndSet(false, true)) {
                this.f75319a.c(this.f75322d);
                this.f75319a.dispose();
                this.f75320b.onSuccess(t9);
            }
        }
    }

    public a(io.reactivex.o0<? extends T>[] o0VarArr, Iterable<? extends io.reactivex.o0<? extends T>> iterable) {
        this.f75317a = o0VarArr;
        this.f75318b = iterable;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        int length;
        io.reactivex.o0<? extends T>[] o0VarArr = this.f75317a;
        if (o0VarArr == null) {
            o0VarArr = new io.reactivex.o0[8];
            try {
                length = 0;
                for (io.reactivex.o0<? extends T> o0Var : this.f75318b) {
                    if (o0Var == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), l0Var);
                        return;
                    }
                    if (length == o0VarArr.length) {
                        io.reactivex.o0<? extends T>[] o0VarArr2 = new io.reactivex.o0[(length >> 2) + length];
                        System.arraycopy(o0VarArr, 0, o0VarArr2, 0, length);
                        o0VarArr = o0VarArr2;
                    }
                    int i4 = length + 1;
                    o0VarArr[length] = o0Var;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, l0Var);
                return;
            }
        } else {
            length = o0VarArr.length;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        io.reactivex.disposables.b bVar = new io.reactivex.disposables.b();
        l0Var.onSubscribe(bVar);
        for (int i10 = 0; i10 < length; i10++) {
            io.reactivex.o0<? extends T> o0Var2 = o0VarArr[i10];
            if (bVar.isDisposed()) {
                return;
            }
            if (o0Var2 == null) {
                bVar.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    l0Var.onError(nullPointerException);
                    return;
                } else {
                    io.reactivex.plugins.a.Y(nullPointerException);
                    return;
                }
            }
            o0Var2.d(new C0606a(l0Var, bVar, atomicBoolean));
        }
    }
}
