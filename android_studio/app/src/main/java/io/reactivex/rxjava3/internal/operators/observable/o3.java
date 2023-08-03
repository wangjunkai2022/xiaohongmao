package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;

/* compiled from: ObservableSwitchIfEmpty.java */
/* loaded from: classes4.dex */
public final class o3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<? extends T> f79885b;

    /* compiled from: ObservableSwitchIfEmpty.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79886a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.l0<? extends T> f79887b;

        /* renamed from: d  reason: collision with root package name */
        boolean f79889d = true;

        /* renamed from: c  reason: collision with root package name */
        final SequentialDisposable f79888c = new SequentialDisposable();

        a(io.reactivex.rxjava3.core.n0<? super T> actual, io.reactivex.rxjava3.core.l0<? extends T> other) {
            this.f79886a = actual;
            this.f79887b = other;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79889d) {
                this.f79889d = false;
                this.f79887b.a(this);
                return;
            }
            this.f79886a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79886a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79889d) {
                this.f79889d = false;
            }
            this.f79886a.onNext(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f79888c.update(d4);
        }
    }

    public o3(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.l0<? extends T> other) {
        super(source);
        this.f79885b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        a aVar = new a(t9, this.f79885b);
        t9.onSubscribe(aVar.f79888c);
        this.f79141a.a(aVar);
    }
}
