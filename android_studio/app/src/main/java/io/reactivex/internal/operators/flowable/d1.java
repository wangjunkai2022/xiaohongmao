package io.reactivex.internal.operators.flowable;

/* compiled from: FlowableFlatMapPublisher.java */
/* loaded from: classes3.dex */
public final class d1<T, U> extends io.reactivex.j<U> {

    /* renamed from: b  reason: collision with root package name */
    final org.reactivestreams.c<T> f71684b;

    /* renamed from: c  reason: collision with root package name */
    final n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> f71685c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f71686d;

    /* renamed from: e  reason: collision with root package name */
    final int f71687e;

    /* renamed from: f  reason: collision with root package name */
    final int f71688f;

    public d1(org.reactivestreams.c<T> cVar, n7.o<? super T, ? extends org.reactivestreams.c<? extends U>> oVar, boolean z9, int i4, int i10) {
        this.f71684b = cVar;
        this.f71685c = oVar;
        this.f71686d = z9;
        this.f71687e = i4;
        this.f71688f = i10;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super U> dVar) {
        if (j3.b(this.f71684b, dVar, this.f71685c)) {
            return;
        }
        this.f71684b.i(z0.M8(dVar, this.f71685c, this.f71686d, this.f71687e, this.f71688f));
    }
}
