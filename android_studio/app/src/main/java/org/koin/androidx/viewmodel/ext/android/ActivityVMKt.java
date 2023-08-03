package org.koin.androidx.viewmodel.ext.android;

import androidx.activity.ComponentActivity;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.scope.Scope;

/* compiled from: ActivityVM.kt */
@Metadata(bv = {}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aP\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\u0016\b\n\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0086\bø\u0001\u0000\u001aQ\u0010\r\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\u0016\b\n\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\u0004\u0018\u0001`\tH\u0086\bø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000f"}, d2 = {"Landroidx/lifecycle/ViewModel;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/activity/ComponentActivity;", "Lz8/a;", "qualifier", "Landroidx/lifecycle/ViewModelStoreOwner;", "owner", "Lkotlin/Function0;", "Ly8/a;", "Lorg/koin/core/parameter/ParametersDefinition;", "parameters", "Lkotlin/Lazy;", "c", "a", "(Landroidx/activity/ComponentActivity;Lz8/a;Landroidx/lifecycle/ViewModelStoreOwner;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/ViewModel;", "koin-android_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ActivityVMKt {
    public static final /* synthetic */ <T extends ViewModel> T a(ComponentActivity componentActivity, z8.a aVar, ViewModelStoreOwner owner, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(componentActivity);
        Intrinsics.needClassReification();
        ActivityVMKt$getViewModel$$inlined$viewModel$1 activityVMKt$getViewModel$$inlined$viewModel$1 = new ActivityVMKt$getViewModel$$inlined$viewModel$1(owner, aVar, function0, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (T) new ViewModelLazy(Reflection.getOrCreateKotlinClass(ViewModel.class), new ActivityVMKt$viewModel$$inlined$viewModels$2(componentActivity), activityVMKt$getViewModel$$inlined$viewModel$1).getValue();
    }

    public static /* synthetic */ ViewModel b(ComponentActivity componentActivity, z8.a aVar, ViewModelStoreOwner owner, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            owner = componentActivity;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(componentActivity);
        Intrinsics.needClassReification();
        ActivityVMKt$getViewModel$$inlined$viewModel$1 activityVMKt$getViewModel$$inlined$viewModel$1 = new ActivityVMKt$getViewModel$$inlined$viewModel$1(owner, aVar, function0, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return (ViewModel) new ViewModelLazy(Reflection.getOrCreateKotlinClass(ViewModel.class), new ActivityVMKt$viewModel$$inlined$viewModels$2(componentActivity), activityVMKt$getViewModel$$inlined$viewModel$1).getValue();
    }

    public static final /* synthetic */ <T extends ViewModel> Lazy<T> c(ComponentActivity componentActivity, z8.a aVar, ViewModelStoreOwner owner, Function0<? extends y8.a> function0) {
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(componentActivity);
        Intrinsics.needClassReification();
        ActivityVMKt$viewModel$1 activityVMKt$viewModel$1 = new ActivityVMKt$viewModel$1(owner, aVar, function0, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new ViewModelLazy(Reflection.getOrCreateKotlinClass(ViewModel.class), new ActivityVMKt$viewModel$$inlined$viewModels$2(componentActivity), activityVMKt$viewModel$1);
    }

    public static /* synthetic */ Lazy d(ComponentActivity componentActivity, z8.a aVar, ViewModelStoreOwner owner, Function0 function0, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = null;
        }
        if ((i4 & 2) != 0) {
            owner = componentActivity;
        }
        if ((i4 & 4) != 0) {
            function0 = null;
        }
        Intrinsics.checkNotNullParameter(componentActivity, "<this>");
        Intrinsics.checkNotNullParameter(owner, "owner");
        Scope a10 = org.koin.android.ext.android.a.a(componentActivity);
        Intrinsics.needClassReification();
        ActivityVMKt$viewModel$1 activityVMKt$viewModel$1 = new ActivityVMKt$viewModel$1(owner, aVar, function0, a10);
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        return new ViewModelLazy(Reflection.getOrCreateKotlinClass(ViewModel.class), new ActivityVMKt$viewModel$$inlined$viewModels$2(componentActivity), activityVMKt$viewModel$1);
    }
}
