package com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby;

import com.qennnsad.aknkaksd.domain.usecase.anchor.i;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: NearbyAnchorViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class c implements h<NearbyAnchorViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<i> f51556a;

    public c(u7.c<i> cVar) {
        this.f51556a = cVar;
    }

    public static c a(u7.c<i> cVar) {
        return new c(cVar);
    }

    public static NearbyAnchorViewModel c() {
        return new NearbyAnchorViewModel();
    }

    @Override // u7.c
    /* renamed from: b */
    public NearbyAnchorViewModel get() {
        NearbyAnchorViewModel c10 = c();
        com.qennnsad.aknkaksd.presentation.module.main.anchors.common.e.c(c10, this.f51556a.get());
        return c10;
    }
}
