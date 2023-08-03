package org.koin.androidx.fragment.dsl;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;
import y8.a;

/* compiled from: FragmentOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\n\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0002\u0018\u0001\"\u0006\b\u0002\u0010\u0003\u0018\u0001\"\u0006\b\u0003\u0010\u0004\u0018\u0001*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"Landroidx/fragment/app/Fragment;", "R", "T1", "T2", "T3", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/fragment/app/Fragment;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FragmentOfKt$fragmentOf$7 extends Lambda implements Function2<Scope, a, R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function3<T1, T2, T3, R> f92190a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentOfKt$fragmentOf$7(Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
        super(2);
        this.f92190a = function3;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Ly8/a;)TR; */
    @Override // kotlin.jvm.functions.Function2
    @g
    public final Fragment invoke(@g Scope _factoryInstanceFactory, @g a it) {
        Intrinsics.checkNotNullParameter(_factoryInstanceFactory, "$this$_factoryInstanceFactory");
        Intrinsics.checkNotNullParameter(it, "it");
        Function3<T1, T2, T3, R> function3 = this.f92190a;
        Intrinsics.reifiedOperationMarker(4, "T1");
        Object p9 = _factoryInstanceFactory.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T2");
        Object p10 = _factoryInstanceFactory.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T3");
        return (Fragment) function3.invoke(p9, p10, _factoryInstanceFactory.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }
}
