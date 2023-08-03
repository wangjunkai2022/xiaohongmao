package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;

/* compiled from: ObservableTakeLast.java */
/* loaded from: classes3.dex */
public final class o3<T> extends io.reactivex.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f74557b;

    /* compiled from: ObservableTakeLast.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: e  reason: collision with root package name */
        private static final long f74558e = 7240042530241604978L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f74559a;

        /* renamed from: b  reason: collision with root package name */
        final int f74560b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.disposables.c f74561c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f74562d;

        a(io.reactivex.g0<? super T> g0Var, int i4) {
            this.f74559a = g0Var;
            this.f74560b = i4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74562d) {
                return;
            }
            this.f74562d = true;
            this.f74561c.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74562d;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            io.reactivex.g0<? super T> g0Var = this.f74559a;
            while (!this.f74562d) {
                Object obj = (T) poll();
                if (obj == null) {
                    if (this.f74562d) {
                        return;
                    }
                    g0Var.onComplete();
                    return;
                }
                g0Var.onNext(obj);
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74559a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74560b == size()) {
                poll();
            }
            offer(t9);
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74561c, cVar)) {
                this.f74561c = cVar;
                this.f74559a.onSubscribe(this);
            }
        }
    }

    public o3(io.reactivex.e0<T> e0Var, int i4) {
        super(e0Var);
        this.f74557b = i4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74557b));
    }
}
