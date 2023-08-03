package io.reactivex.subjects;

import io.reactivex.g0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: PublishSubject.java */
/* loaded from: classes4.dex */
public final class e<T> extends i<T> {

    /* renamed from: c  reason: collision with root package name */
    static final a[] f81727c = new a[0];

    /* renamed from: d  reason: collision with root package name */
    static final a[] f81728d = new a[0];

    /* renamed from: a  reason: collision with root package name */
    final AtomicReference<a<T>[]> f81729a = new AtomicReference<>(f81728d);

    /* renamed from: b  reason: collision with root package name */
    Throwable f81730b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PublishSubject.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicBoolean implements io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f81731c = 3562861878281475070L;

        /* renamed from: a  reason: collision with root package name */
        final g0<? super T> f81732a;

        /* renamed from: b  reason: collision with root package name */
        final e<T> f81733b;

        a(g0<? super T> g0Var, e<T> eVar) {
            this.f81732a = g0Var;
            this.f81733b = eVar;
        }

        public void a() {
            if (get()) {
                return;
            }
            this.f81732a.onComplete();
        }

        public void b(Throwable th) {
            if (get()) {
                io.reactivex.plugins.a.Y(th);
            } else {
                this.f81732a.onError(th);
            }
        }

        public void c(T t9) {
            if (get()) {
                return;
            }
            this.f81732a.onNext(t9);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (compareAndSet(false, true)) {
                this.f81733b.j(this);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return get();
        }
    }

    e() {
    }

    @m7.e
    @m7.c
    public static <T> e<T> i() {
        return new e<>();
    }

    @Override // io.reactivex.subjects.i
    @m7.f
    public Throwable b() {
        if (this.f81729a.get() == f81727c) {
            return this.f81730b;
        }
        return null;
    }

    @Override // io.reactivex.subjects.i
    public boolean d() {
        return this.f81729a.get() == f81727c && this.f81730b == null;
    }

    @Override // io.reactivex.subjects.i
    public boolean e() {
        return this.f81729a.get().length != 0;
    }

    @Override // io.reactivex.subjects.i
    public boolean f() {
        return this.f81729a.get() == f81727c && this.f81730b != null;
    }

    boolean h(a<T> aVar) {
        a<T>[] aVarArr;
        a<T>[] aVarArr2;
        do {
            aVarArr = this.f81729a.get();
            if (aVarArr == f81727c) {
                return false;
            }
            int length = aVarArr.length;
            aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
        } while (!this.f81729a.compareAndSet(aVarArr, aVarArr2));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    void j(a<T> aVar) {
        a<T>[] aVarArr;
        a[] aVarArr2;
        do {
            aVarArr = this.f81729a.get();
            if (aVarArr == f81727c || aVarArr == f81728d) {
                return;
            }
            int length = aVarArr.length;
            int i4 = -1;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                } else if (aVarArr[i10] == aVar) {
                    i4 = i10;
                    break;
                } else {
                    i10++;
                }
            }
            if (i4 < 0) {
                return;
            }
            if (length == 1) {
                aVarArr2 = f81728d;
            } else {
                a[] aVarArr3 = new a[length - 1];
                System.arraycopy(aVarArr, 0, aVarArr3, 0, i4);
                System.arraycopy(aVarArr, i4 + 1, aVarArr3, i4, (length - i4) - 1);
                aVarArr2 = aVarArr3;
            }
        } while (!this.f81729a.compareAndSet(aVarArr, aVarArr2));
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        a<T>[] aVarArr = this.f81729a.get();
        a<T>[] aVarArr2 = f81727c;
        if (aVarArr == aVarArr2) {
            return;
        }
        for (a<T> aVar : this.f81729a.getAndSet(aVarArr2)) {
            aVar.a();
        }
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        io.reactivex.internal.functions.b.g(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        a<T>[] aVarArr = this.f81729a.get();
        a<T>[] aVarArr2 = f81727c;
        if (aVarArr == aVarArr2) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f81730b = th;
        for (a<T> aVar : this.f81729a.getAndSet(aVarArr2)) {
            aVar.b(th);
        }
    }

    @Override // io.reactivex.g0
    public void onNext(T t9) {
        io.reactivex.internal.functions.b.g(t9, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (a<T> aVar : this.f81729a.get()) {
            aVar.c(t9);
        }
    }

    @Override // io.reactivex.g0
    public void onSubscribe(io.reactivex.disposables.c cVar) {
        if (this.f81729a.get() == f81727c) {
            cVar.dispose();
        }
    }

    @Override // io.reactivex.z
    protected void subscribeActual(g0<? super T> g0Var) {
        a<T> aVar = new a<>(g0Var, this);
        g0Var.onSubscribe(aVar);
        if (h(aVar)) {
            if (aVar.isDisposed()) {
                j(aVar);
                return;
            }
            return;
        }
        Throwable th = this.f81730b;
        if (th != null) {
            g0Var.onError(th);
        } else {
            g0Var.onComplete();
        }
    }
}
