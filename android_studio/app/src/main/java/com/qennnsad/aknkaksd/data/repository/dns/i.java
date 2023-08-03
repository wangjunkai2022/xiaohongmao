package com.qennnsad.aknkaksd.data.repository.dns;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: OverseasDetector_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class i implements dagger.internal.h<h> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f47735a;

    public i(u7.c<g5.a> cVar) {
        this.f47735a = cVar;
    }

    public static i a(u7.c<g5.a> cVar) {
        return new i(cVar);
    }

    public static h c(g5.a aVar) {
        return new h(aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public h get() {
        return c(this.f47735a.get());
    }
}
