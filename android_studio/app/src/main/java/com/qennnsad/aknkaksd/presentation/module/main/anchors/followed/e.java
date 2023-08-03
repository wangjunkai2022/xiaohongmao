package com.qennnsad.aknkaksd.presentation.module.main.anchors.followed;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: FollowedAnchorViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class e implements dagger.internal.h<FollowedAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f51500a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.f> f51501b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.i> f51502c;

    public e(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.f> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.i> cVar3) {
        this.f51500a = cVar;
        this.f51501b = cVar2;
        this.f51502c = cVar3;
    }

    public static e a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.f> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.anchor.i> cVar3) {
        return new e(cVar, cVar2, cVar3);
    }

    public static FollowedAnchorViewModel c(g5.a aVar, com.qennnsad.aknkaksd.domain.usecase.anchor.f fVar) {
        return new FollowedAnchorViewModel(aVar, fVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public FollowedAnchorViewModel get() {
        FollowedAnchorViewModel c10 = c(this.f51500a.get(), this.f51501b.get());
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(c10, this.f51502c.get());
        return c10;
    }
}
