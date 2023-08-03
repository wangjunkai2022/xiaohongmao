package com.qennnsad.aknkaksd.presentation.ui.room.rank;

import androidx.lifecycle.SavedStateHandle;
import dagger.internal.r;
import dagger.internal.s;

/* compiled from: RoomSeatRankViewModel_Factory.java */
@r
@dagger.internal.e
@s
/* loaded from: classes3.dex */
public final class g implements dagger.internal.h<RoomSeatRankViewModel> {

    /* renamed from: a  reason: collision with root package name */
    private final u7.c<SavedStateHandle> f54201a;

    /* renamed from: b  reason: collision with root package name */
    private final u7.c<com.qennnsad.aknkaksd.domain.usecase.e> f54202b;

    public g(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.e> cVar2) {
        this.f54201a = cVar;
        this.f54202b = cVar2;
    }

    public static g a(u7.c<SavedStateHandle> cVar, u7.c<com.qennnsad.aknkaksd.domain.usecase.e> cVar2) {
        return new g(cVar, cVar2);
    }

    public static RoomSeatRankViewModel c(SavedStateHandle savedStateHandle, com.qennnsad.aknkaksd.domain.usecase.e eVar) {
        return new RoomSeatRankViewModel(savedStateHandle, eVar);
    }

    @Override // u7.c
    /* renamed from: b */
    public RoomSeatRankViewModel get() {
        return c(this.f54201a.get(), this.f54202b.get());
    }
}
