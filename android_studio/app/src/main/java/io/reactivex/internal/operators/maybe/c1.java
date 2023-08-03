package io.reactivex.internal.operators.maybe;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;

/* compiled from: MaybePeek.java */
/* loaded from: classes3.dex */
public final class c1<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super io.reactivex.disposables.c> f73222b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super T> f73223c;

    /* renamed from: d  reason: collision with root package name */
    final n7.g<? super Throwable> f73224d;

    /* renamed from: e  reason: collision with root package name */
    final n7.a f73225e;

    /* renamed from: f  reason: collision with root package name */
    final n7.a f73226f;

    /* renamed from: g  reason: collision with root package name */
    final n7.a f73227g;

    /* compiled from: MaybePeek.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73228a;

        /* renamed from: b  reason: collision with root package name */
        final c1<T> f73229b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f73230c;

        a(io.reactivex.t<? super T> tVar, c1<T> c1Var) {
            this.f73228a = tVar;
            this.f73229b = c1Var;
        }

        void a() {
            try {
                this.f73229b.f73226f.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        void b(Throwable th) {
            try {
                this.f73229b.f73224d.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f73230c = DisposableHelper.DISPOSED;
            this.f73228a.onError(th);
            a();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            try {
                this.f73229b.f73227g.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
            this.f73230c.dispose();
            this.f73230c = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73230c.isDisposed();
        }

        @Override // io.reactivex.t
        public void onComplete() {
            io.reactivex.disposables.c cVar = this.f73230c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper) {
                return;
            }
            try {
                this.f73229b.f73225e.run();
                this.f73230c = disposableHelper;
                this.f73228a.onComplete();
                a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                b(th);
            }
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            if (this.f73230c == DisposableHelper.DISPOSED) {
                io.reactivex.plugins.a.Y(th);
            } else {
                b(th);
            }
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f73230c, cVar)) {
                try {
                    this.f73229b.f73222b.accept(cVar);
                    this.f73230c = cVar;
                    this.f73228a.onSubscribe(this);
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cVar.dispose();
                    this.f73230c = DisposableHelper.DISPOSED;
                    EmptyDisposable.error(th, this.f73228a);
                }
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            io.reactivex.disposables.c cVar = this.f73230c;
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (cVar == disposableHelper) {
                return;
            }
            try {
                this.f73229b.f73223c.accept(t9);
                this.f73230c = disposableHelper;
                this.f73228a.onSuccess(t9);
                a();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                b(th);
            }
        }
    }

    public c1(io.reactivex.w<T> wVar, n7.g<? super io.reactivex.disposables.c> gVar, n7.g<? super T> gVar2, n7.g<? super Throwable> gVar3, n7.a aVar, n7.a aVar2, n7.a aVar3) {
        super(wVar);
        this.f73222b = gVar;
        this.f73223c = gVar2;
        this.f73224d = gVar3;
        this.f73225e = aVar;
        this.f73226f = aVar2;
        this.f73227g = aVar3;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this));
    }
}
