package io.reactivex.internal.observers;

import io.reactivex.g0;
import io.reactivex.internal.disposables.DisposableHelper;

/* compiled from: BasicFuseableObserver.java */
/* loaded from: classes3.dex */
public abstract class a<T, R> implements g0<T>, o7.j<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final g0<? super R> f71211a;

    /* renamed from: b  reason: collision with root package name */
    protected io.reactivex.disposables.c f71212b;

    /* renamed from: c  reason: collision with root package name */
    protected o7.j<T> f71213c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f71214d;

    /* renamed from: e  reason: collision with root package name */
    protected int f71215e;

    public a(g0<? super R> g0Var) {
        this.f71211a = g0Var;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    @Override // o7.o
    public void clear() {
        this.f71213c.clear();
    }

    @Override // io.reactivex.disposables.c
    public void dispose() {
        this.f71212b.dispose();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(Throwable th) {
        io.reactivex.exceptions.a.b(th);
        this.f71212b.dispose();
        onError(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int g(int i4) {
        o7.j<T> jVar = this.f71213c;
        if (jVar == null || (i4 & 4) != 0) {
            return 0;
        }
        int requestFusion = jVar.requestFusion(i4);
        if (requestFusion != 0) {
            this.f71215e = requestFusion;
        }
        return requestFusion;
    }

    @Override // io.reactivex.disposables.c
    public boolean isDisposed() {
        return this.f71212b.isDisposed();
    }

    @Override // o7.o
    public boolean isEmpty() {
        return this.f71213c.isEmpty();
    }

    @Override // o7.o
    public final boolean offer(R r9) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.g0
    public void onComplete() {
        if (this.f71214d) {
            return;
        }
        this.f71214d = true;
        this.f71211a.onComplete();
    }

    @Override // io.reactivex.g0
    public void onError(Throwable th) {
        if (this.f71214d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f71214d = true;
        this.f71211a.onError(th);
    }

    @Override // io.reactivex.g0
    public final void onSubscribe(io.reactivex.disposables.c cVar) {
        if (DisposableHelper.validate(this.f71212b, cVar)) {
            this.f71212b = cVar;
            if (cVar instanceof o7.j) {
                this.f71213c = (o7.j) cVar;
            }
            if (b()) {
                this.f71211a.onSubscribe(this);
                a();
            }
        }
    }

    @Override // o7.o
    public final boolean offer(R r9, R r10) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
