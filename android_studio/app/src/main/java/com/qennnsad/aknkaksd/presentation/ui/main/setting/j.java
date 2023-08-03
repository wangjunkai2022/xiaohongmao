package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import com.qennnsad.aknkaksd.presentation.ui.main.setting.i;

/* compiled from: BlacklistViewModel_HiltModules_KeyModule_ProvideFactory.java */
@dagger.internal.e
@dagger.internal.r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@dagger.internal.s
/* loaded from: classes3.dex */
public final class j implements dagger.internal.h<String> {

    /* compiled from: BlacklistViewModel_HiltModules_KeyModule_ProvideFactory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final j f53218a = new j();

        private a() {
        }
    }

    public static j a() {
        return a.f53218a;
    }

    public static String c() {
        return (String) dagger.internal.p.f(i.b.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public String get() {
        return c();
    }
}
