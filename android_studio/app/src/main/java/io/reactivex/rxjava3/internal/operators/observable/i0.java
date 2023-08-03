package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* compiled from: ObservableDematerialize.java */
/* loaded from: classes4.dex */
public final class i0<T, R> extends io.reactivex.rxjava3.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.d0<R>> f79539b;

    /* compiled from: ObservableDematerialize.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super R> f79540a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.d0<R>> f79541b;

        /* renamed from: c  reason: collision with root package name */
        boolean f79542c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79543d;

        a(io.reactivex.rxjava3.core.n0<? super R> downstream, q7.o<? super T, ? extends io.reactivex.rxjava3.core.d0<R>> selector) {
            this.f79540a = downstream;
            this.f79541b = selector;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79543d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79543d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79542c) {
                return;
            }
            this.f79542c = true;
            this.f79540a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79542c) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79542c = true;
            this.f79540a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T item) {
            if (this.f79542c) {
                if (item instanceof io.reactivex.rxjava3.core.d0) {
                    io.reactivex.rxjava3.core.d0 d0Var = (io.reactivex.rxjava3.core.d0) item;
                    if (d0Var.g()) {
                        io.reactivex.rxjava3.plugins.a.Y(d0Var.d());
                        return;
                    }
                    return;
                }
                return;
            }
            try {
                io.reactivex.rxjava3.core.d0<R> apply = this.f79541b.apply(item);
                Objects.requireNonNull(apply, "The selector returned a null Notification");
                io.reactivex.rxjava3.core.d0<R> d0Var2 = apply;
                if (d0Var2.g()) {
                    this.f79543d.dispose();
                    onError(d0Var2.d());
                } else if (d0Var2.f()) {
                    this.f79543d.dispose();
                    onComplete();
                } else {
                    this.f79540a.onNext(d0Var2.e());
                }
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79543d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79543d, d4)) {
                this.f79543d = d4;
                this.f79540a.onSubscribe(this);
            }
        }
    }

    public i0(io.reactivex.rxjava3.core.l0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.d0<R>> selector) {
        super(source);
        this.f79539b = selector;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super R> observer) {
        this.f79141a.a(new a(observer, this.f79539b));
    }
}
