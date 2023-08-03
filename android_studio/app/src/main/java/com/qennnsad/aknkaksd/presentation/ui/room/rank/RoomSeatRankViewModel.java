package com.qennnsad.aknkaksd.presentation.ui.room.rank;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CachedPagingDataKt;
import androidx.paging.PagingData;
import androidx.paging.PagingSource;
import com.qennnsad.aknkaksd.data.bean.RankItem;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.util.u;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: RoomSeatRankViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001!B\u0019\b\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR%\u0010\u0014\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0\r8\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R#\u0010\u001c\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u00158\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b¨\u0006\""}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel;", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$Event;", "Lcom/qennnsad/aknkaksd/domain/usecase/e;", "e", "Lcom/qennnsad/aknkaksd/domain/usecase/e;", "getRankSeatUseCase", "", "f", "Ljava/lang/String;", "v", "()Ljava/lang/String;", "roomId", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "g", "Landroidx/lifecycle/MutableLiveData;", "t", "()Landroidx/lifecycle/MutableLiveData;", "loadingPaging", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "h", "Lkotlinx/coroutines/flow/i;", "u", "()Lkotlinx/coroutines/flow/i;", "ranks", "Landroidx/lifecycle/SavedStateHandle;", t.b.f83859d, "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/qennnsad/aknkaksd/domain/usecase/e;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class RoomSeatRankViewModel extends l<Event> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.e f54168e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final String f54169f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final MutableLiveData<Boolean> f54170g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<PagingData<RankItem>> f54171h;

    /* compiled from: RoomSeatRankViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/room/rank/RoomSeatRankViewModel$Event;", "", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
    }

    /* compiled from: RoomSeatRankViewModel.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/data/bean/RankItem;", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<PagingSource<Integer, RankItem>> {
        a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final PagingSource<Integer, RankItem> invoke() {
            return new b(RoomSeatRankViewModel.this.f54168e, RoomSeatRankViewModel.this.v(), RoomSeatRankViewModel.this.t());
        }
    }

    @u7.a
    public RoomSeatRankViewModel(@m8.g SavedStateHandle state, @m8.g com.qennnsad.aknkaksd.domain.usecase.e getRankSeatUseCase) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(getRankSeatUseCase, "getRankSeatUseCase");
        this.f54168e = getRankSeatUseCase;
        Object obj = state.get(f.f54200b);
        Intrinsics.checkNotNull(obj);
        this.f54169f = (String) obj;
        this.f54170g = new MutableLiveData<>(Boolean.FALSE);
        this.f54171h = CachedPagingDataKt.cachedIn(u.b(new a()).getFlow(), ViewModelKt.getViewModelScope(this));
    }

    @m8.g
    public final MutableLiveData<Boolean> t() {
        return this.f54170g;
    }

    @m8.g
    public final kotlinx.coroutines.flow.i<PagingData<RankItem>> u() {
        return this.f54171h;
    }

    @m8.g
    public final String v() {
        return this.f54169f;
    }
}
