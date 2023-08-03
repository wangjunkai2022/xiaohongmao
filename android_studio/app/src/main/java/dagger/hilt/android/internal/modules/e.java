package dagger.hilt.android.internal.modules;

import android.content.Context;
import dagger.internal.h;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: ApplicationContextModule_ProvideContextFactory.java */
@r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class e implements h<Context> {

    /* renamed from: a  reason: collision with root package name */
    private final c f62055a;

    public e(c module) {
        this.f62055a = module;
    }

    public static e a(c module) {
        return new e(module);
    }

    public static Context c(c instance) {
        return (Context) p.f(instance.b());
    }

    @Override // u7.c
    /* renamed from: b */
    public Context get() {
        return c(this.f62055a);
    }
}
