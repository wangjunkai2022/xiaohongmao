package com.qennnsad.aknkaksd.presentation.module.rank.dialogs;

import androidx.lifecycle.SavedStateHandle;
import com.qennnsad.aknkaksd.domain.usecase.other_user.q;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: RankTodayViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class g implements dagger.internal.h<RankTodayViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<SavedStateHandle> f52345a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.h> f52346b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> f52347c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<q> f52348d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<g5.a> f52349e;

    public g(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.h> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> cVar3, u7.c<q> cVar4, u7.c<g5.a> cVar5) {
        this.f52345a = cVar;
        this.f52346b = cVar2;
        this.f52347c = cVar3;
        this.f52348d = cVar4;
        this.f52349e = cVar5;
    }

    public static g a(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.h> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> cVar3, u7.c<q> cVar4, u7.c<g5.a> cVar5) {
        return new g(cVar, cVar2, cVar3, cVar4, cVar5);
    }

    public static RankTodayViewModel c(SavedStateHandle savedStateHandle, com.qennnsad.aknkaksd.domain.usecase.h hVar, com.qennnsad.aknkaksd.domain.usecase.other_user.g gVar, q qVar, g5.a aVar) {
        return new RankTodayViewModel(savedStateHandle, hVar, gVar, qVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public RankTodayViewModel get() {
        return c(this.f52345a.get(), this.f52346b.get(), this.f52347c.get(), this.f52348d.get(), this.f52349e.get());
    }
}
