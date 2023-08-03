package com.im.freechat.di;

import com.im.freechat.ui.create.choosemember.ChooseMemberViewModel;
import com.im.freechat.ui.create.choosemember.b;
import com.im.freechat.ui.create.namegroup.NameGroupViewModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.definition.Kind;
import org.koin.core.registry.c;
import org.koin.core.scope.Scope;

/* compiled from: CreateChatModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class CreateChatModuleKt$createChatModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final CreateChatModuleKt$createChatModule$1 f41248a = new CreateChatModuleKt$createChatModule$1();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CreateChatModule.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lorg/koin/core/scope/Scope;", "Ly8/a;", "params", "Lcom/im/freechat/ui/create/choosemember/b;", "a", "(Lorg/koin/core/scope/Scope;Ly8/a;)Lcom/im/freechat/ui/create/choosemember/b;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function2<Scope, y8.a, b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f41249a = new a();

        a() {
            super(2);
        }

        @Override // kotlin.jvm.functions.Function2
        @g
        /* renamed from: a */
        public final b invoke(@g Scope factory, @g y8.a params) {
            Intrinsics.checkNotNullParameter(factory, "$this$factory");
            Intrinsics.checkNotNullParameter(params, "params");
            return new b(((Number) params.i(0)).intValue());
        }
    }

    CreateChatModuleKt$createChatModule$1() {
        super(1);
    }

    public final void a(@g x8.a module) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        List emptyList4;
        List emptyList5;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        CreateChatModuleKt$createChatModule$1$invoke$$inlined$viewModelOf$1 createChatModuleKt$createChatModule$1$invoke$$inlined$viewModelOf$1 = new CreateChatModuleKt$createChatModule$1$invoke$$inlined$viewModelOf$1();
        c.a aVar = c.f92526e;
        z8.c a10 = aVar.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(ChooseMemberViewModel.class), null, createChatModuleKt$createChatModule$1$invoke$$inlined$viewModelOf$1, kind, emptyList));
        module.p(aVar2);
        new Pair(module, aVar2);
        CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$1 createChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$1 = new CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$1();
        z8.c a11 = aVar.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(NameGroupViewModel.class), null, createChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$1, kind, emptyList2));
        module.p(aVar3);
        new Pair(module, aVar3);
        CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$2 createChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$2 = new CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$2();
        z8.c a12 = aVar.a();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar4 = new org.koin.core.instance.a(new org.koin.core.definition.a(a12, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat.b.class), null, createChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$2, kind, emptyList3));
        module.p(aVar4);
        new Pair(module, aVar4);
        CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$3 createChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$3 = new CreateChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$3();
        z8.c a13 = aVar.a();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar5 = new org.koin.core.instance.a(new org.koin.core.definition.a(a13, Reflection.getOrCreateKotlinClass(com.im.freechat.ui.create.namegroup.a.class), null, createChatModuleKt$createChatModule$1$invoke$$inlined$factoryOf$3, kind, emptyList4));
        module.p(aVar5);
        new Pair(module, aVar5);
        a aVar6 = a.f41249a;
        z8.c a14 = aVar.a();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar7 = new org.koin.core.instance.a(new org.koin.core.definition.a(a14, Reflection.getOrCreateKotlinClass(b.class), null, aVar6, kind, emptyList5));
        module.p(aVar7);
        new Pair(module, aVar7);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}
