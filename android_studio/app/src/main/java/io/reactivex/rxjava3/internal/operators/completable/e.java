package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableConcatArray.java */
/* loaded from: classes4.dex */
public final class e extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g[] f76592a;

    /* compiled from: CompletableConcatArray.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicInteger implements io.reactivex.rxjava3.core.d {

        /* renamed from: e  reason: collision with root package name */
        private static final long f76593e = -7965400327305809232L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76594a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.g[] f76595b;

        /* renamed from: c  reason: collision with root package name */
        int f76596c;

        /* renamed from: d  reason: collision with root package name */
        final SequentialDisposable f76597d = new SequentialDisposable();

        a(io.reactivex.rxjava3.core.d actual, io.reactivex.rxjava3.core.g[] sources) {
            this.f76594a = actual;
            this.f76595b = sources;
        }

        void a() {
            if (!this.f76597d.isDisposed() && getAndIncrement() == 0) {
                io.reactivex.rxjava3.core.g[] gVarArr = this.f76595b;
                while (!this.f76597d.isDisposed()) {
                    int i4 = this.f76596c;
                    this.f76596c = i4 + 1;
                    if (i4 == gVarArr.length) {
                        this.f76594a.onComplete();
                        return;
                    }
                    gVarArr[i4].d(this);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76594a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76597d.replace(d4);
        }
    }

    public e(io.reactivex.rxjava3.core.g[] sources) {
        this.f76592a = sources;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer, this.f76592a);
        observer.onSubscribe(aVar.f76597d);
        aVar.a();
    }
}
