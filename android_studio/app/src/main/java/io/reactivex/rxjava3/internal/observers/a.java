package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* compiled from: BasicFuseableObserver.java */
/* loaded from: classes4.dex */
public abstract class a<T, R> implements n0<T>, io.reactivex.rxjava3.internal.fuseable.l<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final n0<? super R> f76470a;

    /* renamed from: b  reason: collision with root package name */
    protected io.reactivex.rxjava3.disposables.f f76471b;

    /* renamed from: c  reason: collision with root package name */
    protected io.reactivex.rxjava3.internal.fuseable.l<T> f76472c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f76473d;

    /* renamed from: e  reason: collision with root package name */
    protected int f76474e;

    public a(n0<? super R> downstream) {
        this.f76470a = downstream;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public void clear() {
        this.f76472c.clear();
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public void dispose() {
        this.f76471b.dispose();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(Throwable t9) {
        io.reactivex.rxjava3.exceptions.a.b(t9);
        this.f76471b.dispose();
        onError(t9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int g(int mode) {
        io.reactivex.rxjava3.internal.fuseable.l<T> lVar = this.f76472c;
        if (lVar == null || (mode & 4) != 0) {
            return 0;
        }
        int requestFusion = lVar.requestFusion(mode);
        if (requestFusion != 0) {
            this.f76474e = requestFusion;
        }
        return requestFusion;
    }

    @Override // io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f76471b.isDisposed();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean isEmpty() {
        return this.f76472c.isEmpty();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(R e4) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onComplete() {
        if (this.f76473d) {
            return;
        }
        this.f76473d = true;
        this.f76470a.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.n0
    public void onError(Throwable t9) {
        if (this.f76473d) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f76473d = true;
        this.f76470a.onError(t9);
    }

    @Override // io.reactivex.rxjava3.core.n0
    public final void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
        if (DisposableHelper.validate(this.f76471b, d4)) {
            this.f76471b = d4;
            if (d4 instanceof io.reactivex.rxjava3.internal.fuseable.l) {
                this.f76472c = (io.reactivex.rxjava3.internal.fuseable.l) d4;
            }
            if (b()) {
                this.f76470a.onSubscribe(this);
                a();
            }
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(R v12, R v22) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
