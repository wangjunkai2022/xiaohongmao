package com.qennnsad.aknkaksd.presentation.ui.chat.im.settings;

import com.qennnsad.aknkaksd.presentation.ui.chat.im.settings.m;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SettingsViewModelProvider_HiltModules_KeyModule_ProvideFactory.java */
@dagger.internal.e
@r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@s
/* loaded from: classes3.dex */
public final class n implements dagger.internal.h<String> {

    /* compiled from: SettingsViewModelProvider_HiltModules_KeyModule_ProvideFactory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final n f52737a = new n();

        private a() {
        }
    }

    public static n a() {
        return a.f52737a;
    }

    public static String c() {
        return (String) p.f(m.b.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public String get() {
        return c();
    }
}
