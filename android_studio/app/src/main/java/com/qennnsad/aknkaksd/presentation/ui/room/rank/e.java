package com.qennnsad.aknkaksd.presentation.ui.room.rank;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.j;
import dagger.internal.r;

/* compiled from: RoomSeatRankDialog_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class e implements d6.g<RoomSeatRankDialog> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f54197a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f54198b;

    public e(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        this.f54197a = cVar;
        this.f54198b = cVar2;
    }

    public static d6.g<RoomSeatRankDialog> b(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        return new e(cVar, cVar2);
    }

    @j("com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankDialog.localDataManager")
    public static void c(RoomSeatRankDialog roomSeatRankDialog, g5.a aVar) {
        roomSeatRankDialog.f54145h = aVar;
    }

    @j("com.qennnsad.aknkaksd.presentation.ui.room.rank.RoomSeatRankDialog.sourceFactory")
    public static void e(RoomSeatRankDialog roomSeatRankDialog, m mVar) {
        roomSeatRankDialog.f54146i = mVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(RoomSeatRankDialog roomSeatRankDialog) {
        c(roomSeatRankDialog, this.f54197a.get());
        e(roomSeatRankDialog, this.f54198b.get());
    }
}
