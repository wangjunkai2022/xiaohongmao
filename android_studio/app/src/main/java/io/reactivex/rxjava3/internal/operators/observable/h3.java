package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: ObservableSingleSingle.java */
/* loaded from: classes4.dex */
public final class h3<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79505a;

    /* renamed from: b  reason: collision with root package name */
    final T f79506b;

    /* compiled from: ObservableSingleSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f79507a;

        /* renamed from: b  reason: collision with root package name */
        final T f79508b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79509c;

        /* renamed from: d  reason: collision with root package name */
        T f79510d;

        /* renamed from: e  reason: collision with root package name */
        boolean f79511e;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, T defaultValue) {
            this.f79507a = actual;
            this.f79508b = defaultValue;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79509c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79509c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79511e) {
                return;
            }
            this.f79511e = true;
            T t9 = this.f79510d;
            this.f79510d = null;
            if (t9 == null) {
                t9 = this.f79508b;
            }
            if (t9 != null) {
                this.f79507a.onSuccess(t9);
            } else {
                this.f79507a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79511e) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79511e = true;
            this.f79507a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79511e) {
                return;
            }
            if (this.f79510d != null) {
                this.f79511e = true;
                this.f79509c.dispose();
                this.f79507a.onError(new IllegalArgumentException("Sequence contains more than one element!"));
                return;
            }
            this.f79510d = t9;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79509c, d4)) {
                this.f79509c = d4;
                this.f79507a.onSubscribe(this);
            }
        }
    }

    public h3(io.reactivex.rxjava3.core.l0<? extends T> source, T defaultValue) {
        this.f79505a = source;
        this.f79506b = defaultValue;
    }

    @Override // io.reactivex.rxjava3.core.p0
    public void M1(io.reactivex.rxjava3.core.s0<? super T> t9) {
        this.f79505a.a(new a(t9, this.f79506b));
    }
}
