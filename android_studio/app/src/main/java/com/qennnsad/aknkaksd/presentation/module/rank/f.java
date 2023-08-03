package com.qennnsad.aknkaksd.presentation.module.rank;

import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.q0;
import dagger.internal.r;

/* compiled from: RankFragment_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class f implements d6.g<RankFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f52351a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f52352b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<m> f52353c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<q0> f52354d;

    public f(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<m> cVar3, u7.c<q0> cVar4) {
        this.f52351a = cVar;
        this.f52352b = cVar2;
        this.f52353c = cVar3;
        this.f52354d = cVar4;
    }

    public static d6.g<RankFragment> b(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<m> cVar3, u7.c<q0> cVar4) {
        return new f(cVar, cVar2, cVar3, cVar4);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.rank.RankFragment.mysteryUtil")
    public static void d(RankFragment rankFragment, q0 q0Var) {
        rankFragment.f52178m = q0Var;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.rank.RankFragment.sourceFactory")
    public static void e(RankFragment rankFragment, m mVar) {
        rankFragment.f52177l = mVar;
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(RankFragment rankFragment) {
        com.qennnsad.aknkaksd.presentation.common.k.d(rankFragment, this.f52351a.get());
        com.qennnsad.aknkaksd.presentation.common.k.c(rankFragment, this.f52352b.get());
        e(rankFragment, this.f52353c.get());
        d(rankFragment, this.f52354d.get());
    }
}
