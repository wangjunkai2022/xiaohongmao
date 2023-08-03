package com.qennnsad.aknkaksd.presentation.common;

import com.qennnsad.aknkaksd.presentation.common.o;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SharedViewModel_HiltModules_KeyModule_ProvideFactory.java */
@dagger.internal.e
@r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@s
/* loaded from: classes3.dex */
public final class p implements dagger.internal.h<String> {

    /* compiled from: SharedViewModel_HiltModules_KeyModule_ProvideFactory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final p f50958a = new p();

        private a() {
        }
    }

    public static p a() {
        return a.f50958a;
    }

    public static String c() {
        return (String) dagger.internal.p.f(o.b.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public String get() {
        return c();
    }
}
