package io.reactivex.internal.operators.completable;

/* compiled from: CompletableLift.java */
/* loaded from: classes3.dex */
public final class y extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71470a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.f f71471b;

    public y(io.reactivex.g gVar, io.reactivex.f fVar) {
        this.f71470a = gVar;
        this.f71471b = fVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        try {
            this.f71470a.d(this.f71471b.a(dVar));
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            io.reactivex.plugins.a.Y(th);
        }
    }
}
