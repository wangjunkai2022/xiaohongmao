package com.qennnsad.aknkaksd.presentation.module.contributors;

import androidx.lifecycle.SavedStateHandle;
import com.qennnsad.aknkaksd.domain.usecase.user.w;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: ContributorsViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class j implements dagger.internal.h<ContributorsViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<SavedStateHandle> f51368a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.b> f51369b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.j> f51370c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<w> f51371d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<g5.a> f51372e;

    public j(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.b> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.j> cVar3, u7.c<w> cVar4, u7.c<g5.a> cVar5) {
        this.f51368a = cVar;
        this.f51369b = cVar2;
        this.f51370c = cVar3;
        this.f51371d = cVar4;
        this.f51372e = cVar5;
    }

    public static j a(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.b> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.other_user.j> cVar3, u7.c<w> cVar4, u7.c<g5.a> cVar5) {
        return new j(cVar, cVar2, cVar3, cVar4, cVar5);
    }

    public static ContributorsViewModel c(SavedStateHandle savedStateHandle, com.qennnsad.aknkaksd.domain.usecase.b bVar, com.qennnsad.aknkaksd.domain.usecase.other_user.j jVar, w wVar, g5.a aVar) {
        return new ContributorsViewModel(savedStateHandle, bVar, jVar, wVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public ContributorsViewModel get() {
        return c(this.f51368a.get(), this.f51369b.get(), this.f51370c.get(), this.f51371d.get(), this.f51372e.get());
    }
}
