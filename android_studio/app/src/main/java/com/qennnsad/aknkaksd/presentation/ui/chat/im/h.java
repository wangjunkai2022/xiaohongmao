package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import dagger.internal.r;
import dagger.internal.s;

/* compiled from: ChatViewModel_Factory.java */
@dagger.internal.e
@r
@s
/* loaded from: classes3.dex */
public final class h implements dagger.internal.h<ChatViewModel> {

    /* compiled from: ChatViewModel_Factory.java */
    /* loaded from: classes3.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final h f52691a = new h();

        private a() {
        }
    }

    public static h a() {
        return a.f52691a;
    }

    public static ChatViewModel c() {
        return new ChatViewModel();
    }

    @Override // u7.c
    /* renamed from: b */
    public ChatViewModel get() {
        return c();
    }
}
