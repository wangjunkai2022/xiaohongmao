package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;

/* compiled from: ObservableRangeLong.java */
/* loaded from: classes4.dex */
public final class n2 extends io.reactivex.rxjava3.core.g0<Long> {

    /* renamed from: a  reason: collision with root package name */
    private final long f79833a;

    /* renamed from: b  reason: collision with root package name */
    private final long f79834b;

    /* compiled from: ObservableRangeLong.java */
    /* loaded from: classes4.dex */
    static final class a extends BasicIntQueueDisposable<Long> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f79835f = 396518478098735504L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super Long> f79836b;

        /* renamed from: c  reason: collision with root package name */
        final long f79837c;

        /* renamed from: d  reason: collision with root package name */
        long f79838d;

        /* renamed from: e  reason: collision with root package name */
        boolean f79839e;

        a(io.reactivex.rxjava3.core.n0<? super Long> actual, long start, long end) {
            this.f79836b = actual;
            this.f79838d = start;
            this.f79837c = end;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        /* renamed from: a */
        public Long poll() {
            long j4 = this.f79838d;
            if (j4 != this.f79837c) {
                this.f79838d = 1 + j4;
                return Long.valueOf(j4);
            }
            lazySet(1);
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f79838d = this.f79837c;
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
            return this.f79838d == this.f79837c;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 1) != 0) {
                this.f79839e = true;
                return 1;
            }
            return 0;
        }

        void run() {
            if (this.f79839e) {
                return;
            }
            io.reactivex.rxjava3.core.n0<? super Long> n0Var = this.f79836b;
            long j4 = this.f79837c;
            for (long j10 = this.f79838d; j10 != j4 && get() == 0; j10++) {
                n0Var.onNext(Long.valueOf(j10));
            }
            if (get() == 0) {
                lazySet(1);
                n0Var.onComplete();
            }
        }
    }

    public n2(long start, long count) {
        this.f79833a = start;
        this.f79834b = count;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super Long> o9) {
        long j4 = this.f79833a;
        a aVar = new a(o9, j4, j4 + this.f79834b);
        o9.onSubscribe(aVar);
        aVar.run();
    }
}
