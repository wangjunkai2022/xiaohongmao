package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: CompletablePeek.java */
/* loaded from: classes4.dex */
public final class k0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76650a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super io.reactivex.rxjava3.disposables.f> f76651b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super Throwable> f76652c;

    /* renamed from: d  reason: collision with root package name */
    final q7.a f76653d;

    /* renamed from: e  reason: collision with root package name */
    final q7.a f76654e;

    /* renamed from: f  reason: collision with root package name */
    final q7.a f76655f;

    /* renamed from: g  reason: collision with root package name */
    final q7.a f76656g;

    /* compiled from: CompletablePeek.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76657a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76658b;

        a(io.reactivex.rxjava3.core.d downstream) {
            this.f76657a = downstream;
        }

        void a() {
            try {
                k0.this.f76655f.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            try {
                k0.this.f76656g.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
            this.f76658b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76658b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            if (this.f76658b == DisposableHelper.DISPOSED) {
                return;
            }
            try {
                k0.this.f76653d.run();
                k0.this.f76654e.run();
                this.f76657a.onComplete();
                a();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76657a.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f76658b == DisposableHelper.DISPOSED) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
                return;
            }
            try {
                k0.this.f76652c.accept(e4);
                k0.this.f76654e.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                e4 = new CompositeException(e4, th);
            }
            this.f76657a.onError(e4);
            a();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(final io.reactivex.rxjava3.disposables.f d4) {
            try {
                k0.this.f76651b.accept(d4);
                if (DisposableHelper.validate(this.f76658b, d4)) {
                    this.f76658b = d4;
                    this.f76657a.onSubscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                d4.dispose();
                this.f76658b = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f76657a);
            }
        }
    }

    public k0(io.reactivex.rxjava3.core.g source, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, q7.g<? super Throwable> onError, q7.a onComplete, q7.a onTerminate, q7.a onAfterTerminate, q7.a onDispose) {
        this.f76650a = source;
        this.f76651b = onSubscribe;
        this.f76652c = onError;
        this.f76653d = onComplete;
        this.f76654e = onTerminate;
        this.f76655f = onAfterTerminate;
        this.f76656g = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        this.f76650a.d(new a(observer));
    }
}
