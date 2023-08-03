package com.qennnsad.aknkaksd.util.translation;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: TranslatorBackend_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class e implements dagger.internal.h<d> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<m> f55075a;

    public e(u7.c<m> cVar) {
        this.f55075a = cVar;
    }

    public static e a(u7.c<m> cVar) {
        return new e(cVar);
    }

    public static d c(m mVar) {
        return new d(mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public d get() {
        return c(this.f55075a.get());
    }
}
