package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSwitchMap.java */
/* loaded from: classes3.dex */
public final class m3<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.e0<? extends R>> f74425b;

    /* renamed from: c  reason: collision with root package name */
    final int f74426c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f74427d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ObservableSwitchMap.java */
    /* loaded from: classes3.dex */
    public static final class a<T, R> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.g0<R> {

        /* renamed from: f  reason: collision with root package name */
        private static final long f74428f = 3837284832786408377L;

        /* renamed from: a  reason: collision with root package name */
        final b<T, R> f74429a;

        /* renamed from: b  reason: collision with root package name */
        final long f74430b;

        /* renamed from: c  reason: collision with root package name */
        final int f74431c;

        /* renamed from: d  reason: collision with root package name */
        volatile o7.o<R> f74432d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f74433e;

        a(b<T, R> bVar, long j4, int i4) {
            this.f74429a = bVar;
            this.f74430b = j4;
            this.f74431c = i4;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74430b == this.f74429a.f74445j) {
                this.f74433e = true;
                this.f74429a.b();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74429a.c(this, th);
        }

        @Override // io.reactivex.g0
        public void onNext(R r9) {
            if (this.f74430b == this.f74429a.f74445j) {
                if (r9 != null) {
                    this.f74432d.offer(r9);
                }
                this.f74429a.b();
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                if (cVar instanceof o7.j) {
                    o7.j jVar = (o7.j) cVar;
                    int requestFusion = jVar.requestFusion(7);
                    if (requestFusion == 1) {
                        this.f74432d = jVar;
                        this.f74433e = true;
                        this.f74429a.b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f74432d = jVar;
                        return;
                    }
                }
                this.f74432d = new io.reactivex.internal.queue.b(this.f74431c);
            }
        }
    }

    /* compiled from: ObservableSwitchMap.java */
    /* loaded from: classes3.dex */
    static final class b<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: k  reason: collision with root package name */
        private static final long f74434k = -3491074160481096299L;

        /* renamed from: l  reason: collision with root package name */
        static final a<Object, Object> f74435l;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74436a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<? extends R>> f74437b;

        /* renamed from: c  reason: collision with root package name */
        final int f74438c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f74439d;

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f74441f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f74442g;

        /* renamed from: h  reason: collision with root package name */
        io.reactivex.disposables.c f74443h;

        /* renamed from: j  reason: collision with root package name */
        volatile long f74445j;

        /* renamed from: i  reason: collision with root package name */
        final AtomicReference<a<T, R>> f74444i = new AtomicReference<>();

        /* renamed from: e  reason: collision with root package name */
        final AtomicThrowable f74440e = new AtomicThrowable();

        static {
            a<Object, Object> aVar = new a<>(null, -1L, 1);
            f74435l = aVar;
            aVar.a();
        }

        b(io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, int i4, boolean z9) {
            this.f74436a = g0Var;
            this.f74437b = oVar;
            this.f74438c = i4;
            this.f74439d = z9;
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            a<Object, Object> aVar;
            a<T, R> aVar2 = this.f74444i.get();
            a<Object, Object> aVar3 = f74435l;
            if (aVar2 == aVar3 || (aVar = (a) this.f74444i.getAndSet(aVar3)) == aVar3 || aVar == null) {
                return;
            }
            aVar.a();
        }

        /* JADX WARN: Removed duplicated region for block: B:101:0x000f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x00e9 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        void b() {
            /*
                Method dump skipped, instructions count: 241
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.m3.b.b():void");
        }

        void c(a<T, R> aVar, Throwable th) {
            if (aVar.f74430b == this.f74445j && this.f74440e.addThrowable(th)) {
                if (!this.f74439d) {
                    this.f74443h.dispose();
                    this.f74441f = true;
                }
                aVar.f74433e = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74442g) {
                return;
            }
            this.f74442g = true;
            this.f74443h.dispose();
            a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74442g;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74441f) {
                return;
            }
            this.f74441f = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (!this.f74441f && this.f74440e.addThrowable(th)) {
                if (!this.f74439d) {
                    a();
                }
                this.f74441f = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            a<T, R> aVar;
            long j4 = this.f74445j + 1;
            this.f74445j = j4;
            a<T, R> aVar2 = this.f74444i.get();
            if (aVar2 != null) {
                aVar2.a();
            }
            try {
                io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74437b.apply(t9), "The ObservableSource returned is null");
                a<T, R> aVar3 = new a<>(this, j4, this.f74438c);
                do {
                    aVar = this.f74444i.get();
                    if (aVar == f74435l) {
                        return;
                    }
                } while (!this.f74444i.compareAndSet(aVar, aVar3));
                e0Var.subscribe(aVar3);
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74443h.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74443h, cVar)) {
                this.f74443h = cVar;
                this.f74436a.onSubscribe(this);
            }
        }
    }

    public m3(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, int i4, boolean z9) {
        super(e0Var);
        this.f74425b = oVar;
        this.f74426c = i4;
        this.f74427d = z9;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        if (ObservableScalarXMap.b(this.f73827a, g0Var, this.f74425b)) {
            return;
        }
        this.f73827a.subscribe(new b(g0Var, this.f74425b, this.f74426c, this.f74427d));
    }
}
