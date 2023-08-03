package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;

/* compiled from: ObservableRange.java */
/* loaded from: classes4.dex */
public final class m2 extends io.reactivex.rxjava3.core.g0<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final int f79755a;

    /* renamed from: b  reason: collision with root package name */
    private final long f79756b;

    /* compiled from: ObservableRange.java */
    /* loaded from: classes4.dex */
    static final class a extends BasicIntQueueDisposable<Integer> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f79757f = 396518478098735504L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super Integer> f79758b;

        /* renamed from: c  reason: collision with root package name */
        final long f79759c;

        /* renamed from: d  reason: collision with root package name */
        long f79760d;

        /* renamed from: e  reason: collision with root package name */
        boolean f79761e;

        a(io.reactivex.rxjava3.core.n0<? super Integer> actual, long start, long end) {
            this.f79758b = actual;
            this.f79760d = start;
            this.f79759c = end;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        /* renamed from: a */
        public Integer poll() {
            long j4 = this.f79760d;
            if (j4 != this.f79759c) {
                this.f79760d = 1 + j4;
                return Integer.valueOf((int) j4);
            }
            lazySet(1);
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f79760d = this.f79759c;
            lazySet(1);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            set(1);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return get() != 0;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            return this.f79760d == this.f79759c;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 1) != 0) {
                this.f79761e = true;
                return 1;
            }
            return 0;
        }

        void run() {
            if (this.f79761e) {
                return;
            }
            io.reactivex.rxjava3.core.n0<? super Integer> n0Var = this.f79758b;
            long j4 = this.f79759c;
            for (long j10 = this.f79760d; j10 != j4 && get() == 0; j10++) {
                n0Var.onNext(Integer.valueOf((int) j10));
            }
            if (get() == 0) {
                lazySet(1);
                n0Var.onComplete();
            }
        }
    }

    public m2(int start, int count) {
        this.f79755a = start;
        this.f79756b = start + count;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super Integer> o9) {
        a aVar = new a(o9, this.f79755a, this.f79756b);
        o9.onSubscribe(aVar);
        aVar.run();
    }
}
