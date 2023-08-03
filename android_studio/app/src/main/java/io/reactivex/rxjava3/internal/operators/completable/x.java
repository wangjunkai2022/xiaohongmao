package io.reactivex.rxjava3.internal.operators.completable;

/* compiled from: CompletableFromUnsafeSource.java */
/* loaded from: classes4.dex */
public final class x extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76738a;

    public x(io.reactivex.rxjava3.core.g source) {
        this.f76738a = source;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f76738a.d(observer);
    }
}
