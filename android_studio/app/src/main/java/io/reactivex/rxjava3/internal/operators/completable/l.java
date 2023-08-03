package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableDoFinally.java */
/* loaded from: classes4.dex */
public final class l extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76660a;

    /* renamed from: b  reason: collision with root package name */
    final q7.a f76661b;

    /* compiled from: CompletableDoFinally.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicInteger implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76662d = 4109457741734051389L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76663a;

        /* renamed from: b  reason: collision with root package name */
        final q7.a f76664b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76665c;

        a(io.reactivex.rxjava3.core.d actual, q7.a onFinally) {
            this.f76663a = actual;
            this.f76664b = onFinally;
        }

        void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f76664b.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76665c.dispose();
            a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76665c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76663a.onComplete();
            a();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable t9) {
            this.f76663a.onError(t9);
            a();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76665c, d4)) {
                this.f76665c = d4;
                this.f76663a.onSubscribe(this);
            }
        }
    }

    public l(io.reactivex.rxjava3.core.g source, q7.a onFinally) {
        this.f76660a = source;
        this.f76661b = onFinally;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f76660a.d(new a(observer, this.f76661b));
    }
}
