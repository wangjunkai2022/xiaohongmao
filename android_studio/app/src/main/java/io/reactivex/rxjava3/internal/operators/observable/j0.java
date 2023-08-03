package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.EmptyComponent;

/* compiled from: ObservableDetach.java */
/* loaded from: classes4.dex */
public final class j0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* compiled from: ObservableDetach.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.rxjava3.core.n0<? super T> f79579a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79580b;

        a(io.reactivex.rxjava3.core.n0<? super T> downstream) {
            this.f79579a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            io.reactivex.rxjava3.disposables.f fVar = this.f79580b;
            this.f79580b = EmptyComponent.INSTANCE;
            this.f79579a = EmptyComponent.asObserver();
            fVar.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79580b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f79579a;
            this.f79580b = EmptyComponent.INSTANCE;
            this.f79579a = EmptyComponent.asObserver();
            n0Var.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f79579a;
            this.f79580b = EmptyComponent.INSTANCE;
            this.f79579a = EmptyComponent.asObserver();
            n0Var.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79579a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79580b, d4)) {
                this.f79580b = d4;
                this.f79579a.onSubscribe(this);
            }
        }
    }

    public j0(io.reactivex.rxjava3.core.l0<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new a(observer));
    }
}
