package com.qennnsad.aknkaksd.presentation.ui.room.player.player.privatedialog;

import com.qennnsad.aknkaksd.util.JwtUtil;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: TicketRoomValidator_Factory.java */
@r
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class f implements h<e> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f53958a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<JwtUtil> f53959b;

    public f(u7.c<g5.a> cVar, u7.c<JwtUtil> cVar2) {
        this.f53958a = cVar;
        this.f53959b = cVar2;
    }

    public static f a(u7.c<g5.a> cVar, u7.c<JwtUtil> cVar2) {
        return new f(cVar, cVar2);
    }

    public static e c(g5.a aVar, JwtUtil jwtUtil) {
        return new e(aVar, jwtUtil);
    }

    @Override // u7.c
    /* renamed from: b */
    public e get() {
        return c(this.f53958a.get(), this.f53959b.get());
    }
}
