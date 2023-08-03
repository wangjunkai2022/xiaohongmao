package androidx.hilt.navigation.fragment;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.hilt.navigation.HiltViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.navigation.NavBackStackEntry;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;
import m8.g;

/* compiled from: HiltNavGraphViewModelLazy.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$1 extends Lambda implements Function0<ViewModelProvider.Factory> {
    final /* synthetic */ Lazy $backStackEntry;
    final /* synthetic */ KProperty $backStackEntry$metadata;
    final /* synthetic */ Fragment $this_hiltNavGraphViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$1(Fragment fragment, Lazy lazy, KProperty kProperty) {
        super(0);
        this.$this_hiltNavGraphViewModels = fragment;
        this.$backStackEntry = lazy;
        this.$backStackEntry$metadata = kProperty;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelProvider.Factory invoke() {
        FragmentActivity requireActivity = this.$this_hiltNavGraphViewModels.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        NavBackStackEntry backStackEntry = (NavBackStackEntry) this.$backStackEntry.getValue();
        Intrinsics.checkNotNullExpressionValue(backStackEntry, "backStackEntry");
        return HiltViewModelFactory.create(requireActivity, backStackEntry);
    }
}
