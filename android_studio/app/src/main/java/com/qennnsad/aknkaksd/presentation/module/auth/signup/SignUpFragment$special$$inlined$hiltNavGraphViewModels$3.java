package com.qennnsad.aknkaksd.presentation.module.auth.signup;

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

/* compiled from: HiltNavGraphViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke", "androidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$1"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SignUpFragment$special$$inlined$hiltNavGraphViewModels$3 extends Lambda implements Function0<ViewModelProvider.Factory> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Fragment f51226a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Lazy f51227b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ KProperty f51228c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SignUpFragment$special$$inlined$hiltNavGraphViewModels$3(Fragment fragment, Lazy lazy, KProperty kProperty) {
        super(0);
        this.f51226a = fragment;
        this.f51227b = lazy;
        this.f51228c = kProperty;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final ViewModelProvider.Factory invoke() {
        FragmentActivity requireActivity = this.f51226a.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        NavBackStackEntry backStackEntry = (NavBackStackEntry) this.f51227b.getValue();
        Intrinsics.checkNotNullExpressionValue(backStackEntry, "backStackEntry");
        return HiltViewModelFactory.create(requireActivity, backStackEntry);
    }
}
