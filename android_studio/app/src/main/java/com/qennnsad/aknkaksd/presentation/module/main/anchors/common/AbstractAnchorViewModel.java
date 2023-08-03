package com.qennnsad.aknkaksd.presentation.module.main.anchors.common;

import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.FlowLiveDataConversions;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.CachedPagingDataKt;
import androidx.paging.PagingData;
import androidx.paging.PagingSource;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.data.bean.index.HotAnchorSummary;
import com.qennnsad.aknkaksd.presentation.module.main.index.AnchorType;
import io.sentry.protocol.y;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: AbstractAnchorViewModel.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b1\u0010#R\"\u0010\n\u001a\u00020\u00038\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR%\u0010\u0012\u001a\u0010\u0012\f\u0012\n \r*\u0004\u0018\u00010\f0\f0\u000b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R#\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140\u00130\u000b8\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0016\u0010\u0011R%\u0010\u001a\u001a\u0010\u0012\f\u0012\n \r*\u0004\u0018\u00010\f0\f0\u000b8\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u000f\u001a\u0004\b\u0019\u0010\u0011R,\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u001c0\u001b8\u0016X\u0096\u0004¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u0012\u0004\b\"\u0010#\u001a\u0004\b \u0010!R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u0014\u00100\u001a\u00020-8&X¦\u0004¢\u0006\u0006\u001a\u0004\b.\u0010/¨\u00062"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorViewModel;", "Action", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;", "e", "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;", "w", "()Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "(Lcom/qennnsad/aknkaksd/domain/usecase/anchor/i;)V", "getPageListForAnchorUseCase", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "f", "Landroidx/lifecycle/MutableLiveData;", y.b.f83920h, "()Landroidx/lifecycle/MutableLiveData;", "pkFilterIsOn", "", "Lcom/qennnsad/aknkaksd/data/bean/index/HotAnchorSummary;", "g", "s", "anchorList", "h", y.b.f83919g, "loadingPaging", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PagingData;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/flow/i;", "u", "()Lkotlinx/coroutines/flow/i;", "getDisplayList$annotations", "()V", "displayList", "", "j", "I", "z", "()I", "B", "(I)V", "scrollPosition", "Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "t", "()Lcom/qennnsad/aknkaksd/presentation/module/main/index/AnchorType;", "anchorType", "<init>", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class AbstractAnchorViewModel<Action> extends com.qennnsad.aknkaksd.presentation.common.l<Action> {
    @u7.a

    /* renamed from: e  reason: collision with root package name */
    public com.qennnsad.aknkaksd.domain.usecase.anchor.i f51397e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final MutableLiveData<Boolean> f51398f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final MutableLiveData<List<HotAnchorSummary>> f51399g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final MutableLiveData<Boolean> f51400h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<PagingData<l>> f51401i;

    /* renamed from: j  reason: collision with root package name */
    private int f51402j;

    /* compiled from: AbstractAnchorViewModel.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\"\u0004\b\u0000\u0010\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Action", "Landroidx/paging/PagingSource;", "", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/l;", "invoke", "()Landroidx/paging/PagingSource;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<PagingSource<Integer, l>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AbstractAnchorViewModel<Action> f51407a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Boolean f51408b;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AbstractAnchorViewModel<Action> abstractAnchorViewModel, Boolean bool) {
            super(0);
            this.f51407a = abstractAnchorViewModel;
            this.f51408b = bool;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final PagingSource<Integer, l> invoke() {
            AnchorType t9 = this.f51407a.t();
            com.qennnsad.aknkaksd.domain.usecase.anchor.i w9 = this.f51407a.w();
            Boolean it = this.f51408b;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            return new m(t9, w9, it.booleanValue(), this.f51407a.x());
        }
    }

    public AbstractAnchorViewModel() {
        MutableLiveData<Boolean> mutableLiveData = new MutableLiveData<>(Boolean.FALSE);
        this.f51398f = mutableLiveData;
        this.f51399g = new MutableLiveData<>();
        this.f51400h = new MutableLiveData<>(Boolean.TRUE);
        this.f51401i = CachedPagingDataKt.cachedIn(kotlinx.coroutines.flow.k.b2(kotlinx.coroutines.flow.k.g0(FlowLiveDataConversions.asFlow(mutableLiveData)), new AbstractAnchorViewModel$special$$inlined$flatMapLatest$1(null, this)), ViewModelKt.getViewModelScope(this));
    }

    public static /* synthetic */ void v() {
    }

    public final void A(@m8.g com.qennnsad.aknkaksd.domain.usecase.anchor.i iVar) {
        Intrinsics.checkNotNullParameter(iVar, "<set-?>");
        this.f51397e = iVar;
    }

    public final void B(int i4) {
        this.f51402j = i4;
    }

    @m8.g
    public final MutableLiveData<List<HotAnchorSummary>> s() {
        return this.f51399g;
    }

    @m8.g
    public abstract AnchorType t();

    @m8.g
    public kotlinx.coroutines.flow.i<PagingData<l>> u() {
        return this.f51401i;
    }

    @m8.g
    public final com.qennnsad.aknkaksd.domain.usecase.anchor.i w() {
        com.qennnsad.aknkaksd.domain.usecase.anchor.i iVar = this.f51397e;
        if (iVar != null) {
            return iVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("getPageListForAnchorUseCase");
        return null;
    }

    @m8.g
    public final MutableLiveData<Boolean> x() {
        return this.f51400h;
    }

    @m8.g
    public final MutableLiveData<Boolean> y() {
        return this.f51398f;
    }

    public final int z() {
        return this.f51402j;
    }
}
