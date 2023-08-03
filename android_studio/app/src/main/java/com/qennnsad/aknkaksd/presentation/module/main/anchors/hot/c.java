package com.qennnsad.aknkaksd.presentation.module.main.anchors.hot;

import com.qennnsad.aknkaksd.domain.usecase.anchor.i;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: HotAnchorViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class c implements h<HotAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<i> f51540a;

    public c(u7.c<i> cVar) {
        this.f51540a = cVar;
    }

    public static c a(u7.c<i> cVar) {
        return new c(cVar);
    }

    public static HotAnchorViewModel c() {
        return new HotAnchorViewModel();
    }

    @Override // u7.c
    /* renamed from: b */
    public HotAnchorViewModel get() {
        HotAnchorViewModel c10 = c();
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(c10, this.f51540a.get());
        return c10;
    }
}
