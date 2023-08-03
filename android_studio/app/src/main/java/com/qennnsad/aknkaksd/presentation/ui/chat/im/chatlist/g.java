package com.qennnsad.aknkaksd.presentation.ui.chat.im.chatlist;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: ChatListViewModelProvider_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class g implements dagger.internal.h<ChatListViewModelProvider> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.im.freechat.sdk.d> f52640a;

    public g(u7.c<com.im.freechat.sdk.d> cVar) {
        this.f52640a = cVar;
    }

    public static g a(u7.c<com.im.freechat.sdk.d> cVar) {
        return new g(cVar);
    }

    public static ChatListViewModelProvider c(com.im.freechat.sdk.d dVar) {
        return new ChatListViewModelProvider(dVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public ChatListViewModelProvider get() {
        return c(this.f52640a.get());
    }
}
