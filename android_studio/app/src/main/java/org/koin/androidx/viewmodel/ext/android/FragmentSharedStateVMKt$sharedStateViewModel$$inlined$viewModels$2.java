package org.koin.androidx.viewmodel.ext.android;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: FragmentViewModelLazy.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0002\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n¨\u0006\u0003"}, d2 = {"Landroidx/lifecycle/ViewModel;", "VM", "Landroidx/lifecycle/ViewModelProvider$Factory;", "androidx/fragment/app/FragmentViewModelLazyKt$viewModels$3", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FragmentSharedStateVMKt$sharedStateViewModel$$inlined$viewModels$2 extends Lambda implements Function0<ViewModelProvider.Factory> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0 f92322a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Fragment f92323b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentSharedStateVMKt$sharedStateViewModel$$inlined$viewModels$2(Function0 function0, Fragment fragment) {
        super(0);
        this.f92322a = function0;
        this.f92323b = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final ViewModelProvider.Factory invoke() {
        Object invoke = this.f92322a.invoke();
        HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = invoke instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) invoke : null;
        ViewModelProvider.Factory defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory() : null;
        if (defaultViewModelProviderFactory == null) {
            defaultViewModelProviderFactory = this.f92323b.getDefaultViewModelProviderFactory();
        }
        Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
        return defaultViewModelProviderFactory;
    }
}
