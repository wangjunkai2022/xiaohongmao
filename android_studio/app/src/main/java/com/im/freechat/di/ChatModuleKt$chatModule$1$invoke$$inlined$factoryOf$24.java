package com.im.freechat.di;

import com.im.freechat.domain.k;
import com.im.freechat.domain.t;
import com.im.freechat.domain.usecase.messages.i;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: FactoryOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\t\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"R", "T1", "T2", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "org/koin/core/module/dsl/FactoryOfKt$factoryOf$6", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatModuleKt$chatModule$1$invoke$$inlined$factoryOf$24 extends Lambda implements Function2<Scope, y8.a, i> {
    public ChatModuleKt$chatModule$1$invoke$$inlined$factoryOf$24() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final i invoke(@g Scope factory, @g y8.a it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new i((k) factory.p(Reflection.getOrCreateKotlinClass(k.class), null, null), (t) factory.p(Reflection.getOrCreateKotlinClass(t.class), null, null));
    }
}
