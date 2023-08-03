package com.qennnsad.aknkaksd.presentation.ui.widget.userinfo;

import dagger.internal.r;

/* compiled from: BaseUserInfoDialog_MembersInjector.java */
@r
@dagger.internal.e
/* loaded from: classes3.dex */
public final class b implements d6.g<BaseUserInfoDialog> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<g5.a> f54454a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.data.repository.m> f54455b;

    public b(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        this.f54454a = cVar;
        this.f54455b = cVar2;
    }

    public static d6.g<BaseUserInfoDialog> b(u7.c<g5.a> cVar, u7.c<com.qennnsad.aknkaksd.data.repository.m> cVar2) {
        return new b(cVar, cVar2);
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog.localDataManager")
    public static void c(BaseUserInfoDialog baseUserInfoDialog, g5.a aVar) {
        baseUserInfoDialog.f54437g = aVar;
    }

    @dagger.internal.j("com.qennnsad.aknkaksd.presentation.ui.widget.userinfo.BaseUserInfoDialog.sourceFactory")
    public static void e(BaseUserInfoDialog baseUserInfoDialog, com.qennnsad.aknkaksd.data.repository.m mVar) {
        baseUserInfoDialog.f54438h = mVar;
    }

    @Override // d6.g
    /* renamed from: d */
    public void a(BaseUserInfoDialog baseUserInfoDialog) {
        c(baseUserInfoDialog, this.f54454a.get());
        e(baseUserInfoDialog, this.f54455b.get());
    }
}
