package f5;

import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SdkModule_ProvideUiManagerFactory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class j implements dagger.internal.h<com.im.freechat.sdk.d> {

    /* renamed from: a  reason: collision with root package name */
    private final g f65920a;

    public j(g gVar) {
        this.f65920a = gVar;
    }

    public static j a(g gVar) {
        return new j(gVar);
    }

    public static com.im.freechat.sdk.d c(g gVar) {
        return (com.im.freechat.sdk.d) p.f(gVar.c());
    }

    @Override // u7.c
    /* renamed from: b */
    public com.im.freechat.sdk.d get() {
        return c(this.f65920a);
    }
}
