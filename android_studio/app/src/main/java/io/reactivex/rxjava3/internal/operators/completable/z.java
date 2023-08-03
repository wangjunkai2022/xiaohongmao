package io.reactivex.rxjava3.internal.operators.completable;

/* compiled from: CompletableLift.java */
/* loaded from: classes4.dex */
public final class z extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76742a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.f f76743b;

    public z(io.reactivex.rxjava3.core.g source, io.reactivex.rxjava3.core.f onLift) {
        this.f76742a = source;
        this.f76743b = onLift;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        try {
            this.f76742a.d(this.f76743b.a(observer));
        } catch (NullPointerException e4) {
            throw e4;
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }
}
