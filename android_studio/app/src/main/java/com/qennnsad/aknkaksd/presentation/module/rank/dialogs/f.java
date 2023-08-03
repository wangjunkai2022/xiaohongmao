package com.qennnsad.aknkaksd.presentation.module.rank.dialogs;

import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.q0;
import dagger.internal.j;
import dagger.internal.r;

/* compiled from: RankTodayDialog_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class f implements d6.g<RankTodayDialog> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<q0> f52343a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f52344b;

    public f(u7.c<q0> cVar, u7.c<m> cVar2) {
        this.f52343a = cVar;
        this.f52344b = cVar2;
    }

    public static d6.g<RankTodayDialog> b(u7.c<q0> cVar, u7.c<m> cVar2) {
        return new f(cVar, cVar2);
    }

    @j("com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayDialog.mysteryUtil")
    public static void d(RankTodayDialog rankTodayDialog, q0 q0Var) {
        rankTodayDialog.f52271h = q0Var;
    }

    @j("com.qennnsad.aknkaksd.presentation.module.rank.dialogs.RankTodayDialog.sourceFactory")
    public static void e(RankTodayDialog rankTodayDialog, m mVar) {
        rankTodayDialog.f52272i = mVar;
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(RankTodayDialog rankTodayDialog) {
        d(rankTodayDialog, this.f52343a.get());
        e(rankTodayDialog, this.f52344b.get());
    }
}
