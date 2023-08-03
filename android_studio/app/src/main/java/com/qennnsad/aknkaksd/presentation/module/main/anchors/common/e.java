package com.qennnsad.aknkaksd.presentation.module.main.anchors.common;

import dagger.internal.r;

/* compiled from: AbstractAnchorViewModel_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class e<Action> implements d6.g<AbstractAnchorViewModel<Action>> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.i> f51418a;

    public e(u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.i> cVar) {
        this.f51418a = cVar;
    }

    public static <Action> d6.g<AbstractAnchorViewModel<Action>> b(u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.i> cVar) {
        return new e(cVar);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorViewModel.getPageListForAnchorUseCase")
    public static <Action> void c(AbstractAnchorViewModel<Action> abstractAnchorViewModel, com.qennnsad.aknkaksd.domain.usecase.anchor.i iVar) {
        abstractAnchorViewModel.f51397e = iVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(AbstractAnchorViewModel<Action> abstractAnchorViewModel) {
        c(abstractAnchorViewModel, this.f51418a.get());
    }
}
