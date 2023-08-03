package com.qennnsad.aknkaksd.presentation.ui.room.eyecatching.purchase;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: FragmentViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke", "androidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$5"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PurchaseItemListFragmentDialog$special$$inlined$activityViewModels$default$2 extends Lambda implements Function0<CreationExtras> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0 f53380a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Fragment f53381b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PurchaseItemListFragmentDialog$special$$inlined$activityViewModels$default$2(Function0 function0, Fragment fragment) {
        super(0);
        this.f53380a = function0;
        this.f53381b = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final CreationExtras invoke() {
        CreationExtras creationExtras;
        Function0 function0 = this.f53380a;
        if (function0 == null || (creationExtras = (CreationExtras) function0.invoke()) == null) {
            CreationExtras defaultViewModelCreationExtras = this.f53381b.requireActivity().getDefaultViewModelCreationExtras();
            Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "requireActivity().defaultViewModelCreationExtras");
            return defaultViewModelCreationExtras;
        }
        return creationExtras;
    }
}
