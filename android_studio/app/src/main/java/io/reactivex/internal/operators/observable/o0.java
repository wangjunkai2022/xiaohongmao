package io.reactivex.internal.operators.observable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: ObservableDoOnEach.java */
/* loaded from: classes3.dex */
public final class o0<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final n7.g<? super T> f74522b;

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super Throwable> f74523c;

    /* renamed from: d  reason: collision with root package name */
    final n7.a f74524d;

    /* renamed from: e  reason: collision with root package name */
    final n7.a f74525e;

    /* compiled from: ObservableDoOnEach.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74526a;

        /* renamed from: b  reason: collision with root package name */
        final n7.g<? super T> f74527b;

        /* renamed from: c  reason: collision with root package name */
        final n7.g<? super Throwable> f74528c;

        /* renamed from: d  reason: collision with root package name */
        final n7.a f74529d;

        /* renamed from: e  reason: collision with root package name */
        final n7.a f74530e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f74531f;

        /* renamed from: g  reason: collision with root package name */
        boolean f74532g;

        a(io.reactivex.g0<? super T> g0Var, n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.a aVar2) {
            this.f74526a = g0Var;
            this.f74527b = gVar;
            this.f74528c = gVar2;
            this.f74529d = aVar;
            this.f74530e = aVar2;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74531f.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74531f.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74532g) {
                return;
            }
            try {
                this.f74529d.run();
                this.f74532g = true;
                this.f74526a.onComplete();
                try {
                    this.f74530e.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74532g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74532g = true;
            try {
                this.f74528c.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                th = new CompositeException(th, th2);
            }
            this.f74526a.onError(th);
            try {
                this.f74530e.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(th3);
            }
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74532g) {
                return;
            }
            try {
                this.f74527b.accept(t9);
                this.f74526a.onNext(t9);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74531f.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74531f, cVar)) {
                this.f74531f = cVar;
                this.f74526a.onSubscribe(this);
            }
        }
    }

    public o0(io.reactivex.e0<T> e0Var, n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.a aVar2) {
        super(e0Var);
        this.f74522b = gVar;
        this.f74523c = gVar2;
        this.f74524d = aVar;
        this.f74525e = aVar2;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74522b, this.f74523c, this.f74524d, this.f74525e));
    }
}
