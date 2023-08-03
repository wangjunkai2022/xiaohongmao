package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.BasicIntQueueDisposable;

/* compiled from: ObservableRangeLong.java */
/* loaded from: classes3.dex */
public final class k2 extends io.reactivex.z<Long> {

    /* renamed from: a  reason: collision with root package name */
    private final long f74330a;

    /* renamed from: b  reason: collision with root package name */
    private final long f74331b;

    /* compiled from: ObservableRangeLong.java */
    /* loaded from: classes3.dex */
    static final class a extends BasicIntQueueDisposable<Long> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f74332f = 396518478098735504L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super Long> f74333b;

        /* renamed from: c  reason: collision with root package name */
        final long f74334c;

        /* renamed from: d  reason: collision with root package name */
        long f74335d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74336e;

        a(io.reactivex.g0<? super Long> g0Var, long j4, long j10) {
            this.f74333b = g0Var;
            this.f74335d = j4;
            this.f74334c = j10;
        }

        @Override // o7.o
        @m7.f
        /* renamed from: a */
        public Long poll() throws Exception {
            long j4 = this.f74335d;
            if (j4 != this.f74334c) {
                this.f74335d = 1 + j4;
                return Long.valueOf(j4);
            }
            lazySet(1);
            return null;
        }

        @Override // o7.o
        public void clear() {
            this.f74335d = this.f74334c;
            lazySet(1);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            set(1);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get() != 0;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f74335d == this.f74334c;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 1) != 0) {
                this.f74336e = true;
                return 1;
            }
            return 0;
        }

        void run() {
            if (this.f74336e) {
                return;
            }
            io.reactivex.g0<? super Long> g0Var = this.f74333b;
            long j4 = this.f74334c;
            for (long j10 = this.f74335d; j10 != j4 && get() == 0; j10++) {
                g0Var.onNext(Long.valueOf(j10));
            }
            if (get() == 0) {
                lazySet(1);
                g0Var.onComplete();
            }
        }
    }

    public k2(long j4, long j10) {
        this.f74330a = j4;
        this.f74331b = j10;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super Long> g0Var) {
        long j4 = this.f74330a;
        a aVar = new a(g0Var, j4, j4 + this.f74331b);
        g0Var.onSubscribe(aVar);
        aVar.run();
    }
}
