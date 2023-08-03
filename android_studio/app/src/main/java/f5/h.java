package f5;

import dagger.internal.p;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SdkModule_ProvideDataManagerFactory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class h implements dagger.internal.h<com.im.freechat.sdk.a> {

    /* renamed from: a  reason: collision with root package name */
    private final g f65918a;

    public h(g gVar) {
        this.f65918a = gVar;
    }

    public static h a(g gVar) {
        return new h(gVar);
    }

    public static com.im.freechat.sdk.a c(g gVar) {
        return (com.im.freechat.sdk.a) p.f(gVar.a());
    }

    @Override // u7.c
    /* renamed from: b */
    public com.im.freechat.sdk.a get() {
        return c(this.f65918a);
    }
}
