package io.reactivex.rxjava3.internal.fuseable;

/* compiled from: CancellableQueueFuseable.java */
/* loaded from: classes4.dex */
public final class b<T> extends a<T> {

    /* renamed from: a  reason: collision with root package name */
    volatile boolean f76225a;

    @Override // io.reactivex.rxjava3.internal.fuseable.a, org.reactivestreams.e
    public void cancel() {
        this.f76225a = true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.a, io.reactivex.rxjava3.disposables.f
    public void dispose() {
        this.f76225a = true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.a, io.reactivex.rxjava3.disposables.f
    public boolean isDisposed() {
        return this.f76225a;
    }
}
