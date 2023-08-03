package com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist;

import com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist.l;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: ContactListViewModel_HiltModules_KeyModule_ProvideFactory.java */
@dagger.internal.e
@r({"dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"})
@s
/* loaded from: classes3.dex */
public final class m implements dagger.internal.h<String> {

    /* compiled from: ContactListViewModel_HiltModules_KeyModule_ProvideFactory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final m f52683a = new m();

        private a() {
        }
    }

    public static m a() {
        return a.f52683a;
    }

    public static String c() {
        return (String) p.f(l.b.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public String get() {
        return c();
    }
}
