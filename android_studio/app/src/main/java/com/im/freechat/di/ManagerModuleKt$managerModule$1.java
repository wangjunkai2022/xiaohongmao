package com.im.freechat.di;

import com.im.freechat.sdk.b;
import com.im.freechat.sdk.d;
import com.im.freechat.sdk.e;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import m8.g;
import org.koin.core.definition.Kind;
import org.koin.core.instance.f;
import org.koin.core.registry.c;

/* compiled from: ManagerModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class ManagerModuleKt$managerModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final ManagerModuleKt$managerModule$1 f41270a = new ManagerModuleKt$managerModule$1();

    ManagerModuleKt$managerModule$1() {
        super(1);
    }

    public final void a(@g x8.a module) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        List emptyList4;
        List emptyList5;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$1 managerModuleKt$managerModule$1$invoke$$inlined$singleOf$1 = new ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$1();
        c.a aVar = c.f92526e;
        z8.c a10 = aVar.a();
        Kind kind = Kind.Singleton;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar = new f<>(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(com.im.freechat.sdk.a.class), null, managerModuleKt$managerModule$1$invoke$$inlined$singleOf$1, kind, emptyList));
        module.p(fVar);
        if (module.l()) {
            module.u(fVar);
        }
        new Pair(module, fVar);
        ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$2 managerModuleKt$managerModule$1$invoke$$inlined$singleOf$2 = new ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$2();
        z8.c a11 = aVar.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar2 = new f<>(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(com.im.freechat.sdk.c.class), null, managerModuleKt$managerModule$1$invoke$$inlined$singleOf$2, kind, emptyList2));
        module.p(fVar2);
        if (module.l()) {
            module.u(fVar2);
        }
        new Pair(module, fVar2);
        ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$3 managerModuleKt$managerModule$1$invoke$$inlined$singleOf$3 = new ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$3();
        z8.c a12 = aVar.a();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar3 = new f<>(new org.koin.core.definition.a(a12, Reflection.getOrCreateKotlinClass(e.class), null, managerModuleKt$managerModule$1$invoke$$inlined$singleOf$3, kind, emptyList3));
        module.p(fVar3);
        if (module.l()) {
            module.u(fVar3);
        }
        new Pair(module, fVar3);
        ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$4 managerModuleKt$managerModule$1$invoke$$inlined$singleOf$4 = new ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$4();
        z8.c a13 = aVar.a();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar4 = new f<>(new org.koin.core.definition.a(a13, Reflection.getOrCreateKotlinClass(d.class), null, managerModuleKt$managerModule$1$invoke$$inlined$singleOf$4, kind, emptyList4));
        module.p(fVar4);
        if (module.l()) {
            module.u(fVar4);
        }
        new Pair(module, fVar4);
        ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$5 managerModuleKt$managerModule$1$invoke$$inlined$singleOf$5 = new ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$5();
        z8.c a14 = aVar.a();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        f<?> fVar5 = new f<>(new org.koin.core.definition.a(a14, Reflection.getOrCreateKotlinClass(b.class), null, managerModuleKt$managerModule$1$invoke$$inlined$singleOf$5, kind, emptyList5));
        module.p(fVar5);
        if (module.l()) {
            module.u(fVar5);
        }
        new Pair(module, fVar5);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}
