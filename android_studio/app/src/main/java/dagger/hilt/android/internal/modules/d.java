package dagger.hilt.android.internal.modules;

import android.app.Application;
import dagger.internal.h;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: ApplicationContextModule_ProvideApplicationFactory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class d implements h<Application> {

    /* renamed from: a  reason: collision with root package name */
    private final c f62054a;

    public d(c module) {
        this.f62054a = module;
    }

    public static d a(c module) {
        return new d(module);
    }

    public static Application c(c instance) {
        return (Application) p.f(instance.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public Application get() {
        return c(this.f62054a);
    }
}
