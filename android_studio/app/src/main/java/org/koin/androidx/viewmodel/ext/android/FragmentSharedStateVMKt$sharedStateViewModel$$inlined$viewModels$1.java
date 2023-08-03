package org.koin.androidx.viewmodel.ext.android;

import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: FragmentViewModelLazy.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/ViewModel;", "VM", "Landroidx/lifecycle/ViewModelStore;", "androidx/fragment/app/FragmentViewModelLazyKt$viewModels$2", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FragmentSharedStateVMKt$sharedStateViewModel$$inlined$viewModels$1 extends Lambda implements Function0<ViewModelStore> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0 f92321a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentSharedStateVMKt$sharedStateViewModel$$inlined$viewModels$1(Function0 function0) {
        super(0);
        this.f92321a = function0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = ((ViewModelStoreOwner) this.f92321a.invoke()).getViewModelStore();
        Intrinsics.checkNotNullExpressionValue(viewModelStore, "ownerProducer().viewModelStore");
        return viewModelStore;
    }
}
