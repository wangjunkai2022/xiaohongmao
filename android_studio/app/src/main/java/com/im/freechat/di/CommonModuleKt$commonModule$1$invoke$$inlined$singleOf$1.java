package com.im.freechat.di;

import com.im.freechat.domain.j;
import com.im.freechat.domain.usecase.messages.l;
import com.im.freechat.domain.usecase.messages.m;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: SingleOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\t\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"R", "T1", "T2", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "org/koin/core/module/dsl/SingleOfKt$singleOf$6", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$1 extends Lambda implements Function2<Scope, y8.a, j> {
    public CommonModuleKt$commonModule$1$invoke$$inlined$singleOf$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final j invoke(@g Scope single, @g y8.a it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new j((m) single.p(Reflection.getOrCreateKotlinClass(m.class), null, null), (l) single.p(Reflection.getOrCreateKotlinClass(l.class), null, null));
    }
}
