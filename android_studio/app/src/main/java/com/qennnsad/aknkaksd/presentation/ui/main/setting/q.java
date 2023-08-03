package com.qennnsad.aknkaksd.presentation.ui.main.setting;

/* compiled from: ModifyPasswordViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class q implements dagger.internal.h<ModifyPasswordViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.user.k> f53236a;

    public q(u7.c<com.qennnsad.aknkaksd.domain.usecase.user.k> cVar) {
        this.f53236a = cVar;
    }

    public static q a(u7.c<com.qennnsad.aknkaksd.domain.usecase.user.k> cVar) {
        return new q(cVar);
    }

    public static ModifyPasswordViewModel c(com.qennnsad.aknkaksd.domain.usecase.user.k kVar) {
        return new ModifyPasswordViewModel(kVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public ModifyPasswordViewModel get() {
        return c(this.f53236a.get());
    }
}
