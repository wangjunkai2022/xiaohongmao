package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;

/* compiled from: ObservableTakeLast.java */
/* loaded from: classes4.dex */
public final class r3<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final int f80058b;

    /* compiled from: ObservableTakeLast.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends ArrayDeque<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: e  reason: collision with root package name */
        private static final long f80059e = 7240042530241604978L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f80060a;

        /* renamed from: b  reason: collision with root package name */
        final int f80061b;

        /* renamed from: c  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f80062c;

        /* renamed from: d  reason: collision with root package name */
        volatile boolean f80063d;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, int count) {
            this.f80060a = actual;
            this.f80061b = count;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            if (this.f80063d) {
                return;
            }
            this.f80063d = true;
            this.f80062c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80063d;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            io.reactivex.rxjava3.core.n0<? super T> n0Var = this.f80060a;
            while (!this.f80063d) {
                Object obj = (T) poll();
                if (obj == null) {
                    n0Var.onComplete();
                    return;
                }
                n0Var.onNext(obj);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f80060a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f80061b == size()) {
                poll();
            }
            offer(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f80062c, d4)) {
                this.f80062c = d4;
                this.f80060a.onSubscribe(this);
            }
        }
    }

    public r3(io.reactivex.rxjava3.core.l0<T> source, int count) {
        super(source);
        this.f80058b = count;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9, this.f80058b));
    }
}
