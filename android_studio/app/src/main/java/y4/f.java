package y4;

import android.content.Context;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: AnalyticsController_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class f implements h<e> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f94735a;

    public f(u7.c<Context> cVar) {
        this.f94735a = cVar;
    }

    public static f a(u7.c<Context> cVar) {
        return new f(cVar);
    }

    public static e c(Context context) {
        return new e(context);
    }

    @Override // u7.c
    /* renamed from: b */
    public e get() {
        return c(this.f94735a.get());
    }
}
