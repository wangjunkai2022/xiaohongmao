package io.reactivex.rxjava3.internal.operators.observable;

import java.util.Objects;

/* compiled from: ObservableFromArray.java */
/* loaded from: classes4.dex */
public final class d1<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final T[] f79297a;

    /* compiled from: ObservableFromArray.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.internal.observers.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79298a;

        /* renamed from: b  reason: collision with root package name */
        final T[] f79299b;

        /* renamed from: c  reason: collision with root package name */
        int f79300c;

        /* renamed from: d  reason: collision with root package name */
        boolean f79301d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f79302e;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, T[] array) {
            this.f79298a = actual;
            this.f79299b = array;
        }

        void a() {
            T[] tArr = this.f79299b;
            int length = tArr.length;
            for (int i4 = 0; i4 < length && !isDisposed(); i4++) {
                T t9 = tArr[i4];
                if (t9 == null) {
                    io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f79298a;
                    n0Var.onError(new NullPointerException("The element at index " + i4 + " is null"));
                    return;
                }
                this.f79298a.onNext(t9);
            }
            if (isDisposed()) {
                return;
            }
            this.f79298a.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f79300c = this.f79299b.length;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79302e = true;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79302e;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f79300c == this.f79299b.length;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            int i4 = this.f79300c;
            T[] tArr = this.f79299b;
            if (i4 != tArr.length) {
                this.f79300c = i4 + 1;
                T t9 = tArr[i4];
                Objects.requireNonNull(t9, "The array element is null");
                return t9;
            }
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 1) != 0) {
                this.f79301d = true;
                return 1;
            }
            return 0;
        }
    }

    public d1(T[] array) {
        this.f79297a = array;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        a aVar = new a(observer, this.f79297a);
        observer.onSubscribe(aVar);
        if (aVar.f79301d) {
            return;
        }
        aVar.a();
    }
}
