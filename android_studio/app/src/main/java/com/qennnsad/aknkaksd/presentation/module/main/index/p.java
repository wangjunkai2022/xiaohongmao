package com.qennnsad.aknkaksd.presentation.module.main.index;

/* compiled from: IndexViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class p implements dagger.internal.h<IndexViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f51699a;

    public p(u7.c<g5.a> cVar) {
        this.f51699a = cVar;
    }

    public static p a(u7.c<g5.a> cVar) {
        return new p(cVar);
    }

    public static IndexViewModel c(g5.a aVar) {
        return new IndexViewModel(aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public IndexViewModel get() {
        return c(this.f51699a.get());
    }
}
