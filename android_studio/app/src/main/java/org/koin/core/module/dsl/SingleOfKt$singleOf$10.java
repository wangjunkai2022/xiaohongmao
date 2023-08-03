package org.koin.core.module.dsl;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: SingleOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\n\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001\"\u0006\b\u0003\u0010\u0003\u0018\u0001\"\u0006\b\u0004\u0010\u0004\u0018\u0001*\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0004\b\b\u0010\t"}, d2 = {"R", "T1", "T2", "T3", "T4", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class SingleOfKt$singleOf$10 extends Lambda implements Function2<Scope, y8.a, R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function4<T1, T2, T3, T4, R> f92493a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SingleOfKt$singleOf$10(Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
        super(2);
        this.f92493a = function4;
    }

    /* JADX WARN: Type inference failed for: r8v2, types: [R, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public final R invoke(@g Scope single, @g y8.a it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Function4<T1, T2, T3, T4, R> function4 = this.f92493a;
        Intrinsics.reifiedOperationMarker(4, "T1");
        Object p9 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T2");
        Object p10 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T3");
        Object p11 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T4");
        return function4.invoke(p9, p10, p11, single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }
}
