package com.qennnsad.aknkaksd.presentation.module.rank.container;

import androidx.lifecycle.ViewModel;
import d6.i;
import dagger.hilt.android.internal.lifecycle.d;

/* compiled from: RankListViewModel_HiltModules.java */
@o6.a(topLevelClass = RankListViewModel.class)
/* loaded from: classes3.dex */
public final class g {

    /* compiled from: RankListViewModel_HiltModules.java */
    @dagger.hilt.e({f6.f.class})
    @d6.h
    /* loaded from: classes3.dex */
    public static abstract class a {
        private a() {
        }

        @d7.h("com.qennnsad.aknkaksd.presentation.module.rank.container.RankListViewModel")
        @d6.a
        @d7.d
        @dagger.hilt.android.internal.lifecycle.d
        public abstract ViewModel a(RankListViewModel rankListViewModel);
    }

    /* compiled from: RankListViewModel_HiltModules.java */
    @dagger.hilt.e({f6.b.class})
    @d6.h
    /* loaded from: classes3.dex */
    public static final class b {
        private b() {
        }

        @i
        @d7.e
        @d.a
        public static String a() {
            return "com.qennnsad.aknkaksd.presentation.module.rank.container.RankListViewModel";
        }
    }

    private g() {
    }
}
