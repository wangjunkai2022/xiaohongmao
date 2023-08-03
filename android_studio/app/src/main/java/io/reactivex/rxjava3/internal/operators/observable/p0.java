package io.reactivex.rxjava3.internal.operators.observable;

/* compiled from: ObservableDoOnLifecycle.java */
/* loaded from: classes4.dex */
public final class p0<T> extends a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    private final q7.g<? super io.reactivex.rxjava3.disposables.f> f79918b;

    /* renamed from: c  reason: collision with root package name */
    private final q7.a f79919c;

    public p0(io.reactivex.rxjava3.core.g0<T> upstream, q7.g<? super io.reactivex.rxjava3.disposables.f> onSubscribe, q7.a onDispose) {
        super(upstream);
        this.f79918b = onSubscribe;
        this.f79919c = onDispose;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super T> observer) {
        this.f79141a.a(new io.reactivex.rxjava3.internal.observers.h(observer, this.f79918b, this.f79919c));
    }
}
