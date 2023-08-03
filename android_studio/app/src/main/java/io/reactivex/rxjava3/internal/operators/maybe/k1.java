package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;

/* compiled from: MaybeTimeInterval.java */
/* loaded from: classes4.dex */
public final class k1<T> extends io.reactivex.rxjava3.core.v<io.reactivex.rxjava3.schedulers.d<T>> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<T> f78642a;

    /* renamed from: b  reason: collision with root package name */
    final TimeUnit f78643b;

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f78644c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f78645d;

    /* compiled from: MaybeTimeInterval.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super io.reactivex.rxjava3.schedulers.d<T>> f78646a;

        /* renamed from: b  reason: collision with root package name */
        final TimeUnit f78647b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f78648c;

        /* renamed from: d  reason: collision with root package name */
        final long f78649d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78650e;

        a(io.reactivex.rxjava3.core.y<? super io.reactivex.rxjava3.schedulers.d<T>> downstream, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean start) {
            this.f78646a = downstream;
            this.f78647b = unit;
            this.f78648c = scheduler;
            this.f78649d = start ? scheduler.e(unit) : 0L;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78650e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78650e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78646a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(@p7.e Throwable e4) {
            this.f78646a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78650e, d4)) {
                this.f78650e = d4;
                this.f78646a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(@p7.e T t9) {
            this.f78646a.onSuccess(new io.reactivex.rxjava3.schedulers.d(t9, this.f78648c.e(this.f78647b) - this.f78649d, this.f78647b));
        }
    }

    public k1(io.reactivex.rxjava3.core.b0<T> source, TimeUnit unit, io.reactivex.rxjava3.core.o0 scheduler, boolean start) {
        this.f78642a = source;
        this.f78643b = unit;
        this.f78644c = scheduler;
        this.f78645d = start;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(@p7.e io.reactivex.rxjava3.core.y<? super io.reactivex.rxjava3.schedulers.d<T>> observer) {
        this.f78642a.b(new a(observer, this.f78643b, this.f78644c, this.f78645d));
    }
}
