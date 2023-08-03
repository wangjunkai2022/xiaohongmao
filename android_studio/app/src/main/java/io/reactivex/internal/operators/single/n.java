package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: SingleDoAfterTerminate.java */
/* loaded from: classes4.dex */
public final class n<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<T> f75441a;

    /* renamed from: b  reason: collision with root package name */
    final n7.a f75442b;

    /* compiled from: SingleDoAfterTerminate.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.l0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75443a;

        /* renamed from: b  reason: collision with root package name */
        final n7.a f75444b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f75445c;

        a(io.reactivex.l0<? super T> l0Var, n7.a aVar) {
            this.f75443a = l0Var;
            this.f75444b = aVar;
        }

        private void a() {
            try {
                this.f75444b.run();
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                io.reactivex.plugins.a.Y(th);
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75445c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75445c.isDisposed();
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            this.f75443a.onError(th);
            a();
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f75445c, cVar)) {
                this.f75445c = cVar;
                this.f75443a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75443a.onSuccess(t9);
            a();
        }
    }

    public n(io.reactivex.o0<T> o0Var, n7.a aVar) {
        this.f75441a = o0Var;
        this.f75442b = aVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75441a.d(new a(l0Var, this.f75442b));
    }
}
