package com.qennnsad.aknkaksd.presentation.module.main.anchors.followed;

import androidx.lifecycle.FlowLiveDataConversions;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CachedPagingDataKt;
import androidx.paging.PagingData;
import androidx.paging.PagingSource;
import com.qennnsad.aknkaksd.data.bean.BannerAdBean;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorViewModel;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.common.l;
import com.qennnsad.aknkaksd.presentation.module.main.index.AnchorType;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.flow.k;

/* compiled from: FollowedAnchorViewModel.kt */
@l6.a
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0019\b\u0007\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001a\u0010\f\u001a\u00020\u00078\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR,\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\r8\u0016X\u0096\u0004¢\u0006\u0012\n\u0004\b\u0010\u0010\u0011\u0012\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006!"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$Event;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;", "k", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;", "getFollowAnchorUseCase", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "l", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "t", "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "anchorType", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "m", "Lkotlinx/coroutines/flow/i;", "u", "()Lkotlinx/coroutines/flow/i;", "getDisplayList$annotations", "()V", "displayList", "", "Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;", "n", "Ljava/util/List;", "banners", "Lg5/a;", "localDataManager", "<init>", "(Lg5/a;Lcom/qennnsad/aknkaksd/domain/usecase/anchor/f;)V", "Event", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class FollowedAnchorViewModel extends AbstractAnchorViewModel<Event> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.domain.usecase.anchor.f f51476k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final AnchorType f51477l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<PagingData<l>> f51478m;
    @m8.h

    /* renamed from: n  reason: collision with root package name */
    private final List<BannerAdBean> f51479n;

    /* compiled from: FollowedAnchorViewModel.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/followed/FollowedAnchorViewModel$Event;", "", "(Ljava/lang/String;I)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Event {
    }

    /* compiled from: FollowedAnchorViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "invoke", "()Landroidx/paging/PagingSource;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<PagingSource<Integer, l>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Boolean f51486b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Boolean bool) {
            super(0);
            this.f51486b = bool;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final PagingSource<Integer, l> invoke() {
            com.qennnsad.aknkaksd.domain.usecase.anchor.f fVar = FollowedAnchorViewModel.this.f51476k;
            Boolean it = this.f51486b;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            return new i(fVar, it.booleanValue(), FollowedAnchorViewModel.this.x(), FollowedAnchorViewModel.this.f51479n);
        }
    }

    @u7.a
    public FollowedAnchorViewModel(@m8.g g5.a localDataManager, @m8.g com.qennnsad.aknkaksd.domain.usecase.anchor.f getFollowAnchorUseCase) {
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(getFollowAnchorUseCase, "getFollowAnchorUseCase");
        this.f51476k = getFollowAnchorUseCase;
        this.f51477l = AnchorType.FOLLOW;
        this.f51478m = CachedPagingDataKt.cachedIn(k.b2(k.g0(FlowLiveDataConversions.asFlow(y())), new FollowedAnchorViewModel$special$$inlined$flatMapLatest$1(null, this)), ViewModelKt.getViewModelScope(this));
        this.f51479n = localDataManager.b().getFollowedAnchors();
    }

    public static /* synthetic */ void v() {
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorViewModel
    @m8.g
    public AnchorType t() {
        return this.f51477l;
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorViewModel
    @m8.g
    public kotlinx.coroutines.flow.i<PagingData<l>> u() {
        return this.f51478m;
    }
}
