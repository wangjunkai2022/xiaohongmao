package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: CompletableAmb.java */
/* loaded from: classes4.dex */
public final class a extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    private final io.reactivex.rxjava3.core.g[] f76530a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable<? extends io.reactivex.rxjava3.core.g> f76531b;

    /* compiled from: CompletableAmb.java */
    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0619a implements io.reactivex.rxjava3.core.d {

        /* renamed from: a  reason: collision with root package name */
        final AtomicBoolean f76532a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f76533b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76534c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76535d;

        C0619a(AtomicBoolean once, io.reactivex.rxjava3.disposables.c set, io.reactivex.rxjava3.core.d observer) {
            this.f76532a = once;
            this.f76533b = set;
            this.f76534c = observer;
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (this.f76532a.compareAndSet(false, true)) {
                this.f76533b.c(this.f76535d);
                this.f76533b.dispose();
                this.f76534c.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f76532a.compareAndSet(false, true)) {
                this.f76533b.c(this.f76535d);
                this.f76533b.dispose();
                this.f76534c.onError(e4);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76535d = d4;
            this.f76533b.b(d4);
        }
    }

    public a(io.reactivex.rxjava3.core.g[] sources, Iterable<? extends io.reactivex.rxjava3.core.g> sourcesIterable) {
        this.f76530a = sources;
        this.f76531b = sourcesIterable;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(final io.reactivex.rxjava3.core.d observer) {
        int length;
        io.reactivex.rxjava3.core.g[] gVarArr = this.f76530a;
        if (gVarArr == null) {
            gVarArr = new io.reactivex.rxjava3.core.g[8];
            try {
                length = 0;
                for (io.reactivex.rxjava3.core.g gVar : this.f76531b) {
                    if (gVar == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    if (length == gVarArr.length) {
                        io.reactivex.rxjava3.core.g[] gVarArr2 = new io.reactivex.rxjava3.core.g[(length >> 2) + length];
                        System.arraycopy(gVarArr, 0, gVarArr2, 0, length);
                        gVarArr = gVarArr2;
                    }
                    int i4 = length + 1;
                    gVarArr[length] = gVar;
                    length = i4;
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            length = gVarArr.length;
        }
        io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
        observer.onSubscribe(cVar);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        for (int i10 = 0; i10 < length; i10++) {
            io.reactivex.rxjava3.core.g gVar2 = gVarArr[i10];
            if (cVar.isDisposed()) {
                return;
            }
            if (gVar2 == null) {
                Throwable nullPointerException = new NullPointerException("One of the sources is null");
                if (atomicBoolean.compareAndSet(false, true)) {
                    cVar.dispose();
                    observer.onError(nullPointerException);
                    return;
                }
                io.reactivex.rxjava3.plugins.a.Y(nullPointerException);
                return;
            }
            gVar2.d(new C0619a(atomicBoolean, cVar, observer));
        }
        if (length == 0) {
            observer.onComplete();
        }
    }
}
