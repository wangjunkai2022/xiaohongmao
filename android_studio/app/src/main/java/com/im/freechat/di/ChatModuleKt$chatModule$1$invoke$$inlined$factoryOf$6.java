package com.im.freechat.di;

import com.im.freechat.ui.chat.chatdetails.messagelist.b;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import org.koin.core.scope.Scope;

/* compiled from: FactoryOf.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0010\u0007\u001a\u00028\u0000\"\u0006\b\u0000\u0010\u0000\u0018\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"R", "Lorg/koin/core/scope/Scope;", "Ly8/a;", "it", "invoke", "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;", "org/koin/core/module/dsl/FactoryOfKt$factoryOf$2", "<anonymous>"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class ChatModuleKt$chatModule$1$invoke$$inlined$factoryOf$6 extends Lambda implements Function2<Scope, y8.a, b> {
    public ChatModuleKt$chatModule$1$invoke$$inlined$factoryOf$6() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final b invoke(@g Scope factory, @g y8.a it) {
        Intrinsics.checkNotNullParameter(factory, "$this$factory");
        Intrinsics.checkNotNullParameter(it, "it");
        return new b();
    }
}