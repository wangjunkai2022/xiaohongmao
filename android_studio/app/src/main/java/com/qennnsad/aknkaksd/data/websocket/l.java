package com.qennnsad.aknkaksd.data.websocket;

import com.qennnsad.aknkaksd.data.sharedpreference.PrefsHelper;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: WsObjectPool_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class l implements dagger.internal.h<j> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<PrefsHelper> f47873a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f47874b;

    public l(u7.c<PrefsHelper> cVar, u7.c<g5.a> cVar2) {
        this.f47873a = cVar;
        this.f47874b = cVar2;
    }

    public static l a(u7.c<PrefsHelper> cVar, u7.c<g5.a> cVar2) {
        return new l(cVar, cVar2);
    }

    public static j c(PrefsHelper prefsHelper, g5.a aVar) {
        return new j(prefsHelper, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public j get() {
        return c(this.f47873a.get(), this.f47874b.get());
    }
}
