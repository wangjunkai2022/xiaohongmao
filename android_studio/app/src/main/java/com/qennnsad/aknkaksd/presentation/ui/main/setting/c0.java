package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import com.qennnsad.aknkaksd.domain.usecase.user.k1;
import com.qennnsad.aknkaksd.domain.usecase.user.o1;

/* compiled from: SettingsViewModel_Factory.java */
@dagger.internal.r
@dagger.internal.e
@dagger.internal.s
/* loaded from: classes3.dex */
public final class c0 implements dagger.internal.h<SettingsViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<k1> f53205a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<o1> f53206b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.c0> f53207c;

    public c0(u7.c<k1> cVar, u7.c<o1> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.c0> cVar3) {
        this.f53205a = cVar;
        this.f53206b = cVar2;
        this.f53207c = cVar3;
    }

    public static c0 a(u7.c<k1> cVar, u7.c<o1> cVar2, u7.c<com.qennnsad.aknkaksd.domain.usecase.auth.c0> cVar3) {
        return new c0(cVar, cVar2, cVar3);
    }

    public static SettingsViewModel c(k1 k1Var, o1 o1Var, com.qennnsad.aknkaksd.domain.usecase.auth.c0 c0Var) {
        return new SettingsViewModel(k1Var, o1Var, c0Var);
    }

    @Override // u7.c
    /* renamed from: b */
    public SettingsViewModel get() {
        return c(this.f53205a.get(), this.f53206b.get(), this.f53207c.get());
    }
}
