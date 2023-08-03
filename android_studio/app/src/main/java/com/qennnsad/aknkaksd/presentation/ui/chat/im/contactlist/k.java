package com.qennnsad.aknkaksd.presentation.ui.chat.im.contactlist;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: ContactListViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class k implements dagger.internal.h<ContactListViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<com.im.freechat.sdk.a> f52682a;

    public k(u7.c<com.im.freechat.sdk.a> cVar) {
        this.f52682a = cVar;
    }

    public static k a(u7.c<com.im.freechat.sdk.a> cVar) {
        return new k(cVar);
    }

    public static ContactListViewModel c(com.im.freechat.sdk.a aVar) {
        return new ContactListViewModel(aVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public ContactListViewModel get() {
        return c(this.f52682a.get());
    }
}
