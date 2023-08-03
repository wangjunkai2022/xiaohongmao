package com.im.freechat.di;

import com.im.freechat.domain.k;
import com.im.freechat.domain.t;
import com.im.freechat.domain.usecase.chat.b;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: FactoryOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\n\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0006\b\u0001\u0010\u0001\u0018\u0001\"\u0006\b\u0002\u0010\u0002\u0018\u0001\"\u0006\b\u0003\u0010\u0003\u0018\u0001*\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\n¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"R", "T1", "T2", "T3", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "org/koin/core/module/dsl/FactoryOfKt$factoryOf$8", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$2 extends Lambda implements Function2<Scope, y8.a, b> {
    public CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$2() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final b invoke(@g Scope factory, @g y8.a it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        Object p9 = factory.p(Reflection.getOrCreateKotlinClass(k.class), null, null);
        return new b((k) p9, (t) factory.p(Reflection.getOrCreateKotlinClass(t.class), null, null), (com.im.freechat.domain.g) factory.p(Reflection.getOrCreateKotlinClass(com.im.freechat.domain.g.class), null, null));
    }
}
