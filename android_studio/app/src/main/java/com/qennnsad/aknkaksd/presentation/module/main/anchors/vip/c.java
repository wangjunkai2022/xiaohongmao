package com.qennnsad.aknkaksd.presentation.module.main.anchors.vip;

import com.qennnsad.aknkaksd.domain.usecase.anchor.i;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: VipAnchorViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class c implements h<VipAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<i> f51588a;

    public c(u7.c<i> cVar) {
        this.f51588a = cVar;
    }

    public static c a(u7.c<i> cVar) {
        return new c(cVar);
    }

    public static VipAnchorViewModel c() {
        return new VipAnchorViewModel();
    }

    @Override // u7.c
    /* renamed from: b */
    public VipAnchorViewModel get() {
        VipAnchorViewModel c10 = c();
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(c10, this.f51588a.get());
        return c10;
    }
}
