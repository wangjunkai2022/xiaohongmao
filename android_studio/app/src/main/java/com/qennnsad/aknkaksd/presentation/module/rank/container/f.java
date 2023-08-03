package com.qennnsad.aknkaksd.presentation.module.rank.container;

import androidx.lifecycle.SavedStateHandle;
import com.qennnsad.aknkaksd.presentation.ui.main.y;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: RankListViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class f implements dagger.internal.h<RankListViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<SavedStateHandle> f52264a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<y> f52265b;

    public f(u7.c<SavedStateHandle> cVar, u7.c<y> cVar2) {
        this.f52264a = cVar;
        this.f52265b = cVar2;
    }

    public static f a(u7.c<SavedStateHandle> cVar, u7.c<y> cVar2) {
        return new f(cVar, cVar2);
    }

    public static RankListViewModel c(SavedStateHandle savedStateHandle, y yVar) {
        return new RankListViewModel(savedStateHandle, yVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public RankListViewModel get() {
        return c(this.f52264a.get(), this.f52265b.get());
    }
}
