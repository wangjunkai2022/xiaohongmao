package com.qennnsad.aknkaksd.presentation.common;

import androidx.lifecycle.ViewModel;
import dagger.hilt.android.internal.lifecycle.d;

/* compiled from: SharedViewModel_HiltModules.java */
@o6.a(topLevelClass = SharedViewModel.class)
/* loaded from: classes3.dex */
public final class o {

    /* compiled from: SharedViewModel_HiltModules.java */
    @dagger.hilt.e({f6.f.class})
    @d6.h
    /* loaded from: classes3.dex */
    public static abstract class a {
        private a() {
        }

        @d7.h("com.qennnsad.aknkaksd.presentation.common.SharedViewModel")
        @d6.a
        @d7.d
        @dagger.hilt.android.internal.lifecycle.d
        public abstract ViewModel a(SharedViewModel sharedViewModel);
    }

    /* compiled from: SharedViewModel_HiltModules.java */
    @dagger.hilt.e({f6.b.class})
    @d6.h
    /* loaded from: classes3.dex */
    public static final class b {
        private b() {
        }

        @d6.i
        @d7.e
        @d.a
        public static String a() {
            return "com.qennnsad.aknkaksd.presentation.common.SharedViewModel";
        }
    }

    private o() {
    }
}
