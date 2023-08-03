package com.qennnsad.aknkaksd.presentation.module.rank;

import com.qennnsad.aknkaksd.presentation.module.rank.j;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: RankViewModel_HiltModules_KeyModule_ProvideFactory.java */
@dagger.internal.e
@r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@s
/* loaded from: classes3.dex */
public final class k implements dagger.internal.h<String> {

    /* compiled from: RankViewModel_HiltModules_KeyModule_ProvideFactory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final k f52379a = new k();

        private a() {
        }
    }

    public static k a() {
        return a.f52379a;
    }

    public static String c() {
        return (String) p.f(j.b.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public String get() {
        return c();
    }
}
