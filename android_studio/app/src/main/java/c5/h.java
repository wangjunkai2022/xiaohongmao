package c5;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: WebViewAuthInterceptor_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class h implements dagger.internal.h<g> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<b> f4017a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f4018b;

    public h(u7.c<b> cVar, u7.c<g5.a> cVar2) {
        this.f4017a = cVar;
        this.f4018b = cVar2;
    }

    public static h a(u7.c<b> cVar, u7.c<g5.a> cVar2) {
        return new h(cVar, cVar2);
    }

    public static g c(b bVar, g5.a aVar) {
        return new g(bVar, aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public g get() {
        return c(this.f4017a.get(), this.f4018b.get());
    }
}
