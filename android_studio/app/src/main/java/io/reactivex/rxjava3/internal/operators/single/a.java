package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: SingleAmb.java */
/* loaded from: classes4.dex */
public final class a<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    private final io.reactivex.rxjava3.core.v0<? extends T>[] f80697a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends io.reactivex.rxjava3.core.v0<? extends T>> f80698b;

    /* compiled from: SingleAmb.java */
    /* renamed from: io.reactivex.rxjava3.internal.operators.single.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0685a<T> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f80699a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80700b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicBoolean f80701c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80702d;

        C0685a(io.reactivex.rxjava3.core.s0<? super T> observer, io.reactivex.rxjava3.disposables.c set, AtomicBoolean winner) {
            this.f80700b = observer;
            this.f80699a = set;
            this.f80701c = winner;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f80701c.compareAndSet(false, true)) {
                this.f80699a.c(this.f80702d);
                this.f80699a.dispose();
                this.f80700b.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f80702d = d4;
            this.f80699a.b(d4);
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            if (this.f80701c.compareAndSet(false, true)) {
                this.f80699a.c(this.f80702d);
                this.f80699a.dispose();
                this.f80700b.onSuccess(value);
            }
        }
    }

    public a(io.reactivex.rxjava3.core.v0<? extends T>[] sources, Iterable<? extends io.reactivex.rxjava3.core.v0<? extends T>> sourcesIterable) {
        this.f80697a = sources;
        this.f80698b = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        int length;
        io.reactivex.rxjava3.core.v0<? extends T>[] v0VarArr = this.f80697a;
        if (v0VarArr == null) {
            v0VarArr = new io.reactivex.rxjava3.core.v0[8];
            try {
                length = 0;
                for (io.reactivex.rxjava3.core.v0<? extends T> v0Var : this.f80698b) {
                    if (v0Var == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == v0VarArr.length) {
                        io.reactivex.rxjava3.core.v0<? extends T>[] v0VarArr2 = new io.reactivex.rxjava3.core.v0[(length >> 2) + length];
                        System.arraycopy(v0VarArr, 0, v0VarArr2, 0, length);
                        v0VarArr = v0VarArr2;
                    }
                    int i4 = length + 1;
                    v0VarArr[length] = v0Var;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            length = v0VarArr.length;
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
        observer.onSubscribe(cVar);
        for (int i10 = 0; i10 < length; i10++) {
            io.reactivex.rxjava3.core.v0<? extends T> v0Var2 = v0VarArr[i10];
            if (cVar.isDisposed()) {
                return;
            }
            if (v0Var2 == null) {
                cVar.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the sources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    observer.onError(nullPointerException);
                    return;
                } else {
                    io.reactivex.rxjava3.plugins.a.Y(nullPointerException);
                    return;
                }
            }
            v0Var2.d(new C0685a(observer, cVar, atomicBoolean));
        }
    }
}
