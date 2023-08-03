package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: CompletablePeek.java */
/* loaded from: classes3.dex */
public final class i0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71368a;

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super io.reactivex.disposables.c> f71369b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super Throwable> f71370c;

    /* renamed from: d  reason: collision with root package name */
    final n7.a f71371d;

    /* renamed from: e  reason: collision with root package name */
    final n7.a f71372e;

    /* renamed from: f  reason: collision with root package name */
    final n7.a f71373f;

    /* renamed from: g  reason: collision with root package name */
    final n7.a f71374g;

    /* compiled from: CompletablePeek.java */
    /* loaded from: classes3.dex */
    final class a implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71375a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.disposables.c f71376b;

        a(io.reactivex.d dVar) {
            this.f71375a = dVar;
        }

        void a() {
            try {
                i0.this.f71373f.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            try {
                i0.this.f71374g.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f71376b.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f71376b.isDisposed();
        }

        @Override // io.reactivex.d
        public void onComplete() {
            if (this.f71376b == DisposableHelper.DISPOSED) {
                return;
            }
            try {
                i0.this.f71371d.run();
                i0.this.f71372e.run();
                this.f71375a.onComplete();
                a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f71375a.onError(th);
            }
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f71376b == DisposableHelper.DISPOSED) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            try {
                i0.this.f71370c.accept(th);
                i0.this.f71372e.run();
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f71375a.onError(th);
            a();
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            try {
                i0.this.f71369b.accept(cVar);
                if (DisposableHelper.validate(this.f71376b, cVar)) {
                    this.f71376b = cVar;
                    this.f71375a.onSubscribe(this);
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                cVar.dispose();
                this.f71376b = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f71375a);
            }
        }
    }

    public i0(io.reactivex.g gVar, n7.g<? super io.reactivex.disposables.c> gVar2, n7.g<? super Throwable> gVar3, n7.a aVar, n7.a aVar2, n7.a aVar3, n7.a aVar4) {
        this.f71368a = gVar;
        this.f71369b = gVar2;
        this.f71370c = gVar3;
        this.f71371d = aVar;
        this.f71372e = aVar2;
        this.f71373f = aVar3;
        this.f71374g = aVar4;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f71368a.d(new a(dVar));
    }
}
