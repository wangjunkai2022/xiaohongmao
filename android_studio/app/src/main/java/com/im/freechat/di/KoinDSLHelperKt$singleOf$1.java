package com.im.freechat.di;

import kotlin.Metadata;
import kotlin.jvm.functions.Function11;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: KoinDSLHelper.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0011\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001\"\u0006\b\u0003\u0010\u0003\u0018\u0001\"\u0006\b\u0004\u0010\u0004\u0018\u0001\"\u0006\b\u0005\u0010\u0005\u0018\u0001\"\u0006\b\u0006\u0010\u0006\u0018\u0001\"\u0006\b\u0007\u0010\u0007\u0018\u0001\"\u0006\b\b\u0010\b\u0018\u0001\"\u0006\b\t\u0010\t\u0018\u0001\"\u0006\b\n\u0010\n\u0018\u0001\"\u0006\b\u000b\u0010\u000b\u0018\u0001*\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\n¢\u0006\u0004\b\u000f\u0010\u0010"}, d2 = {"R", "T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "T10", "T11", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class KoinDSLHelperKt$singleOf$1 extends Lambda implements Function2<Scope, y8.a, R> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R> f41256a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KoinDSLHelperKt$singleOf$1(Function11<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? super T10, ? super T11, ? extends R> function11) {
        super(2);
        this.f41256a = function11;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [R, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public final R invoke(@g Scope single, @g y8.a it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Function11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R> function11 = this.f41256a;
        Intrinsics.reifiedOperationMarker(4, "T1");
        Object p9 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T2");
        Object p10 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T3");
        Object p11 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T4");
        Object p12 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T5");
        Object p13 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T6");
        Object p14 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T7");
        Object p15 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T8");
        Object p16 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T9");
        Object p17 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T10");
        Object p18 = single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null);
        Intrinsics.reifiedOperationMarker(4, "T11");
        return function11.invoke(p9, p10, p11, p12, p13, p14, p15, p16, p17, p18, single.p(Reflection.getOrCreateKotlinClass(Object.class), null, null));
    }
}
