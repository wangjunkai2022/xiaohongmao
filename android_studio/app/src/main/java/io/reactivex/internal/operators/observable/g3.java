package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;

/* compiled from: ObservableSkipLast.java */
/* loaded from: classes3.dex */
public final class g3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f74146b;

    /* compiled from: ObservableSkipLast.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f74147d = -3807491841935125653L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74148a;

        /* renamed from: b  reason: collision with root package name */
        final int f74149b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74150c;

        a(io.reactivex.g0<? super T> g0Var, int i4) {
            super(i4);
            this.f74148a = g0Var;
            this.f74149b = i4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74150c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74150c.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74148a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74148a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74149b == size()) {
                this.f74148a.onNext((T) poll());
            }
            offer(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74150c, cVar)) {
                this.f74150c = cVar;
                this.f74148a.onSubscribe(this);
            }
        }
    }

    public g3(io.reactivex.e0<T> e0Var, int i4) {
        super(e0Var);
        this.f74146b = i4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74146b));
    }
}
