package f5;

import com.qennnsad.aknkaksd.data.repository.m;
import com.qennnsad.aknkaksd.util.t0;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: DiHelper_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class f implements dagger.internal.h<e> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f65909a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f65910b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f65911c;

    /* renamed from: d  reason: collision with root package name */
    private final u7.c<t0> f65912d;

    /* renamed from: e  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.websocket.j> f65913e;

    /* renamed from: f  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.dns.h> f65914f;

    /* renamed from: g  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c> f65915g;

    /* renamed from: h  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.util.translation.h> f65916h;

    /* renamed from: i  reason: collision with root package name */
    private final u7.c<c5.b> f65917i;

    public f(u7.c<g5.a> cVar, u7.c<m> cVar2, u7.c<x4.a> cVar3, u7.c<t0> cVar4, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar5, u7.c<com.qennnsad.aknkaksd.data.repository.dns.h> cVar6, u7.c<com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c> cVar7, u7.c<com.qennnsad.aknkaksd.util.translation.h> cVar8, u7.c<c5.b> cVar9) {
        this.f65909a = cVar;
        this.f65910b = cVar2;
        this.f65911c = cVar3;
        this.f65912d = cVar4;
        this.f65913e = cVar5;
        this.f65914f = cVar6;
        this.f65915g = cVar7;
        this.f65916h = cVar8;
        this.f65917i = cVar9;
    }

    public static f a(u7.c<g5.a> cVar, u7.c<m> cVar2, u7.c<x4.a> cVar3, u7.c<t0> cVar4, u7.c<com.qennnsad.aknkaksd.data.websocket.j> cVar5, u7.c<com.qennnsad.aknkaksd.data.repository.dns.h> cVar6, u7.c<com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c> cVar7, u7.c<com.qennnsad.aknkaksd.util.translation.h> cVar8, u7.c<c5.b> cVar9) {
        return new f(cVar, cVar2, cVar3, cVar4, cVar5, cVar6, cVar7, cVar8, cVar9);
    }

    public static e c(g5.a aVar, m mVar, x4.a aVar2, t0 t0Var, com.qennnsad.aknkaksd.data.websocket.j jVar, com.qennnsad.aknkaksd.data.repository.dns.h hVar, com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c cVar, com.qennnsad.aknkaksd.util.translation.h hVar2, c5.b bVar) {
        return new e(aVar, mVar, aVar2, t0Var, jVar, hVar, cVar, hVar2, bVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public e get() {
        return c(this.f65909a.get(), this.f65910b.get(), this.f65911c.get(), this.f65912d.get(), this.f65913e.get(), this.f65914f.get(), this.f65915g.get(), this.f65916h.get(), this.f65917i.get());
    }
}
