package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleObserveOn.java */
/* loaded from: classes4.dex */
public final class r0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80903a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.o0 f80904b;

    /* compiled from: SingleObserveOn.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.s0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80905e = 3528003840217436037L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80906a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.o0 f80907b;

        /* renamed from: c  reason: collision with root package name */
        T f80908c;

        /* renamed from: d  reason: collision with root package name */
        Throwable f80909d;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, io.reactivex.rxjava3.core.o0 scheduler) {
            this.f80906a = actual;
            this.f80907b = scheduler;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f80909d = e4;
            DisposableHelper.replace(this, this.f80907b.f(this));
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f80906a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f80908c = value;
            DisposableHelper.replace(this, this.f80907b.f(this));
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f80909d;
            if (th != null) {
                this.f80906a.onError(th);
            } else {
                this.f80906a.onSuccess((T) this.f80908c);
            }
        }
    }

    public r0(io.reactivex.rxjava3.core.v0<T> source, io.reactivex.rxjava3.core.o0 scheduler) {
        this.f80903a = source;
        this.f80904b = scheduler;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80903a.d(new a(observer, this.f80904b));
    }
}
