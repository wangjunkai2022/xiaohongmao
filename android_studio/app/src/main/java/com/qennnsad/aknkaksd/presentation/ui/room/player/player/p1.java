package com.qennnsad.aknkaksd.presentation.ui.room.player.player;

/* compiled from: PlayerActivity_MembersInjector.java */
@dagger.internal.r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class p1 implements d6.g<PlayerActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f53918a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.util.e0> f53919b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c> f53920c;

    public p1(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<com.qennnsad.aknkaksd.util.e0> cVar2, u7.c<com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c> cVar3) {
        this.f53918a = cVar;
        this.f53919b = cVar2;
        this.f53920c = cVar3;
    }

    public static d6.g<PlayerActivity> b(u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar, u7.c<com.qennnsad.aknkaksd.util.e0> cVar2, u7.c<com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c> cVar3) {
        return new p1(cVar, cVar2, cVar3);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity.fanClubUtil")
    public static void c(PlayerActivity playerActivity, com.qennnsad.aknkaksd.util.e0 e0Var) {
        playerActivity.U = e0Var;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity.msgUtils")
    public static void e(PlayerActivity playerActivity, com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.c cVar) {
        playerActivity.V = cVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity.sourceFactory")
    public static void f(PlayerActivity playerActivity, com.qennnsad.aknkaksd.data.repository.m mVar) {
        playerActivity.T = mVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(PlayerActivity playerActivity) {
        f(playerActivity, this.f53918a.get());
        c(playerActivity, this.f53919b.get());
        e(playerActivity, this.f53920c.get());
    }
}
