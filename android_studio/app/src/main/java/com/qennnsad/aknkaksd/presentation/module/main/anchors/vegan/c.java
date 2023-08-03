package com.qennnsad.aknkaksd.presentation.module.main.anchors.vegan;

import com.qennnsad.aknkaksd.domain.usecase.anchor.i;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: VeganAnchorViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class c implements h<VeganAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<i> f51572a;

    public c(u7.c<i> cVar) {
        this.f51572a = cVar;
    }

    public static c a(u7.c<i> cVar) {
        return new c(cVar);
    }

    public static VeganAnchorViewModel c() {
        return new VeganAnchorViewModel();
    }

    @Override // u7.c
    /* renamed from: b */
    public VeganAnchorViewModel get() {
        VeganAnchorViewModel c10 = c();
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(c10, this.f51572a.get());
        return c10;
    }
}
