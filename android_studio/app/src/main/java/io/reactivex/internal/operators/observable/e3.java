package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: ObservableSingleSingle.java */
/* loaded from: classes3.dex */
public final class e3<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<? extends T> f74037a;

    /* renamed from: b  reason: collision with root package name */
    final T f74038b;

    /* compiled from: ObservableSingleSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f74039a;

        /* renamed from: b  reason: collision with root package name */
        final T f74040b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74041c;

        /* renamed from: d  reason: collision with root package name */
        T f74042d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74043e;

        a(io.reactivex.l0<? super T> l0Var, T t9) {
            this.f74039a = l0Var;
            this.f74040b = t9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74041c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74041c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74043e) {
                return;
            }
            this.f74043e = true;
            T t9 = this.f74042d;
            this.f74042d = null;
            if (t9 == null) {
                t9 = this.f74040b;
            }
            if (t9 != null) {
                this.f74039a.onSuccess(t9);
            } else {
                this.f74039a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74043e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74043e = true;
            this.f74039a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74043e) {
                return;
            }
            if (this.f74042d != null) {
                this.f74043e = true;
                this.f74041c.dispose();
                this.f74039a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f74042d = t9;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74041c, cVar)) {
                this.f74041c = cVar;
                this.f74039a.onSubscribe(this);
            }
        }
    }

    public e3(io.reactivex.e0<? extends T> e0Var, T t9) {
        this.f74037a = e0Var;
        this.f74038b = t9;
    }

    @Override // io.reactivex.i0
    public void b1(io.reactivex.l0<? super T> l0Var) {
        this.f74037a.subscribe(new a(l0Var, this.f74038b));
    }
}
