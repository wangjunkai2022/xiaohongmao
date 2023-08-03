package com.qennnsad.aknkaksd.domain.usecase.gamecenter;

import android.content.Context;
import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: PrepareSvgaUseCase_Factory.java */
@r({"dagger.hilt.android.qualifiers.ApplicationContext"})
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class c implements dagger.internal.h<b> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<Context> f48180a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f48181b;

    public c(u7.c<Context> cVar, u7.c<m> cVar2) {
        this.f48180a = cVar;
        this.f48181b = cVar2;
    }

    public static c a(u7.c<Context> cVar, u7.c<m> cVar2) {
        return new c(cVar, cVar2);
    }

    public static b c(Context context, m mVar) {
        return new b(context, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public b get() {
        return c(this.f48180a.get(), this.f48181b.get());
    }
}
