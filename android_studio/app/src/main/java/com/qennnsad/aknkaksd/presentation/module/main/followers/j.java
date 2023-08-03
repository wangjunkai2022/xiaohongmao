package com.qennnsad.aknkaksd.presentation.module.main.followers;

import androidx.lifecycle.SavedStateHandle;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: FollowersViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class j implements dagger.internal.h<FollowersViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<SavedStateHandle> f51648a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f51649b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f51650c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.m> f51651d;

    public j(u7.c<SavedStateHandle> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.m> cVar4) {
        this.f51648a = cVar;
        this.f51649b = cVar2;
        this.f51650c = cVar3;
        this.f51651d = cVar4;
    }

    public static j a(u7.c<SavedStateHandle> cVar, u7.c<g5.a> cVar2, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar3, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.m> cVar4) {
        return new j(cVar, cVar2, cVar3, cVar4);
    }

    public static FollowersViewModel c(SavedStateHandle savedStateHandle, g5.a aVar, com.qennnsad.aknkaksd.data.repository.m mVar, com.qennnsad.aknkaksd.domain.usecase.anchor.m mVar2) {
        return new FollowersViewModel(savedStateHandle, aVar, mVar, mVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public FollowersViewModel get() {
        return c(this.f51648a.get(), this.f51649b.get(), this.f51650c.get(), this.f51651d.get());
    }
}
