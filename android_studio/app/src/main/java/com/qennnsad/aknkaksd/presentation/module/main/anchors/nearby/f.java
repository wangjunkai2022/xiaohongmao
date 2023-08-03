package com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby;

import com.qennnsad.aknkaksd.domain.usecase.anchor.i;
import d6.g;
import dagger.internal.r;

/* compiled from: NearbyAnchorViewModel_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class f implements g<NearbyAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<i> f51558a;

    public f(u7.c<i> cVar) {
        this.f51558a = cVar;
    }

    public static g<NearbyAnchorViewModel> b(u7.c<i> cVar) {
        return new f(cVar);
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(NearbyAnchorViewModel nearbyAnchorViewModel) {
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(nearbyAnchorViewModel, this.f51558a.get());
    }
}
