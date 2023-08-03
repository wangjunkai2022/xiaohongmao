package com.qennnsad.aknkaksd.presentation.module.main.anchors.followed;

import dagger.internal.r;

/* compiled from: FollowedAnchorViewModel_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class h implements d6.g<FollowedAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.i> f51504a;

    public h(u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.i> cVar) {
        this.f51504a = cVar;
    }

    public static d6.g<FollowedAnchorViewModel> b(u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.i> cVar) {
        return new h(cVar);
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(FollowedAnchorViewModel followedAnchorViewModel) {
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(followedAnchorViewModel, this.f51504a.get());
    }
}
