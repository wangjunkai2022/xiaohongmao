package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MaybeAmb.java */
/* loaded from: classes3.dex */
public final class b<T> extends io.reactivex.q<T> {

    /* renamed from: a  reason: collision with root package name */
    private final io.reactivex.w<? extends T>[] f73186a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends io.reactivex.w<? extends T>> f73187b;

    /* compiled from: MaybeAmb.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73188a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicBoolean f73189b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.disposables.b f73190c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f73191d;

        a(io.reactivex.t<? super T> tVar, io.reactivex.disposables.b bVar, AtomicBoolean atomicBoolean) {
            this.f73188a = tVar;
            this.f73190c = bVar;
            this.f73189b = atomicBoolean;
        }

        @Override // io.reactivex.t
        public void onComplete() {
            if (this.f73189b.compareAndSet(false, true)) {
                this.f73190c.c(this.f73191d);
                this.f73190c.dispose();
                this.f73188a.onComplete();
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            if (this.f73189b.compareAndSet(false, true)) {
                this.f73190c.c(this.f73191d);
                this.f73190c.dispose();
                this.f73188a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f73191d = cVar;
            this.f73190c.b(cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            if (this.f73189b.compareAndSet(false, true)) {
                this.f73190c.c(this.f73191d);
                this.f73190c.dispose();
                this.f73188a.onSuccess(t9);
            }
        }
    }

    public b(io.reactivex.w<? extends T>[] wVarArr, Iterable<? extends io.reactivex.w<? extends T>> iterable) {
        this.f73186a = wVarArr;
        this.f73187b = iterable;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        int length;
        io.reactivex.w<? extends T>[] wVarArr = this.f73186a;
        if (wVarArr == null) {
            wVarArr = new io.reactivex.w[8];
            try {
                length = 0;
                for (io.reactivex.w<? extends T> wVar : this.f73187b) {
                    if (wVar == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), tVar);
                        return;
                    }
                    if (length == wVarArr.length) {
                        io.reactivex.w<? extends T>[] wVarArr2 = new io.reactivex.w[(length >> 2) + length];
                        System.arraycopy(wVarArr, 0, wVarArr2, 0, length);
                        wVarArr = wVarArr2;
                    }
                    int i4 = length + 1;
                    wVarArr[length] = wVar;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, tVar);
                return;
            }
        } else {
            length = wVarArr.length;
        }
        io.reactivex.disposables.b bVar = new io.reactivex.disposables.b();
        tVar.onSubscribe(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i10 = 0; i10 < length; i10++) {
            io.reactivex.w<? extends T> wVar2 = wVarArr[i10];
            if (bVar.isDisposed()) {
                return;
            }
            if (wVar2 == null) {
                bVar.dispose();
                NullPointerException nullPointerException = new NullPointerException("One of the MaybeSources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    tVar.onError(nullPointerException);
                    return;
                } else {
                    io.reactivex.plugins.a.Y(nullPointerException);
                    return;
                }
            }
            wVar2.b(new a(tVar, bVar, atomicBoolean));
        }
        if (length == 0) {
            tVar.onComplete();
        }
    }
}
