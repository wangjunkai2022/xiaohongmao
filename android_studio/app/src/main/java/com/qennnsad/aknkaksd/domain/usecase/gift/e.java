package com.qennnsad.aknkaksd.domain.usecase.gift;

import android.content.Context;
import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: SyncGiftsUseCase_Factory.java */
@r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class e implements h<d> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f48213a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f48214b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<m> f48215c;

    public e(u7.c<Context> cVar, u7.c<g5.a> cVar2, u7.c<m> cVar3) {
        this.f48213a = cVar;
        this.f48214b = cVar2;
        this.f48215c = cVar3;
    }

    public static e a(u7.c<Context> cVar, u7.c<g5.a> cVar2, u7.c<m> cVar3) {
        return new e(cVar, cVar2, cVar3);
    }

    public static d c(Context context, g5.a aVar, m mVar) {
        return new d(context, aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public d get() {
        return c(this.f48213a.get(), this.f48214b.get(), this.f48215c.get());
    }
}
