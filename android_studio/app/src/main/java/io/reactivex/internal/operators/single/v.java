package io.reactivex.internal.operators.single;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: SingleEquals.java */
/* loaded from: classes4.dex */
public final class v<T> extends io.reactivex.i0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75530a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.o0<? extends T> f75531b;

    /* compiled from: SingleEquals.java */
    /* loaded from: classes4.dex */
    static class a<T> implements io.reactivex.l0<T> {

        /* renamed from: a  reason: collision with root package name */
        final int f75532a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.disposables.b f75533b;

        /* renamed from: c  reason: collision with root package name */
        final Object[] f75534c;

        /* renamed from: d  reason: collision with root package name */
        final io.reactivex.l0<? super Boolean> f75535d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicInteger f75536e;

        a(int i4, io.reactivex.disposables.b bVar, Object[] objArr, io.reactivex.l0<? super Boolean> l0Var, AtomicInteger atomicInteger) {
            this.f75532a = i4;
            this.f75533b = bVar;
            this.f75534c = objArr;
            this.f75535d = l0Var;
            this.f75536e = atomicInteger;
        }

        @Override // io.reactivex.l0
        public void onError(Throwable th) {
            int i4;
            do {
                i4 = this.f75536e.get();
                if (i4 >= 2) {
                    io.reactivex.plugins.a.Y(th);
                    return;
                }
            } while (!this.f75536e.compareAndSet(i4, 2));
            this.f75533b.dispose();
            this.f75535d.onError(th);
        }

        @Override // io.reactivex.l0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            this.f75533b.b(cVar);
        }

        @Override // io.reactivex.l0
        public void onSuccess(T t9) {
            this.f75534c[this.f75532a] = t9;
            if (this.f75536e.incrementAndGet() == 2) {
                io.reactivex.l0<? super Boolean> l0Var = this.f75535d;
                Object[] objArr = this.f75534c;
                l0Var.onSuccess(Boolean.valueOf(io.reactivex.internal.functions.b.c(objArr[0], objArr[1])));
            }
        }
    }

    public v(io.reactivex.o0<? extends T> o0Var, io.reactivex.o0<? extends T> o0Var2) {
        this.f75530a = o0Var;
        this.f75531b = o0Var2;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super Boolean> l0Var) {
        AtomicInteger atomicInteger = new AtomicInteger();
        Object[] objArr = {null, null};
        io.reactivex.disposables.b bVar = new io.reactivex.disposables.b();
        l0Var.onSubscribe(bVar);
        this.f75530a.d(new a(0, bVar, objArr, l0Var, atomicInteger));
        this.f75531b.d(new a(1, bVar, objArr, l0Var, atomicInteger));
    }
}
