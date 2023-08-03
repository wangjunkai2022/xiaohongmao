package com.qennnsad.aknkaksd.presentation.module.main.rank;

import com.qennnsad.aknkaksd.presentation.ui.main.y;
import dagger.internal.h;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: MainRankViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class e implements h<MainRankViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<y> f51945a;

    public e(u7.c<y> cVar) {
        this.f51945a = cVar;
    }

    public static e a(u7.c<y> cVar) {
        return new e(cVar);
    }

    public static MainRankViewModel c(y yVar) {
        return new MainRankViewModel(yVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public MainRankViewModel get() {
        return c(this.f51945a.get());
    }
}
