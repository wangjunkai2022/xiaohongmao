package com.qennnsad.aknkaksd.presentation.ui.room.pubmsg;

import android.content.Context;
import com.qennnsad.aknkaksd.util.e0;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: MsgUtils_Factory.java */
@r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@dagger.internal.e
@s("javax.inject.Singleton")
/* loaded from: classes3.dex */
public final class d implements dagger.internal.h<c> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f54092a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f54093b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<e0> f54094c;

    public d(u7.c<Context> cVar, u7.c<g5.a> cVar2, u7.c<e0> cVar3) {
        this.f54092a = cVar;
        this.f54093b = cVar2;
        this.f54094c = cVar3;
    }

    public static d a(u7.c<Context> cVar, u7.c<g5.a> cVar2, u7.c<e0> cVar3) {
        return new d(cVar, cVar2, cVar3);
    }

    public static c c(Context context, g5.a aVar, e0 e0Var) {
        return new c(context, aVar, e0Var);
    }

    @Override // u7.c
    /* renamed from: b */
    public c get() {
        return c(this.f54092a.get(), this.f54093b.get(), this.f54094c.get());
    }
}
