package com.qennnsad.aknkaksd.presentation.module.main.anchors.followed;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelStore;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: FragmentViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelStore;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke", "androidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$4"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FollowedAnchorFragment$special$$inlined$activityViewModels$default$1 extends Lambda implements Function0<ViewModelStore> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Fragment f51466a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FollowedAnchorFragment$special$$inlined$activityViewModels$default$1(Fragment fragment) {
        super(0);
        this.f51466a = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final ViewModelStore invoke() {
        ViewModelStore viewModelStore = this.f51466a.requireActivity().getViewModelStore();
        Intrinsics.checkNotNullExpressionValue(viewModelStore, "requireActivity().viewModelStore");
        return viewModelStore;
    }
}
