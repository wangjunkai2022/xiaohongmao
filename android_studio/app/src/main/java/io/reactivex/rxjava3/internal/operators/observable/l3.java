package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: ObservableSkipUntil.java */
/* loaded from: classes4.dex */
public final class l3<T, U> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.l0<U> f79670b;

    /* compiled from: ObservableSkipUntil.java */
    /* loaded from: classes4.dex */
    final class a implements io.reactivex.rxjava3.core.n0<U> {

        /* renamed from: a  reason: collision with root package name */
        final ArrayCompositeDisposable f79671a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f79672b;

        /* renamed from: c  reason: collision with root package name */
        final io.reactivex.rxjava3.observers.m<T> f79673c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79674d;

        a(ArrayCompositeDisposable frc, b<T> sus, io.reactivex.rxjava3.observers.m<T> serial) {
            this.f79671a = frc;
            this.f79672b = sus;
            this.f79673c = serial;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79672b.f79679d = true;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79671a.dispose();
            this.f79673c.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(U t9) {
            this.f79674d.dispose();
            this.f79672b.f79679d = true;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79674d, d4)) {
                this.f79674d = d4;
                this.f79671a.setResource(1, d4);
            }
        }
    }

    /* compiled from: ObservableSkipUntil.java */
    /* loaded from: classes4.dex */
    static final class b<T> implements io.reactivex.rxjava3.core.n0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79676a;

        /* renamed from: b  reason: collision with root package name */
        final ArrayCompositeDisposable f79677b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79678c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f79679d;

        /* renamed from: e  reason: collision with root package name */
        boolean f79680e;

        b(io.reactivex.rxjava3.core.n0<? super T> actual, ArrayCompositeDisposable frc) {
            this.f79676a = actual;
            this.f79677b = frc;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79677b.dispose();
            this.f79676a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79677b.dispose();
            this.f79676a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79680e) {
                this.f79676a.onNext(t9);
            } else if (this.f79679d) {
                this.f79680e = true;
                this.f79676a.onNext(t9);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79678c, d4)) {
                this.f79678c = d4;
                this.f79677b.setResource(0, d4);
            }
        }
    }

    public l3(io.reactivex.rxjava3.core.l0<T> source, io.reactivex.rxjava3.core.l0<U> other) {
        super(source);
        this.f79670b = other;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> child) {
        io.reactivex.rxjava3.observers.m mVar = new io.reactivex.rxjava3.observers.m(child);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        mVar.onSubscribe(arrayCompositeDisposable);
        b bVar = new b(mVar, arrayCompositeDisposable);
        this.f79670b.a(new a(arrayCompositeDisposable, bVar, mVar));
        this.f79141a.a(bVar);
    }
}
