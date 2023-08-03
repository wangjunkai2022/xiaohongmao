package com.qennnsad.aknkaksd.presentation.module.main.anchors.vip;

import com.qennnsad.aknkaksd.domain.usecase.anchor.i;
import d6.g;
import dagger.internal.r;

/* compiled from: VipAnchorViewModel_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class f implements g<VipAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<i> f51590a;

    public f(u7.c<i> cVar) {
        this.f51590a = cVar;
    }

    public static g<VipAnchorViewModel> b(u7.c<i> cVar) {
        return new f(cVar);
    }

    @Override // d6.g
    /* renamed from: c */
    public void a(VipAnchorViewModel vipAnchorViewModel) {
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(vipAnchorViewModel, this.f51590a.get());
    }
}
