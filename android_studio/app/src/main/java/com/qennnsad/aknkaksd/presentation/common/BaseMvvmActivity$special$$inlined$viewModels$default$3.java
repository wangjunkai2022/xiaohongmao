package com.qennnsad.aknkaksd.presentation.common;

import androidx.activity.ComponentActivity;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: ActivityViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke", "androidx/activity/ActivityViewModelLazyKt$viewModels$4"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BaseMvvmActivity$special$$inlined$viewModels$default$3 extends Lambda implements Function0<CreationExtras> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function0 f50852a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ComponentActivity f50853b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseMvvmActivity$special$$inlined$viewModels$default$3(Function0 function0, ComponentActivity componentActivity) {
        super(0);
        this.f50852a = function0;
        this.f50853b = componentActivity;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @m8.g
    public final CreationExtras invoke() {
        CreationExtras creationExtras;
        Function0 function0 = this.f50852a;
        if (function0 == null || (creationExtras = (CreationExtras) function0.invoke()) == null) {
            CreationExtras defaultViewModelCreationExtras = this.f50853b.getDefaultViewModelCreationExtras();
            Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "this.defaultViewModelCreationExtras");
            return defaultViewModelCreationExtras;
        }
        return creationExtras;
    }
}