package com.qennnsad.aknkaksd.presentation.ui.main.setting;

/* compiled from: SettingsFragment_MembersInjector.java */
@dagger.internal.r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class z implements d6.g<SettingsFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f53243a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<x4.a> f53244b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.util.q> f53245c;

    public z(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.util.q> cVar3) {
        this.f53243a = cVar;
        this.f53244b = cVar2;
        this.f53245c = cVar3;
    }

    public static d6.g<SettingsFragment> b(u7.c<g5.a> cVar, u7.c<x4.a> cVar2, u7.c<com.qennnsad.aknkaksd.util.q> cVar3) {
        return new z(cVar, cVar2, cVar3);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.main.setting.SettingsFragment.debugUtil")
    public static void c(SettingsFragment settingsFragment, com.qennnsad.aknkaksd.util.q qVar) {
        settingsFragment.f53174l = qVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(SettingsFragment settingsFragment) {
        com.qennnsad.aknkaksd.presentation.common.k.d(settingsFragment, this.f53243a.get());
        com.qennnsad.aknkaksd.presentation.common.k.c(settingsFragment, this.f53244b.get());
        c(settingsFragment, this.f53245c.get());
    }
}
