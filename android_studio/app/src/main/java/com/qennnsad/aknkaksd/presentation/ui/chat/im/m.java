package com.qennnsad.aknkaksd.presentation.ui.chat.im;

import androidx.fragment.app.FragmentActivity;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: Navigator_Factory.java */
@r
@dagger.internal.e
@s("dagger.hilt.android.scopes.ActivityScoped")
/* loaded from: classes3.dex */
public final class m implements dagger.internal.h<l> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<FragmentActivity> f52699a;

    public m(u7.c<FragmentActivity> cVar) {
        this.f52699a = cVar;
    }

    public static m a(u7.c<FragmentActivity> cVar) {
        return new m(cVar);
    }

    public static l c(FragmentActivity fragmentActivity) {
        return new l(fragmentActivity);
    }

    @Override // u7.c
    /* renamed from: b */
    public l get() {
        return c(this.f52699a.get());
    }
}
