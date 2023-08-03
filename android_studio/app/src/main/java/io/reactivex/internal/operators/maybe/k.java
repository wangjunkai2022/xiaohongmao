package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeDelay.java */
/* loaded from: classes3.dex */
public final class k<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f73358b;

    /* renamed from: c  reason: collision with root package name */
    final TimeUnit f73359c;

    /* renamed from: d  reason: collision with root package name */
    final io.reactivex.h0 f73360d;

    /* compiled from: MaybeDelay.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: g  reason: collision with root package name */
        private static final long f73361g = 5566860102500855068L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73362a;

        /* renamed from: b  reason: collision with root package name */
        final long f73363b;

        /* renamed from: c  reason: collision with root package name */
        final TimeUnit f73364c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.h0 f73365d;

        /* renamed from: e  reason: collision with root package name */
        T f73366e;

        /* renamed from: f  reason: collision with root package name */
        Throwable f73367f;

        a(io.reactivex.t<? super T> tVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
            this.f73362a = tVar;
            this.f73363b = j4;
            this.f73364c = timeUnit;
            this.f73365d = h0Var;
        }

        void a() {
            DisposableHelper.replace(this, this.f73365d.g(this, this.f73363b, this.f73364c));
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73367f = th;
            a();
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f73362a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73366e = t9;
            a();
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable th = this.f73367f;
            if (th != null) {
                this.f73362a.onError(th);
                return;
            }
            T t9 = this.f73366e;
            if (t9 != null) {
                this.f73362a.onSuccess(t9);
            } else {
                this.f73362a.onComplete();
            }
        }
    }

    public k(io.reactivex.w<T> wVar, long j4, TimeUnit timeUnit, io.reactivex.h0 h0Var) {
        super(wVar);
        this.f73358b = j4;
        this.f73359c = timeUnit;
        this.f73360d = h0Var;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73358b, this.f73359c, this.f73360d));
    }
}
