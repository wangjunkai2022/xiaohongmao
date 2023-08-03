package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableConcatArray.java */
/* loaded from: classes3.dex */
public final class e extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g[] f71325a;

    /* compiled from: CompletableConcatArray.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicInteger implements io.reactivex.d {

        /* renamed from: e  reason: collision with root package name */
        private static final long f71326e = -7965400327305809232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71327a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g[] f71328b;

        /* renamed from: c  reason: collision with root package name */
        int f71329c;

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f71330d = new SequentialDisposable();

        a(io.reactivex.d dVar, io.reactivex.g[] gVarArr) {
            this.f71327a = dVar;
            this.f71328b = gVarArr;
        }

        void a() {
            if (!this.f71330d.isDisposed() && getAndIncrement() == 0) {
                io.reactivex.g[] gVarArr = this.f71328b;
                while (!this.f71330d.isDisposed()) {
                    int i4 = this.f71329c;
                    this.f71329c = i4 + 1;
                    if (i4 == gVarArr.length) {
                        this.f71327a.onComplete();
                        return;
                    }
                    gVarArr[i4].d(this);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.d
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71327a.onError(th);
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f71330d.replace(cVar);
        }
    }

    public e(io.reactivex.g[] gVarArr) {
        this.f71325a = gVarArr;
    }

    @Override // io.reactivex.a
    public void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar, this.f71325a);
        dVar.onSubscribe(aVar.f71330d);
        aVar.a();
    }
}
