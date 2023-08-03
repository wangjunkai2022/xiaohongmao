package com.qennnsad.aknkaksd.presentation.module.main.anchors.common;

import dagger.internal.r;

/* compiled from: AbstractAnchorFragment_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class d<Event> implements d6.g<AbstractAnchorFragment<Event>> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f51415a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f51416b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f51417c;

    public d(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar3) {
        this.f51415a = cVar;
        this.f51416b = cVar2;
        this.f51417c = cVar3;
    }

    public static <Event> d6.g<AbstractAnchorFragment<Event>> b(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar3) {
        return new d(cVar, cVar2, cVar3);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment.sourceFactory")
    public static <Event> void d(AbstractAnchorFragment<Event> abstractAnchorFragment, com.qennnsad.aknkaksd.data.repository.m mVar) {
        abstractAnchorFragment.f51379f = mVar;
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(AbstractAnchorFragment<Event> abstractAnchorFragment) {
        com.qennnsad.aknkaksd.presentation.common.k.d(abstractAnchorFragment, this.f51415a.get());
        com.qennnsad.aknkaksd.presentation.common.k.c(abstractAnchorFragment, this.f51416b.get());
        d(abstractAnchorFragment, this.f51417c.get());
    }
}
