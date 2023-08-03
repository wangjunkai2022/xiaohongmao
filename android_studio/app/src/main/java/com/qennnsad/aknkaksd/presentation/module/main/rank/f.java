package com.qennnsad.aknkaksd.presentation.module.main.rank;

import androidx.lifecycle.ViewModel;
import d6.h;
import d6.i;
import dagger.hilt.android.internal.lifecycle.d;

/* compiled from: MainRankViewModel_HiltModules.java */
@o6.a(topLevelClass = MainRankViewModel.class)
/* loaded from: classes3.dex */
public final class f {

    /* compiled from: MainRankViewModel_HiltModules.java */
    @dagger.hilt.e({f6.f.class})
    @h
    /* loaded from: classes3.dex */
    public static abstract class a {
        private a() {
        }

        @d7.h("com.qennnsad.aknkaksd.presentation.module.main.rank.MainRankViewModel")
        @d6.a
        @d7.d
        @dagger.hilt.android.internal.lifecycle.d
        public abstract ViewModel a(MainRankViewModel mainRankViewModel);
    }

    /* compiled from: MainRankViewModel_HiltModules.java */
    @dagger.hilt.e({f6.b.class})
    @h
    /* loaded from: classes3.dex */
    public static final class b {
        private b() {
        }

        @i
        @d7.e
        @d.a
        public static String a() {
            return "com.qennnsad.aknkaksd.presentation.module.main.rank.MainRankViewModel";
        }
    }

    private f() {
    }
}
