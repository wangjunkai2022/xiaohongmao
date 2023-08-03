package com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist;

import com.qennnsad.aknkaksd.data.repository.m;
import dagger.internal.r;

/* compiled from: ChatListFragment_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class f implements d6.g<ChatListFragment> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f52637a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<m> f52638b;

    /* renamed from: c  reason: collision with root package name */
    private final u7.c<x4.a> f52639c;

    public f(u7.c<g5.a> cVar, u7.c<m> cVar2, u7.c<x4.a> cVar3) {
        this.f52637a = cVar;
        this.f52638b = cVar2;
        this.f52639c = cVar3;
    }

    public static d6.g<ChatListFragment> b(u7.c<g5.a> cVar, u7.c<m> cVar2, u7.c<x4.a> cVar3) {
        return new f(cVar, cVar2, cVar3);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment.analytics")
    public static void c(ChatListFragment chatListFragment, x4.a aVar) {
        chatListFragment.f52604j = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment.localDataManager")
    public static void d(ChatListFragment chatListFragment, g5.a aVar) {
        chatListFragment.f52602h = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist.ChatListFragment.sourceFactory")
    public static void f(ChatListFragment chatListFragment, m mVar) {
        chatListFragment.f52603i = mVar;
    }

    @Override // d6.g
    /* renamed from: e */
    public void a(ChatListFragment chatListFragment) {
        d(chatListFragment, this.f52637a.get());
        f(chatListFragment, this.f52638b.get());
        c(chatListFragment, this.f52639c.get());
    }
}
