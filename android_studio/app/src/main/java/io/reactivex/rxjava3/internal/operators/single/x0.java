package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: SingleTimeInterval.java */
/* loaded from: classes4.dex */
public final class x0<T> extends io.reactivex.rxjava3.core.p0<io.reactivex.rxjava3.schedulers.d<T>> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80963a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f80964b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80965c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f80966d;

    /* compiled from: SingleTimeInterval.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super io.reactivex.rxjava3.schedulers.d<T>> f80967a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f80968b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f80969c;

        /* renamed from: d  reason: collision with root package name */
        final long f80970d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80971e;

        a(io.reactivex.rxjava3.core.s0<? super io.reactivex.rxjava3.schedulers.d<T>> downstream, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean start) {
            this.f80967a = downstream;
            this.f80968b = unit;
            this.f80969c = scheduler;
            this.f80970d = start ? scheduler.e(unit) : 0L;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80971e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80971e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(@p7.e Throwable e4) {
            this.f80967a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80971e, d4)) {
                this.f80971e = d4;
                this.f80967a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(@p7.e T t9) {
            this.f80967a.onSuccess(new io.reactivex.rxjava3.schedulers.d(t9, this.f80969c.e(this.f80968b) - this.f80970d, this.f80968b));
        }
    }

    public x0(io.reactivex.rxjava3.core.v0<T> source, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean start) {
        this.f80963a = source;
        this.f80964b = unit;
        this.f80965c = scheduler;
        this.f80966d = start;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(@p7.e io.reactivex.rxjava3.core.s0<? super io.reactivex.rxjava3.schedulers.d<T>> observer) {
        this.f80963a.d(new a(observer, this.f80964b, this.f80965c, this.f80966d));
    }
}
