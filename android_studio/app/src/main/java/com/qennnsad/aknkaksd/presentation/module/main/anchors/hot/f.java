package com.qennnsad.aknkaksd.presentation.module.main.anchors.hot;

import com.qennnsad.aknkaksd.domain.usecase.anchor.i;
import d6.g;
import dagger.internal.r;

/* compiled from: HotAnchorViewModel_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class f implements g<HotAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<i> f51542a;

    public f(u7.c<i> cVar) {
        this.f51542a = cVar;
    }

    public static g<HotAnchorViewModel> b(u7.c<i> cVar) {
        return new f(cVar);
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(HotAnchorViewModel hotAnchorViewModel) {
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(hotAnchorViewModel, this.f51542a.get());
    }
}
