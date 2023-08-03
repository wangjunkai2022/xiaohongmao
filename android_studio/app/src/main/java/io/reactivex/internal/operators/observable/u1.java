package io.reactivex.internal.operators.observable;

/* compiled from: ObservableLift.java */
/* loaded from: classes3.dex */
public final class u1<R, T> extends a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.d0<? extends R, ? super T> f74817b;

    public u1(io.reactivex.e0<T> e0Var, io.reactivex.d0<? extends R, ? super T> d0Var) {
        super(e0Var);
        this.f74817b = d0Var;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        try {
            io.reactivex.g0<? super Object> a10 = this.f74817b.a(g0Var);
            this.f73827a.subscribe((io.reactivex.g0) io.reactivex.internal.functions.b.g(a10, "Operator " + this.f74817b + " returned a null Observer"));
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
