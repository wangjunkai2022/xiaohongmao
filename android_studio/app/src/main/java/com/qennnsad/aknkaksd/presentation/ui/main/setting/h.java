package com.qennnsad.aknkaksd.presentation.ui.main.setting;

/* compiled from: BlacklistViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class h implements dagger.internal.h<BlacklistViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f53215a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.user.d> f53216b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.user.n> f53217c;

    public h(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.d> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.n> cVar3) {
        this.f53215a = cVar;
        this.f53216b = cVar2;
        this.f53217c = cVar3;
    }

    public static h a(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.d> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.user.n> cVar3) {
        return new h(cVar, cVar2, cVar3);
    }

    public static BlacklistViewModel c(com.qennnsad.aknkaksd.data.repository.m mVar, com.qennnsad.aknkaksd.domain.usecase.user.d dVar, com.qennnsad.aknkaksd.domain.usecase.user.n nVar) {
        return new BlacklistViewModel(mVar, dVar, nVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public BlacklistViewModel get() {
        return c(this.f53215a.get(), this.f53216b.get(), this.f53217c.get());
    }
}
