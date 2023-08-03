package f5;

import android.content.Context;
import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: AppUpdateModule_ProvideApplicationContextFactory.java */
@r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class b implements dagger.internal.h<Context> {

    /* renamed from: a  reason: collision with root package name */
    private final a f65896a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<Context> f65897b;

    public b(a aVar, u7.c<Context> cVar) {
        this.f65896a = aVar;
        this.f65897b = cVar;
    }

    public static b a(a aVar, u7.c<Context> cVar) {
        return new b(aVar, cVar);
    }

    public static Context c(a aVar, Context context) {
        return (Context) p.f(aVar.a(context));
    }

    @Override // u7.c
    /* renamed from: b */
    public Context get() {
        return c(this.f65896a, this.f65897b.get());
    }
}
