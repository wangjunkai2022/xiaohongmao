package org.koin.androidx.fragment.dsl;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function7;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;
import y8.a;

/* compiled from: FragmentOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u000e\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0002\u0018\u0001\"\u0006\b\u0002\u0010\u0003\u0018\u0001\"\u0006\b\u0003\u0010\u0004\u0018\u0001\"\u0006\b\u0004\u0010\u0005\u0018\u0001\"\u0006\b\u0005\u0010\u0006\u0018\u0001\"\u0006\b\u0006\u0010\u0007\u0018\u0001\"\u0006\b\u0007\u0010\b\u0018\u0001*\u00020\t2\u0006\u0010\u000b\u001a\u00020\nH\n¢\u0006\u0004\b\f\u0010\r"}, d2 = {"Landroidx/fragment/app/Fragment;", "R", "T1", "T2", "T3", "T4", "T5", "T6", "T7", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/fragment/app/Fragment;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FragmentOfKt$fragmentOf$16 extends Lambda implements Function2<Scope, a, R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function7<T1, T2, T3, T4, T5, T6, T7, R> f92178a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentOfKt$fragmentOf$16(Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
        super(2);
        this.f92178a = function7;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Ly8/a;)TR; */
    @Override // kotlin.jvm.functions.Function2
    @g
    public final Fragment invoke(@g Scope fragment, @g a it) {
        Intrinsics.checkNotNullParameter(fragment, "$this$fragment");
        Intrinsics.checkNotNullParameter(it, "it");
        Function7<T1, T2, T3, T4, T5, T6, T7, R> function7 = this.f92178a;
        Intrinsics.reifiedOperationMarker(4, "T1");
        Object p9 = fragment.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T2");
        Object p10 = fragment.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T3");
        Object p11 = fragment.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T4");
        Object p12 = fragment.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T5");
        Object p13 = fragment.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T6");
        Object p14 = fragment.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T7");
        return (Fragment) function7.invoke(p9, p10, p11, p12, p13, p14, fragment.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }
}
