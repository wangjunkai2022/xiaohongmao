package com.qennnsad.aknkaksd.presentation.module.rank;

import androidx.lifecycle.SavedStateHandle;
import com.qennnsad.aknkaksd.domain.usecase.other_user.q;
import com.qennnsad.aknkaksd.presentation.ui.main.y;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: RankViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class i implements dagger.internal.h<RankViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<SavedStateHandle> f52373a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.h> f52374b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> f52375c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<q> f52376d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<g5.a> f52377e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<y> f52378f;

    public i(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.h> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> cVar3, u7.c<q> cVar4, u7.c<g5.a> cVar5, u7.c<y> cVar6) {
        this.f52373a = cVar;
        this.f52374b = cVar2;
        this.f52375c = cVar3;
        this.f52376d = cVar4;
        this.f52377e = cVar5;
        this.f52378f = cVar6;
    }

    public static i a(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.h> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.g> cVar3, u7.c<q> cVar4, u7.c<g5.a> cVar5, u7.c<y> cVar6) {
        return new i(cVar, cVar2, cVar3, cVar4, cVar5, cVar6);
    }

    public static RankViewModel c(SavedStateHandle savedStateHandle, com.qennnsad.aknkaksd.domain.usecase.h hVar, com.qennnsad.aknkaksd.domain.usecase.other_user.g gVar, q qVar, g5.a aVar, y yVar) {
        return new RankViewModel(savedStateHandle, hVar, gVar, qVar, aVar, yVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public RankViewModel get() {
        return c(this.f52373a.get(), this.f52374b.get(), this.f52375c.get(), this.f52376d.get(), this.f52377e.get(), this.f52378f.get());
    }
}
