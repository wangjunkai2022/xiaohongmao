package com.qennnsad.aknkaksd.presentation.module.rank.container;

import com.qennnsad.aknkaksd.presentation.module.rank.container.g;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: RankListViewModel_HiltModules_KeyModule_ProvideFactory.java */
@dagger.internal.e
@r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@s
/* loaded from: classes3.dex */
public final class h implements dagger.internal.h<String> {

    /* compiled from: RankListViewModel_HiltModules_KeyModule_ProvideFactory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final h f52266a = new h();

        private a() {
        }
    }

    public static h a() {
        return a.f52266a;
    }

    public static String c() {
        return (String) p.f(g.b.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public String get() {
        return c();
    }
}
