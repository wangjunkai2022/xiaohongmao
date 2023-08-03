package com.qennnsad.aknkaksd.presentation.ui.room.stream_chat;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;

/* compiled from: StreamChatDialog_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class i implements d6.g<StreamChatDialog> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f54275a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f54276b;

    public i(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        this.f54275a = cVar;
        this.f54276b = cVar2;
    }

    public static d6.g<StreamChatDialog> b(u7.c<g5.a> cVar, u7.c<m> cVar2) {
        return new i(cVar, cVar2);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatDialog.localDataManager")
    public static void c(StreamChatDialog streamChatDialog, g5.a aVar) {
        streamChatDialog.f54207i = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.room.stream_chat.StreamChatDialog.sourceFactory")
    public static void e(StreamChatDialog streamChatDialog, m mVar) {
        streamChatDialog.f54208j = mVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(StreamChatDialog streamChatDialog) {
        c(streamChatDialog, this.f54275a.get());
        e(streamChatDialog, this.f54276b.get());
    }
}
