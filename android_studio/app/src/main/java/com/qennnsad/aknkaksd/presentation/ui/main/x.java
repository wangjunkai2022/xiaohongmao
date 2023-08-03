package com.qennnsad.aknkaksd.presentation.ui.main;

import com.qennnsad.aknkaksd.presentation.ui.main.w;

/* compiled from: MainViewModel_HiltModules_KeyModule_ProvideFactory.java */
@dagger.internal.e
@dagger.internal.r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@dagger.internal.s
/* loaded from: classes3.dex */
public final class x implements dagger.internal.h<String> {

    /* compiled from: MainViewModel_HiltModules_KeyModule_ProvideFactory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final x f53256a = new x();

        private a() {
        }
    }

    public static x a() {
        return a.f53256a;
    }

    public static String c() {
        return (String) dagger.internal.p.f(w.b.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public String get() {
        return c();
    }
}
