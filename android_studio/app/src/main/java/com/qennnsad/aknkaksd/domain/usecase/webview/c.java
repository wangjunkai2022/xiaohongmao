package com.qennnsad.aknkaksd.domain.usecase.webview;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.e;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: CheckIfAbleToCreateChatUseCase_Factory.java */
@r
@e
@s
/* loaded from: classes3.dex */
public final class c implements h<b> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f48507a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f48508b;

    public c(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        this.f48507a = cVar;
        this.f48508b = cVar2;
    }

    public static c a(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        return new c(cVar, cVar2);
    }

    public static b c(g5.a aVar, m mVar) {
        return new b(aVar, mVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public b get() {
        return c(this.f48507a.get(), this.f48508b.get());
    }
}
