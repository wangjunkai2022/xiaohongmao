package com.qennnsad.aknkaksd.presentation.ui.main;

import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: FragmentViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke", "androidx/fragment/app/FragmentViewModelLazyKt$viewModels$6"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MainFragment$special$$inlined$viewModels$default$3 extends Lambda implements Function0<ViewModelStore> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Lazy f52745a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainFragment$special$$inlined$viewModels$default$3(Lazy lazy) {
        super(0);
        this.f52745a = lazy;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final ViewModelStore invoke() {
        ViewModelStoreOwner m19viewModels$lambda1;
        m19viewModels$lambda1 = FragmentViewModelLazyKt.m19viewModels$lambda1(this.f52745a);
        ViewModelStore viewModelStore = m19viewModels$lambda1.getViewModelStore();
        Intrinsics.checkNotNullExpressionValue(viewModelStore, "owner.viewModelStore");
        return viewModelStore;
    }
}
