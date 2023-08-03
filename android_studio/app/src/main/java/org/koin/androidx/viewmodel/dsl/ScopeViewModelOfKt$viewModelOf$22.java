package org.koin.androidx.viewmodel.dsl;

import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function10;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;
import y8.a;

/* compiled from: ScopeViewModelOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0011\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0002\u0018\u0001\"\u0006\b\u0002\u0010\u0003\u0018\u0001\"\u0006\b\u0003\u0010\u0004\u0018\u0001\"\u0006\b\u0004\u0010\u0005\u0018\u0001\"\u0006\b\u0005\u0010\u0006\u0018\u0001\"\u0006\b\u0006\u0010\u0007\u0018\u0001\"\u0006\b\u0007\u0010\b\u0018\u0001\"\u0006\b\b\u0010\t\u0018\u0001\"\u0006\b\t\u0010\n\u0018\u0001\"\u0006\b\n\u0010\u000b\u0018\u0001*\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\n¢\u0006\u0004\b\u000f\u0010\u0010"}, d2 = {"Landroidx/lifecycle/ViewModel;", "R", "T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "T10", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class ScopeViewModelOfKt$viewModelOf$22 extends Lambda implements Function2<Scope, a, R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, R> f92257a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ScopeViewModelOfKt$viewModelOf$22(Function10<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? extends R> function10) {
        super(2);
        this.f92257a = function10;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Ly8/a;)TR; */
    @Override // kotlin.jvm.functions.Function2
    @g
    public final ViewModel invoke(@g Scope viewModel, @g a it) {
        Intrinsics.checkNotNullParameter(viewModel, "$this$viewModel");
        Intrinsics.checkNotNullParameter(it, "it");
        Function10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, R> function10 = this.f92257a;
        Intrinsics.reifiedOperationMarker(4, "T1");
        Object p9 = viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T2");
        Object p10 = viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T3");
        Object p11 = viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T4");
        Object p12 = viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T5");
        Object p13 = viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T6");
        Object p14 = viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T7");
        Object p15 = viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T8");
        Object p16 = viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T9");
        Object p17 = viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T10");
        return (ViewModel) function10.invoke(p9, p10, p11, p12, p13, p14, p15, p16, p17, viewModel.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }
}
