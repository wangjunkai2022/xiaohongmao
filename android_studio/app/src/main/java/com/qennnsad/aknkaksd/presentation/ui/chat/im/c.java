package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import dagger.internal.r;

/* compiled from: ChatDetailsActivity_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class c implements d6.g<ChatDetailsActivity> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<l> f52562a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<g5.a> f52563b;

    public c(u7.c<l> cVar, u7.c<g5.a> cVar2) {
        this.f52562a = cVar;
        this.f52563b = cVar2;
    }

    public static d6.g<ChatDetailsActivity> b(u7.c<l> cVar, u7.c<g5.a> cVar2) {
        return new c(cVar, cVar2);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatDetailsActivity.localDataManager")
    public static void c(ChatDetailsActivity chatDetailsActivity, g5.a aVar) {
        chatDetailsActivity.f52540e = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.chat.im.ChatDetailsActivity.navigator")
    public static void e(ChatDetailsActivity chatDetailsActivity, l lVar) {
        chatDetailsActivity.f52539d = lVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(ChatDetailsActivity chatDetailsActivity) {
        e(chatDetailsActivity, this.f52562a.get());
        c(chatDetailsActivity, this.f52563b.get());
    }
}
