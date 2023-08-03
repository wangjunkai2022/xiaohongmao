package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: FragmentViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke", "androidx/fragment/app/FragmentViewModelLazyKt$viewModels$7"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SettingsFragment$special$$inlined$viewModels$default$4 extends Lambda implements Function0<CreationExtras> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0 f53178a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ Lazy f53179b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsFragment$special$$inlined$viewModels$default$4(Function0 function0, Lazy lazy) {
        super(0);
        this.f53178a = function0;
        this.f53179b = lazy;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final CreationExtras invoke() {
        ViewModelStoreOwner m19viewModels$lambda1;
        CreationExtras creationExtras;
        Function0 function0 = this.f53178a;
        if (function0 == null || (creationExtras = (CreationExtras) function0.invoke()) == null) {
            m19viewModels$lambda1 = FragmentViewModelLazyKt.m19viewModels$lambda1(this.f53179b);
            HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = m19viewModels$lambda1 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) m19viewModels$lambda1 : null;
            CreationExtras defaultViewModelCreationExtras = hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : null;
            return defaultViewModelCreationExtras == null ? CreationExtras.Empty.INSTANCE : defaultViewModelCreationExtras;
        }
        return creationExtras;
    }
}
