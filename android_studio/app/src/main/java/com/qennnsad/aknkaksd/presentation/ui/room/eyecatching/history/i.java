package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;

/* compiled from: HistoryListFragmentDialog_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class i implements d6.g<g> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<m> f53361a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f53362b;

    public i(u7.c<m> cVar, u7.c<g5.a> cVar2) {
        this.f53361a = cVar;
        this.f53362b = cVar2;
    }

    public static d6.g<g> b(u7.c<m> cVar, u7.c<g5.a> cVar2) {
        return new i(cVar, cVar2);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.HistoryListFragmentDialog.localDataManager")
    public static void c(g gVar, g5.a aVar) {
        gVar.f53346j = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.history.HistoryListFragmentDialog.sourceFactory")
    public static void e(g gVar, m mVar) {
        gVar.f53345i = mVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(g gVar) {
        e(gVar, this.f53361a.get());
        c(gVar, this.f53362b.get());
    }
}
