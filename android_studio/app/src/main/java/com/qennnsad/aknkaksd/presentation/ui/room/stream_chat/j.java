package com.qennnsad.aknkaksd.presentation.ui.room.stream_chat;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: StreamChatViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class j implements dagger.internal.h<StreamChatViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f54277a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.room.k> f54278b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f54279c;

    public j(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.room.k> cVar2, u7.c<x4.a> cVar3) {
        this.f54277a = cVar;
        this.f54278b = cVar2;
        this.f54279c = cVar3;
    }

    public static j a(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.room.k> cVar2, u7.c<x4.a> cVar3) {
        return new j(cVar, cVar2, cVar3);
    }

    public static StreamChatViewModel c(g5.a aVar, com.qennnsad.aknkaksd.domain.usecase.room.k kVar, x4.a aVar2) {
        return new StreamChatViewModel(aVar, kVar, aVar2);
    }

    @Override // u7.c
    /* renamed from: b */
    public StreamChatViewModel get() {
        return c(this.f54277a.get(), this.f54278b.get(), this.f54279c.get());
    }
}
