package com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan;

import com.qennnsad.aknkaksd.domain.usecase.anchor.i;
import d6.g;
import dagger.internal.r;

/* compiled from: VeganAnchorViewModel_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class f implements g<VeganAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<i> f51574a;

    public f(u7.c<i> cVar) {
        this.f51574a = cVar;
    }

    public static g<VeganAnchorViewModel> b(u7.c<i> cVar) {
        return new f(cVar);
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(VeganAnchorViewModel veganAnchorViewModel) {
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(veganAnchorViewModel, this.f51574a.get());
    }
}
