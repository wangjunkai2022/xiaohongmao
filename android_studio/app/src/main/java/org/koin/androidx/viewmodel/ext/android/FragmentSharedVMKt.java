package org.koin.androidx.viewmodel.ext.android;

import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.scope.Scope;

/* compiled from: FragmentSharedVM.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aZ\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\n\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0016\b\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\nH\u0086\bø\u0001\u0000\u001a[\u0010\u000e\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0012\b\n\u0010\b\u001a\f\u0012\u0004\u0012\u00020\u00060\u0005j\u0002`\u00072\u0016\b\n\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005j\u0004\u0018\u0001`\nH\u0086\bø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0010"}, d2 = {"Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/fragment/app/Fragment;", "Lz8/a;", "qualifier", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelStoreOwner;", "Lorg/koin/androidx/viewmodel/ViewModelStoreOwnerProducer;", "owner", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "Lkotlin/Lazy;", "c", "a", "(Landroidx/fragment/app/Fragment;Lz8/a;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FragmentSharedVMKt {
    public static final /* synthetic */ <T extends ViewModel> T a(Fragment fragment, z8.a aVar, Function0<? extends ViewModelStoreOwner> owner, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(fragment);
        Intrinsics.needClassReification();
        FragmentSharedVMKt$getSharedViewModel$$inlined$sharedViewModel$1 fragmentSharedVMKt$getSharedViewModel$$inlined$sharedViewModel$1 = new FragmentSharedVMKt$getSharedViewModel$$inlined$sharedViewModel$1(owner, aVar, function0, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) FragmentViewModelLazyKt.createViewModelLazy(fragment, Reflection.getOrCreateKotlinClass(ViewModel.class), new FragmentVMKt$viewModel$$inlined$viewModels$1(owner), fragmentSharedVMKt$getSharedViewModel$$inlined$sharedViewModel$1).getValue();
    }

    public static /* synthetic */ ViewModel b(Fragment fragment, z8.a aVar, Function0 owner, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            owner = new FragmentSharedVMKt$getSharedViewModel$1(fragment);
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(fragment);
        Intrinsics.needClassReification();
        FragmentSharedVMKt$getSharedViewModel$$inlined$sharedViewModel$1 fragmentSharedVMKt$getSharedViewModel$$inlined$sharedViewModel$1 = new FragmentSharedVMKt$getSharedViewModel$$inlined$sharedViewModel$1(owner, aVar, function0, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (ViewModel) FragmentViewModelLazyKt.createViewModelLazy(fragment, Reflection.getOrCreateKotlinClass(ViewModel.class), new FragmentVMKt$viewModel$$inlined$viewModels$1(owner), fragmentSharedVMKt$getSharedViewModel$$inlined$sharedViewModel$1).getValue();
    }

    public static final /* synthetic */ <T extends ViewModel> Lazy<T> c(Fragment fragment, z8.a aVar, Function0<? extends ViewModelStoreOwner> owner, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(fragment);
        Intrinsics.needClassReification();
        FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1 fragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1 = new FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1(owner, aVar, function0, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, Reflection.getOrCreateKotlinClass(ViewModel.class), new FragmentVMKt$viewModel$$inlined$viewModels$1(owner), fragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1);
    }

    public static /* synthetic */ Lazy d(Fragment fragment, z8.a aVar, Function0 owner, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            owner = new FragmentSharedVMKt$sharedViewModel$1(fragment);
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(fragment, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(fragment);
        Intrinsics.needClassReification();
        FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1 fragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1 = new FragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1(owner, aVar, function0, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return FragmentViewModelLazyKt.createViewModelLazy(fragment, Reflection.getOrCreateKotlinClass(ViewModel.class), new FragmentVMKt$viewModel$$inlined$viewModels$1(owner), fragmentSharedVMKt$sharedViewModel$$inlined$viewModel$1);
    }
}
