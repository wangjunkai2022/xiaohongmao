package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import com.qennnsad.aknkaksd.presentation.ui.chat.im.i;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: ChatViewModel_HiltModules_KeyModule_ProvideFactory.java */
@dagger.internal.e
@r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@s
/* loaded from: classes3.dex */
public final class j implements dagger.internal.h<String> {

    /* compiled from: ChatViewModel_HiltModules_KeyModule_ProvideFactory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final j f52692a = new j();

        private a() {
        }
    }

    public static j a() {
        return a.f52692a;
    }

    public static String c() {
        return (String) p.f(i.b.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public String get() {
        return c();
    }
}
