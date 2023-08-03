package com.im.freechat.di;

import com.im.freechat.domain.o;
import com.im.freechat.domain.usecase.auth.b;
import com.im.freechat.domain.usecase.auth.d;
import com.im.freechat.domain.usecase.auth.f;
import com.im.freechat.domain.usecase.auth.h;
import com.im.freechat.domain.usecase.auth.j;
import com.im.freechat.domain.usecase.currentuser.e;
import com.im.freechat.domain.usecase.currentuser.i;
import com.im.freechat.sdk.c;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: KoinDSLHelper.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0012\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001\"\u0006\b\u0003\u0010\u0003\u0018\u0001\"\u0006\b\u0004\u0010\u0004\u0018\u0001\"\u0006\b\u0005\u0010\u0005\u0018\u0001\"\u0006\b\u0006\u0010\u0006\u0018\u0001\"\u0006\b\u0007\u0010\u0007\u0018\u0001\"\u0006\b\b\u0010\b\u0018\u0001\"\u0006\b\t\u0010\t\u0018\u0001\"\u0006\b\n\u0010\n\u0018\u0001\"\u0006\b\u000b\u0010\u000b\u0018\u0001*\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\n¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"R", "T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "T10", "T11", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "com/im/freechat/di/KoinDSLHelperKt$singleOf$1", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$2 extends Lambda implements Function2<Scope, y8.a, c> {
    public ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$2() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final c invoke(@g Scope single, @g y8.a it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.auth.a.class), null, null);
        Object p10 = single.p(Reflection.getOrCreateKotlinClass(b.class), null, null);
        Object p11 = single.p(Reflection.getOrCreateKotlinClass(e.class), null, null);
        Object p12 = single.p(Reflection.getOrCreateKotlinClass(d.class), null, null);
        Object p13 = single.p(Reflection.getOrCreateKotlinClass(i.class), null, null);
        Object p14 = single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.auth.i.class), null, null);
        Object p15 = single.p(Reflection.getOrCreateKotlinClass(h.class), null, null);
        Object p16 = single.p(Reflection.getOrCreateKotlinClass(j.class), null, null);
        Object p17 = single.p(Reflection.getOrCreateKotlinClass(o.class), null, null);
        return new c((com.im.freechat.domain.usecase.auth.a) p9, (b) p10, (e) p11, (d) p12, (i) p13, (com.im.freechat.domain.usecase.auth.i) p14, (h) p15, (j) p16, (o) p17, (com.im.freechat.domain.usecase.auth.g) single.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.auth.g.class), null, null), (f) single.p(Reflection.getOrCreateKotlinClass(f.class), null, null));
    }
}
