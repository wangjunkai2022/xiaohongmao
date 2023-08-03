package io.reactivex.rxjava3.internal.operators.flowable;

/* compiled from: FlowableLift.java */
/* loaded from: classes4.dex */
public final class c2<R, T> extends a<T, R> {

    /* renamed from: c  reason: collision with root package name */
    final io.reactivex.rxjava3.core.q<? extends R, ? super T> f76948c;

    public c2(io.reactivex.rxjava3.core.m<T> source, io.reactivex.rxjava3.core.q<? extends R, ? super T> operator) {
        super(source);
        this.f76948c = operator;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super R> s9) {
        try {
            org.reactivestreams.d<? super Object> a10 = this.f76948c.a(s9);
            if (a10 != null) {
                this.f76811b.i(a10);
                return;
            }
            throw new NullPointerException("Operator " + this.f76948c + " returned a null Subscriber");
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
