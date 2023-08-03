package com.qennnsad.aknkaksd.util.translation;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: TranslatorRapid_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class k implements dagger.internal.h<h> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<d> f55100a;

    public k(u7.c<d> cVar) {
        this.f55100a = cVar;
    }

    public static k a(u7.c<d> cVar) {
        return new k(cVar);
    }

    public static h c(d dVar) {
        return new h(dVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public h get() {
        return c(this.f55100a.get());
    }
}
