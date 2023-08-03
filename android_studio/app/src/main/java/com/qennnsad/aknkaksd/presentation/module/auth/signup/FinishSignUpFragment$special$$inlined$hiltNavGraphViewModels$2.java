package com.qennnsad.aknkaksd.presentation.module.auth.signup;

import androidx.lifecycle.ViewModelStore;
import androidx.navigation.NavBackStackEntry;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;

/* compiled from: HiltNavGraphViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke", "androidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$storeProducer$1"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class FinishSignUpFragment$special$$inlined$hiltNavGraphViewModels$2 extends Lambda implements Function0<ViewModelStore> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Lazy f51214a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ KProperty f51215b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FinishSignUpFragment$special$$inlined$hiltNavGraphViewModels$2(Lazy lazy, KProperty kProperty) {
        super(0);
        this.f51214a = lazy;
        this.f51215b = kProperty;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final ViewModelStore invoke() {
        NavBackStackEntry backStackEntry = (NavBackStackEntry) this.f51214a.getValue();
        Intrinsics.checkNotNullExpressionValue(backStackEntry, "backStackEntry");
        ViewModelStore viewModelStore = backStackEntry.getViewModelStore();
        Intrinsics.checkNotNullExpressionValue(viewModelStore, "backStackEntry.viewModelStore");
        return viewModelStore;
    }
}
