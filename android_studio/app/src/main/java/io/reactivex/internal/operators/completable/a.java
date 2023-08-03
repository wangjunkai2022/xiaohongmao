package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: CompletableAmb.java */
/* loaded from: classes3.dex */
public final class a extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    private final io.reactivex.g[] f71264a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends io.reactivex.g> f71265b;

    /* compiled from: CompletableAmb.java */
    /* renamed from: io.reactivex.internal.operators.completable.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0541a implements io.reactivex.d {

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f71266a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.b f71267b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.d f71268c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f71269d;

        C0541a(AtomicBoolean atomicBoolean, io.reactivex.disposables.b bVar, io.reactivex.d dVar) {
            this.f71266a = atomicBoolean;
            this.f71267b = bVar;
            this.f71268c = dVar;
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f71266a.compareAndSet(false, true)) {
                this.f71267b.c(this.f71269d);
                this.f71267b.dispose();
                this.f71268c.onComplete();
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f71266a.compareAndSet(false, true)) {
                this.f71267b.c(this.f71269d);
                this.f71267b.dispose();
                this.f71268c.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71269d = cVar;
            this.f71267b.b(cVar);
        }
    }

    public a(io.reactivex.g[] gVarArr, Iterable<? extends io.reactivex.g> iterable) {
        this.f71264a = gVarArr;
        this.f71265b = iterable;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        int length;
        io.reactivex.g[] gVarArr = this.f71264a;
        if (gVarArr == null) {
            gVarArr = new io.reactivex.g[8];
            try {
                length = 0;
                for (io.reactivex.g gVar : this.f71265b) {
                    if (gVar == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), dVar);
                        return;
                    }
                    if (length == gVarArr.length) {
                        io.reactivex.g[] gVarArr2 = new io.reactivex.g[(length >> 2) + length];
                        System.arraycopy(gVarArr, 0, gVarArr2, 0, length);
                        gVarArr = gVarArr2;
                    }
                    int i4 = length + 1;
                    gVarArr[length] = gVar;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, dVar);
                return;
            }
        } else {
            length = gVarArr.length;
        }
        io.reactivex.disposables.b bVar = new io.reactivex.disposables.b();
        dVar.onSubscribe(bVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i10 = 0; i10 < length; i10++) {
            io.reactivex.g gVar2 = gVarArr[i10];
            if (bVar.isDisposed()) {
                return;
            }
            if (gVar2 == null) {
                Throwable nullPointerException = new NullPointerException("One of the sources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    bVar.dispose();
                    dVar.onError(nullPointerException);
                    return;
                }
                io.reactivex.plugins.a.Y(nullPointerException);
                return;
            }
            gVar2.d(new C0541a(atomicBoolean, bVar, dVar));
        }
        if (length == 0) {
            dVar.onComplete();
        }
    }
}
