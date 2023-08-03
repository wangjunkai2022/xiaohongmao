package io.reactivex.internal.operators.flowable;

/* compiled from: FlowableLift.java */
/* loaded from: classes3.dex */
public final class x1<R, T> extends a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.n<? extends R, ? super T> f72998c;

    public x1(io.reactivex.j<T> jVar, io.reactivex.n<? extends R, ? super T> nVar) {
        super(jVar);
        this.f72998c = nVar;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super R> dVar) {
        try {
            org.reactivestreams.d<? super Object> a10 = this.f72998c.a(dVar);
            if (a10 != null) {
                this.f71538b.i(a10);
                return;
            }
            throw new NullPointerException("Operator " + this.f72998c + " returned a null Subscriber");
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
