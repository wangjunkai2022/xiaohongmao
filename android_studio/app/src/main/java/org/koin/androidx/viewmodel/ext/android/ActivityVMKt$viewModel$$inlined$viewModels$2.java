package org.koin.androidx.viewmodel.ext.android;

import androidx.activity.ComponentActivity;
import androidx.lifecycle.ViewModelStore;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: ActivityViewModelLazy.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/ViewModel;", "VM", "Landroidx/lifecycle/ViewModelStore;", "androidx/activity/ActivityViewModelLazyKt$viewModels$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ActivityVMKt$viewModel$$inlined$viewModels$2 extends Lambda implements Function0<ViewModelStore> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ComponentActivity f92311a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActivityVMKt$viewModel$$inlined$viewModels$2(ComponentActivity componentActivity) {
        super(0);
        this.f92311a = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = this.f92311a.getViewModelStore();
        Intrinsics.checkNotNullExpressionValue(viewModelStore, "viewModelStore");
        return viewModelStore;
    }
}
