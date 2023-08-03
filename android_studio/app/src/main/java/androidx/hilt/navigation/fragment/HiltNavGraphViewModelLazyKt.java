package androidx.hilt.navigation.fragment;

import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModel;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: HiltNavGraphViewModelLazy.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a)\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0087\b¨\u0006\u0007"}, d2 = {"hiltNavGraphViewModels", "Lkotlin/Lazy;", "VM", "Landroidx/lifecycle/ViewModel;", "Landroidx/fragment/app/Fragment;", "navGraphId", "", "hilt-navigation-fragment_release"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes.dex */
public final class HiltNavGraphViewModelLazyKt {
    @MainThread
    public static final /* synthetic */ <VM extends ViewModel> Lazy<VM> hiltNavGraphViewModels(Fragment hiltNavGraphViewModels, @IdRes int i4) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(hiltNavGraphViewModels, "$this$hiltNavGraphViewModels");
        lazy = LazyKt__LazyJVMKt.lazy(new HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$backStackEntry$2(hiltNavGraphViewModels, i4));
        HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$storeProducer$1 hiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$storeProducer$1 = new HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$storeProducer$1(lazy, null);
        Intrinsics.reifiedOperationMarker(4, "VM");
        return FragmentViewModelLazyKt.createViewModelLazy(hiltNavGraphViewModels, Reflection.getOrCreateKotlinClass(ViewModel.class), hiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$storeProducer$1, new HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$1(hiltNavGraphViewModels, lazy, null));
    }
}
