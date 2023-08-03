package io.reactivex.internal.operators.observable;

/* compiled from: ObservableFromArray.java */
/* loaded from: classes3.dex */
public final class c1<T> extends io.reactivex.z<T> {

    /* renamed from: a  reason: collision with root package name */
    final T[] f73936a;

    /* compiled from: ObservableFromArray.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.internal.observers.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super T> f73937a;

        /* renamed from: b  reason: collision with root package name */
        final T[] f73938b;

        /* renamed from: c  reason: collision with root package name */
        int f73939c;

        /* renamed from: d  reason: collision with root package name */
        boolean f73940d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f73941e;

        a(io.reactivex.g0<? super T> g0Var, T[] tArr) {
            this.f73937a = g0Var;
            this.f73938b = tArr;
        }

        void a() {
            T[] tArr = this.f73938b;
            int length = tArr.length;
            for (int i4 = 0; i4 < length && !isDisposed(); i4++) {
                T t9 = tArr[i4];
                if (t9 == null) {
                    io.reactivex.g0<? super T> g0Var = this.f73937a;
                    g0Var.onError(new NullPointerException("The element at index " + i4 + " is null"));
                    return;
                }
                this.f73937a.onNext(t9);
            }
            if (isDisposed()) {
                return;
            }
            this.f73937a.onComplete();
        }

        @Override // o7.o
        public void clear() {
            this.f73939c = this.f73938b.length;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73941e = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73941e;
        }

        @Override // o7.o
        public boolean isEmpty() {
            return this.f73939c == this.f73938b.length;
        }

        @Override // o7.o
        @m7.f
        public T poll() {
            int i4 = this.f73939c;
            T[] tArr = this.f73938b;
            if (i4 != tArr.length) {
                this.f73939c = i4 + 1;
                return (T) io.reactivex.internal.functions.b.g(tArr[i4], "The array element is null");
            }
            return null;
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            if ((i4 & 1) != 0) {
                this.f73940d = true;
                return 1;
            }
            return 0;
        }
    }

    public c1(T[] tArr) {
        this.f73936a = tArr;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super T> g0Var) {
        a aVar = new a(g0Var, this.f73936a);
        g0Var.onSubscribe(aVar);
        if (aVar.f73940d) {
            return;
        }
        aVar.a();
    }
}
