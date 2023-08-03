package io.reactivex.internal.operators.completable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableDelay.java */
/* loaded from: classes3.dex */
public final class i extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71356a;

    /* renamed from: b  reason: collision with root package name */
    final long f71357b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f71358c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f71359d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f71360e;

    /* compiled from: CompletableDelay.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, Runnable, io.reactivex.disposables.c {

        /* renamed from: g  reason: collision with root package name */
        private static final long f71361g = 465972761105851022L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71362a;

        /* renamed from: b  reason: collision with root package name */
        final long f71363b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f71364c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f71365d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f71366e;

        /* renamed from: f  reason: collision with root package name */
        Throwable f71367f;

        a(io.reactivex.d dVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z9) {
            this.f71362a = dVar;
            this.f71363b = j4;
            this.f71364c = timeUnit;
            this.f71365d = h0Var;
            this.f71366e = z9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            DisposableHelper.replace(this, this.f71365d.g(this, this.f71363b, this.f71364c));
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            this.f71367f = th;
            DisposableHelper.replace(this, this.f71365d.g(this, this.f71366e ? this.f71363b : 0L, this.f71364c));
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f71362a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f71367f;
            this.f71367f = null;
            if (th != null) {
                this.f71362a.onError(th);
            } else {
                this.f71362a.onComplete();
            }
        }
    }

    public i(io.reactivex.g gVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var, boolean z9) {
        this.f71356a = gVar;
        this.f71357b = j4;
        this.f71358c = timeUnit;
        this.f71359d = h0Var;
        this.f71360e = z9;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71356a.d(new a(dVar, this.f71357b, this.f71358c, this.f71359d, this.f71360e));
    }
}
