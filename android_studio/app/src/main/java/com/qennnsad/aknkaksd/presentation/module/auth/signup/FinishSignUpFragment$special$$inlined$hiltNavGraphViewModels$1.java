package com.qennnsad.aknkaksd.presentation.module.auth.signup;

import androidx.fragment.app.Fragment;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: HiltNavGraphViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/navigation/NavBackStackEntry;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke", "androidx/hilt/navigation/fragment/HiltNavGraphViewModelLazyKt$hiltNavGraphViewModels$backStackEntry$2"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class FinishSignUpFragment$special$$inlined$hiltNavGraphViewModels$1 extends Lambda implements Function0<NavBackStackEntry> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Fragment f51212a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f51213b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FinishSignUpFragment$special$$inlined$hiltNavGraphViewModels$1(Fragment fragment, int i4) {
        super(0);
        this.f51212a = fragment;
        this.f51213b = i4;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final NavBackStackEntry invoke() {
        return FragmentKt.findNavController(this.f51212a).getBackStackEntry(this.f51213b);
    }
}
