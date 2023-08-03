package c5;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: Authenticator_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class d implements dagger.internal.h<b> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f4010a;

    public d(u7.c<g5.a> cVar) {
        this.f4010a = cVar;
    }

    public static d a(u7.c<g5.a> cVar) {
        return new d(cVar);
    }

    public static b c(g5.a aVar) {
        return new b(aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public b get() {
        return c(this.f4010a.get());
    }
}
