package com.qennnsad.aknkaksd.presentation.ui.chat.im.settings;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SettingsViewModelProvider_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class l implements dagger.internal.h<SettingsViewModelProvider> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.im.freechat.sdk.d> f52736a;

    public l(u7.c<com.im.freechat.sdk.d> cVar) {
        this.f52736a = cVar;
    }

    public static l a(u7.c<com.im.freechat.sdk.d> cVar) {
        return new l(cVar);
    }

    public static SettingsViewModelProvider c(com.im.freechat.sdk.d dVar) {
        return new SettingsViewModelProvider(dVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public SettingsViewModelProvider get() {
        return c(this.f52736a.get());
    }
}
