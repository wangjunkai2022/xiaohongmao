package com.qennnsad.aknkaksd.presentation.common;

import androidx.viewbinding.ViewBinding;
import dagger.internal.r;

/* compiled from: BaseMvvmFragment_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class k<VB extends ViewBinding, Event> implements d6.g<BaseMvvmFragment<VB, Event>> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f50923a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f50924b;

    public k(u7.c<g5.a> cVar, u7.c<x4.a> cVar2) {
        this.f50923a = cVar;
        this.f50924b = cVar2;
    }

    public static <VB extends ViewBinding, Event> d6.g<BaseMvvmFragment<VB, Event>> b(u7.c<g5.a> cVar, u7.c<x4.a> cVar2) {
        return new k(cVar, cVar2);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment.analytics")
    public static <VB extends ViewBinding, Event> void c(BaseMvvmFragment<VB, Event> baseMvvmFragment, x4.a aVar) {
        baseMvvmFragment.f50868d = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment.localDataManager")
    public static <VB extends ViewBinding, Event> void d(BaseMvvmFragment<VB, Event> baseMvvmFragment, g5.a aVar) {
        baseMvvmFragment.f50867c = aVar;
    }

    @Override // d6.g
    /* renamed from: e */
    public void a(BaseMvvmFragment<VB, Event> baseMvvmFragment) {
        d(baseMvvmFragment, this.f50923a.get());
        c(baseMvvmFragment, this.f50924b.get());
    }
}
