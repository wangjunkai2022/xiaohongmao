package com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby;

import androidx.fragment.app.FragmentViewModelLazyKt;
import com.qennnsad.aknkaksd.presentation.module.main.anchors.nearby.NearbyAnchorViewModel;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import m8.g;

/* compiled from: NearbyAnchorFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014R\u001b\u0010\u000b\u001a\u00020\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u001a\u0010\u0011\u001a\u00020\f8\u0016X\u0096D¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorFragment;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/common/AbstractAnchorFragment;", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel$Event;", "e", "", "S0", "Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;", "n", "Lkotlin/Lazy;", "R0", "()Lcom/qennnsad/aknkaksd/presentation/module/main/anchors/nearby/NearbyAnchorViewModel;", "viewModel", "", "o", "Z", "H0", "()Z", "isSmallGrid", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class NearbyAnchorFragment extends a<NearbyAnchorViewModel.Event> {
    @g

    /* renamed from: n  reason: collision with root package name */
    private final Lazy f51543n = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(NearbyAnchorViewModel.class), new NearbyAnchorFragment$special$$inlined$activityViewModels$default$1(this), new NearbyAnchorFragment$special$$inlined$activityViewModels$default$2(null, this), new NearbyAnchorFragment$special$$inlined$activityViewModels$default$3(this));

    /* renamed from: o  reason: collision with root package name */
    private final boolean f51544o = true;

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment
    public boolean H0() {
        return this.f51544o;
    }

    @Override // com.qennnsad.aknkaksd.presentation.module.main.anchors.common.AbstractAnchorFragment
    @g
    /* renamed from: R0 */
    public NearbyAnchorViewModel z0() {
        return (NearbyAnchorViewModel) this.f51543n.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: S0 */
    public void onEvent(@g NearbyAnchorViewModel.Event e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }
}
