package com.qennnsad.aknkaksd.presentation.ui.main.mall;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: MallViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class i implements dagger.internal.h<MallViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.webview.b> f52863a;

    public i(u7.c<com.qennnsad.aknkaksd.domain.usecase.webview.b> cVar) {
        this.f52863a = cVar;
    }

    public static i a(u7.c<com.qennnsad.aknkaksd.domain.usecase.webview.b> cVar) {
        return new i(cVar);
    }

    public static MallViewModel c(com.qennnsad.aknkaksd.domain.usecase.webview.b bVar) {
        return new MallViewModel(bVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public MallViewModel get() {
        return c(this.f52863a.get());
    }
}
