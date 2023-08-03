package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* compiled from: SingleDoOnSubscribe.java */
/* loaded from: classes4.dex */
public final class t<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v0<T> f80919a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super io.reactivex.rxjava3.disposables.f> f80920b;

    /* compiled from: SingleDoOnSubscribe.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.s0<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80921a;

        /* renamed from: b  reason: collision with root package name */
        final q7.g<? super io.reactivex.rxjava3.disposables.f> f80922b;

        /* renamed from: c  reason: collision with root package name */
        boolean f80923c;

        a(io.reactivex.rxjava3.core.s0<? super T> actual, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe) {
            this.f80921a = actual;
            this.f80922b = onSubscribe;
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f80923c) {
                io.reactivex.rxjava3.plugins.a.Y(e4);
            } else {
                this.f80921a.onError(e4);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            try {
                this.f80922b.accept(d4);
                this.f80921a.onSubscribe(d4);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f80923c = true;
                d4.dispose();
                EmptyDisposable.error(th, this.f80921a);
            }
        }

        @Override // io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            if (this.f80923c) {
                return;
            }
            this.f80921a.onSuccess(value);
        }
    }

    public t(io.reactivex.rxjava3.core.v0<T> source, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe) {
        this.f80919a = source;
        this.f80920b = onSubscribe;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80919a.d(new a(observer, this.f80920b));
    }
}
