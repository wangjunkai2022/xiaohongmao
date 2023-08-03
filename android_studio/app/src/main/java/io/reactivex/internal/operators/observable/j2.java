package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.BasicIntQueueDisposable;

/* compiled from: ObservableRange.java */
/* loaded from: classes3.dex */
public final class j2 extends io.reactivex.z<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final int f74299a;

    /* renamed from: b  reason: collision with root package name */
    private final long f74300b;

    /* compiled from: ObservableRange.java */
    /* loaded from: classes3.dex */
    static final class a extends BasicIntQueueDisposable<Integer> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f74301f = 396518478098735504L;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.g0<? super Integer> f74302b;

        /* renamed from: c  reason: collision with root package name */
        final long f74303c;

        /* renamed from: d  reason: collision with root package name */
        long f74304d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74305e;

        a(io.reactivex.g0<? super Integer> g0Var, long j4, long j10) {
            this.f74302b = g0Var;
            this.f74304d = j4;
            this.f74303c = j10;
        }

        @Override // o7.o
        @m7.f
        /* renamed from: a */
        public Integer poll() throws Exception {
            long j4 = this.f74304d;
            if (j4 != this.f74303c) {
                this.f74304d = 1 + j4;
                return Integer.valueOf((int) j4);
            }
            lazySet(1);
            return null;
        }

        @Override // o7.o
        public void clear() {
            this.f74304d = this.f74303c;
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
            return this.f74304d == this.f74303c;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 1) != 0) {
                this.f74305e = true;
                return 1;
            }
            return 0;
        }

        void run() {
            if (this.f74305e) {
                return;
            }
            io.reactivex.g0<? super Integer> g0Var = this.f74302b;
            long j4 = this.f74303c;
            for (long j10 = this.f74304d; j10 != j4 && get() == 0; j10++) {
                g0Var.onNext(Integer.valueOf((int) j10));
            }
            if (get() == 0) {
                lazySet(1);
                g0Var.onComplete();
            }
        }
    }

    public j2(int i4, int i10) {
        this.f74299a = i4;
        this.f74300b = i4 + i10;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super Integer> g0Var) {
        a aVar = new a(g0Var, this.f74299a, this.f74300b);
        g0Var.onSubscribe(aVar);
        aVar.run();
    }
}
