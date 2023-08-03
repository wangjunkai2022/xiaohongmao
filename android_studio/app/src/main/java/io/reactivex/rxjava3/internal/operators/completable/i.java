package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableDelay.java */
/* loaded from: classes4.dex */
public final class i extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76620a;

    /* renamed from: b  reason: collision with root package name */
    final long f76621b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f76622c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f76623d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f76624e;

    /* compiled from: CompletableDelay.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, Runnable, io.reactivex.rxjava3.disposables.f {

        /* renamed from: g  reason: collision with root package name */
        private static final long f76625g = 465972761105851022L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76626a;

        /* renamed from: b  reason: collision with root package name */
        final long f76627b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f76628c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f76629d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f76630e;

        /* renamed from: f  reason: collision with root package name */
        Throwable f76631f;

        a(io.reactivex.rxjava3.core.d downstream, long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean delayError) {
            this.f76626a = downstream;
            this.f76627b = delay;
            this.f76628c = unit;
            this.f76629d = scheduler;
            this.f76630e = delayError;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            DisposableHelper.replace(this, this.f76629d.g(this, this.f76627b, this.f76628c));
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(final Throwable e4) {
            this.f76631f = e4;
            DisposableHelper.replace(this, this.f76629d.g(this, this.f76630e ? this.f76627b : 0L, this.f76628c));
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f76626a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f76631f;
            this.f76631f = null;
            if (th != null) {
                this.f76626a.onError(th);
            } else {
                this.f76626a.onComplete();
            }
        }
    }

    public i(io.reactivex.rxjava3.core.g source, long delay, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean delayError) {
        this.f76620a = source;
        this.f76621b = delay;
        this.f76622c = unit;
        this.f76623d = scheduler;
        this.f76624e = delayError;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        this.f76620a.d(new a(observer, this.f76621b, this.f76622c, this.f76623d, this.f76624e));
    }
}
