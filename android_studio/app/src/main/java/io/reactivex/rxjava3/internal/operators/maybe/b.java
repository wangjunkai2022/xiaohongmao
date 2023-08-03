package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MaybeAmb.java */
/* loaded from: classes4.dex */
public final class b<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    private final io.reactivex.rxjava3.core.b0<? extends T>[] f78464a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends io.reactivex.rxjava3.core.b0<? extends T>> f78465b;

    /* compiled from: MaybeAmb.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f78466a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicBoolean f78467b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f78468c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78469d;

        a(io.reactivex.rxjava3.core.y<? super T> downstream, io.reactivex.rxjava3.disposables.c set, AtomicBoolean winner) {
            this.f78466a = downstream;
            this.f78468c = set;
            this.f78467b = winner;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (this.f78467b.compareAndSet(false, true)) {
                this.f78468c.c(this.f78469d);
                this.f78468c.dispose();
                this.f78466a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f78467b.compareAndSet(false, true)) {
                this.f78468c.c(this.f78469d);
                this.f78468c.dispose();
                this.f78466a.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f78469d = d4;
            this.f78468c.b(d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            if (this.f78467b.compareAndSet(false, true)) {
                this.f78468c.c(this.f78469d);
                this.f78468c.dispose();
                this.f78466a.onSuccess(value);
            }
        }
    }

    public b(io.reactivex.rxjava3.core.b0<? extends T>[] sources, Iterable<? extends io.reactivex.rxjava3.core.b0<? extends T>> sourcesIterable) {
        this.f78464a = sources;
        this.f78465b = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        int length;
        io.reactivex.rxjava3.core.b0<? extends T>[] b0VarArr = this.f78464a;
        if (b0VarArr == null) {
            b0VarArr = new io.reactivex.rxjava3.core.b0[8];
            try {
                length = 0;
                for (io.reactivex.rxjava3.core.b0<? extends T> b0Var : this.f78465b) {
                    if (b0Var == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == b0VarArr.length) {
                        io.reactivex.rxjava3.core.b0<? extends T>[] b0VarArr2 = new io.reactivex.rxjava3.core.b0[(length >> 2) + length];
                        System.arraycopy(b0VarArr, 0, b0VarArr2, 0, length);
                        b0VarArr = b0VarArr2;
                    }
                    int i4 = length + 1;
                    b0VarArr[length] = b0Var;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            length = b0VarArr.length;
        }
        io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
        observer.onSubscribe(cVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i10 = 0; i10 < length; i10++) {
            io.reactivex.rxjava3.core.b0<? extends T> b0Var2 = b0VarArr[i10];
            if (cVar.isDisposed()) {
                return;
            }
            if (b0Var2 == null) {
                cVar.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the MaybeSources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    observer.onError(nullPointerException);
                    return;
                } else {
                    io.reactivex.rxjava3.plugins.a.Y(nullPointerException);
                    return;
                }
            }
            b0Var2.b(new a(observer, cVar, atomicBoolean));
        }
        if (length == 0) {
            observer.onComplete();
        }
    }
}
