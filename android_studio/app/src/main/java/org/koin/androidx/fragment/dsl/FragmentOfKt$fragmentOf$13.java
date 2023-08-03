package org.koin.androidx.fragment.dsl;

import androidx.fragment.app.Fragment;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;
import y8.a;

/* compiled from: FragmentOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\r\u001a\u00028\u0000\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\b\u0001\u0010\u0002\u0018\u0001\"\u0006\b\u0002\u0010\u0003\u0018\u0001\"\u0006\b\u0003\u0010\u0004\u0018\u0001\"\u0006\b\u0004\u0010\u0005\u0018\u0001\"\u0006\b\u0005\u0010\u0006\u0018\u0001\"\u0006\b\u0006\u0010\u0007\u0018\u0001*\u00020\b2\u0006\u0010\n\u001a\u00020\tH\n¢\u0006\u0004\b\u000b\u0010\f"}, d2 = {"Landroidx/fragment/app/Fragment;", "R", "T1", "T2", "T3", "T4", "T5", "T6", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/fragment/app/Fragment;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class FragmentOfKt$fragmentOf$13 extends Lambda implements Function2<Scope, a, R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function6<T1, T2, T3, T4, T5, T6, R> f92175a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FragmentOfKt$fragmentOf$13(Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
        super(2);
        this.f92175a = function6;
    }

    /* JADX WARN: Incorrect return type in method signature: (Lorg/koin/core/scope/Scope;Ly8/a;)TR; */
    @Override // kotlin.jvm.functions.Function2
    @g
    public final Fragment invoke(@g Scope _factoryInstanceFactory, @g a it) {
        Intrinsics.checkNotNullParameter(_factoryInstanceFactory, "$this$_factoryInstanceFactory");
        Intrinsics.checkNotNullParameter(it, "it");
        Function6<T1, T2, T3, T4, T5, T6, R> function6 = this.f92175a;
        Intrinsics.reifiedOperationMarker(4, "T1");
        Object p9 = _factoryInstanceFactory.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T2");
        Object p10 = _factoryInstanceFactory.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T3");
        Object p11 = _factoryInstanceFactory.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T4");
        Object p12 = _factoryInstanceFactory.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T5");
        Object p13 = _factoryInstanceFactory.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T6");
        return (Fragment) function6.invoke(p9, p10, p11, p12, p13, _factoryInstanceFactory.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }
}
