package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: MaybeDetach.java */
/* loaded from: classes4.dex */
public final class p<T> extends io.reactivex.rxjava3.internal.operators.maybe.a<T, T> {

    /* compiled from: MaybeDetach.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.y<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        io.reactivex.rxjava3.core.y<? super T> f78714a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f78715b;

        a(io.reactivex.rxjava3.core.y<? super T> downstream) {
            this.f78714a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78714a = null;
            this.f78715b.dispose();
            this.f78715b = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f78715b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78715b = DisposableHelper.DISPOSED;
            io.reactivex.rxjava3.core.y<? super T> yVar = this.f78714a;
            if (yVar != null) {
                this.f78714a = null;
                yVar.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78715b = DisposableHelper.DISPOSED;
            io.reactivex.rxjava3.core.y<? super T> yVar = this.f78714a;
            if (yVar != null) {
                this.f78714a = null;
                yVar.onError(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f78715b, d4)) {
                this.f78715b = d4;
                this.f78714a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78715b = DisposableHelper.DISPOSED;
            io.reactivex.rxjava3.core.y<? super T> yVar = this.f78714a;
            if (yVar != null) {
                this.f78714a = null;
                yVar.onSuccess(value);
            }
        }
    }

    public p(io.reactivex.rxjava3.core.b0<T> source) {
        super(source);
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        this.f78452a.b(new a(observer));
    }
}
