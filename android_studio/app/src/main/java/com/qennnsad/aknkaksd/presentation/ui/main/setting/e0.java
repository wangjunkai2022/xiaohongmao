package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import com.qennnsad.aknkaksd.presentation.ui.main.setting.d0;

/* compiled from: SettingsViewModel_HiltModules_KeyModule_ProvideFactory.java */
@dagger.internal.e
@dagger.internal.r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@dagger.internal.s
/* loaded from: classes3.dex */
public final class e0 implements dagger.internal.h<String> {

    /* compiled from: SettingsViewModel_HiltModules_KeyModule_ProvideFactory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final e0 f53209a = new e0();

        private a() {
        }
    }

    public static e0 a() {
        return a.f53209a;
    }

    public static String c() {
        return (String) dagger.internal.p.f(d0.b.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public String get() {
        return c();
    }
}
