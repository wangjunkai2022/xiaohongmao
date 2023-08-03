package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeEqualSingle.java */
/* loaded from: classes3.dex */
public final class u<T> extends io.reactivex.i0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.w<? extends T> f73474a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T> f73475b;

    /* renamed from: c  reason: collision with root package name */
    final n7.d<? super T, ? super T> f73476c;

    /* compiled from: MaybeEqualSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f73477a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f73478b;

        /* renamed from: c  reason: collision with root package name */
        final b<T> f73479c;

        /* renamed from: d  reason: collision with root package name */
        final n7.d<? super T, ? super T> f73480d;

        a(io.reactivex.l0<? super Boolean> l0Var, n7.d<? super T, ? super T> dVar) {
            super(2);
            this.f73477a = l0Var;
            this.f73480d = dVar;
            this.f73478b = new b<>(this);
            this.f73479c = new b<>(this);
        }

        void a() {
            if (decrementAndGet() == 0) {
                Object obj = this.f73478b.f73483b;
                Object obj2 = this.f73479c.f73483b;
                if (obj != null && obj2 != null) {
                    try {
                        this.f73477a.onSuccess(Boolean.valueOf(this.f73480d.a(obj, obj2)));
                        return;
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        this.f73477a.onError(th);
                        return;
                    }
                }
                this.f73477a.onSuccess(Boolean.valueOf(obj == null && obj2 == null));
            }
        }

        void b(b<T> bVar, Throwable th) {
            if (getAndSet(0) > 0) {
                b<T> bVar2 = this.f73478b;
                if (bVar == bVar2) {
                    this.f73479c.a();
                } else {
                    bVar2.a();
                }
                this.f73477a.onError(th);
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        void c(io.reactivex.w<? extends T> wVar, io.reactivex.w<? extends T> wVar2) {
            wVar.b(this.f73478b);
            wVar2.b(this.f73479c);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73478b.a();
            this.f73479c.a();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f73478b.get());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeEqualSingle.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73481c = -3031974433025990931L;

        /* renamed from: a  reason: collision with root package name */
        final a<T> f73482a;

        /* renamed from: b  reason: collision with root package name */
        Object f73483b;

        b(a<T> aVar) {
            this.f73482a = aVar;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.t
        public void onComplete() {
            this.f73482a.a();
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73482a.b(this, th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73483b = t9;
            this.f73482a.a();
        }
    }

    public u(io.reactivex.w<? extends T> wVar, io.reactivex.w<? extends T> wVar2, n7.d<? super T, ? super T> dVar) {
        this.f73474a = wVar;
        this.f73475b = wVar2;
        this.f73476c = dVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Boolean> l0Var) {
        a aVar = new a(l0Var, this.f73476c);
        l0Var.onSubscribe(aVar);
        aVar.c(this.f73474a, this.f73475b);
    }
}
