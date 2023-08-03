package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Collection;

/* compiled from: ObservableToList.java */
/* loaded from: classes4.dex */
public final class d4<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final q7.s<U> f79337b;

    /* compiled from: ObservableToList.java */
    /* loaded from: classes4.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super U> f79338a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79339b;

        /* renamed from: c  reason: collision with root package name */
        U f79340c;

        a(io.reactivex.rxjava3.core.n0<? super U> actual, U collection) {
            this.f79338a = actual;
            this.f79340c = collection;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79339b.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79339b.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            U u9 = this.f79340c;
            this.f79340c = null;
            this.f79338a.onNext(u9);
            this.f79338a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79340c = null;
            this.f79338a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            this.f79340c.add(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79339b, d4)) {
                this.f79339b = d4;
                this.f79338a.onSubscribe(this);
            }
        }
    }

    public d4(io.reactivex.rxjava3.core.l0<T> source, q7.s<U> collectionSupplier) {
        super(source);
        this.f79337b = collectionSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super U> t9) {
        try {
            this.f79141a.a(new a(t9, (Collection) io.reactivex.rxjava3.internal.util.g.d(this.f79337b.get(), "The collectionSupplier returned a null Collection.")));
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptyDisposable.error(th, t9);
        }
    }
}
