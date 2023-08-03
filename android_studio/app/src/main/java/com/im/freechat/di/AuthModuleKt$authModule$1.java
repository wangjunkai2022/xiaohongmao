package com.im.freechat.di;

import com.im.freechat.domain.usecase.auth.b;
import com.im.freechat.domain.usecase.auth.d;
import com.im.freechat.domain.usecase.auth.h;
import com.im.freechat.domain.usecase.auth.i;
import com.im.freechat.domain.usecase.auth.j;
import com.im.freechat.domain.usecase.currentuser.e;
import com.im.freechat.domain.usecase.currentuser.k;
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
import org.koin.core.registry.c;

/* compiled from: AuthModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class AuthModuleKt$authModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final AuthModuleKt$authModule$1 f41229a = new AuthModuleKt$authModule$1();

    AuthModuleKt$authModule$1() {
        super(1);
    }

    public final void a(@g x8.a module) {
        List emptyList;
        List emptyList2;
        List emptyList3;
        List emptyList4;
        List emptyList5;
        List emptyList6;
        List emptyList7;
        List emptyList8;
        List emptyList9;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$1 authModuleKt$authModule$1$invoke$$inlined$factoryOf$1 = new AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$1();
        c.a aVar = c.f92526e;
        z8.c a10 = aVar.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(j.class), null, authModuleKt$authModule$1$invoke$$inlined$factoryOf$1, kind, emptyList));
        module.p(aVar2);
        new Pair(module, aVar2);
        AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$2 authModuleKt$authModule$1$invoke$$inlined$factoryOf$2 = new AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$2();
        z8.c a11 = aVar.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(i.class), null, authModuleKt$authModule$1$invoke$$inlined$factoryOf$2, kind, emptyList2));
        module.p(aVar3);
        new Pair(module, aVar3);
        AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$3 authModuleKt$authModule$1$invoke$$inlined$factoryOf$3 = new AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$3();
        z8.c a12 = aVar.a();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar4 = new org.koin.core.instance.a(new org.koin.core.definition.a(a12, Reflection.getOrCreateKotlinClass(h.class), null, authModuleKt$authModule$1$invoke$$inlined$factoryOf$3, kind, emptyList3));
        module.p(aVar4);
        new Pair(module, aVar4);
        AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$4 authModuleKt$authModule$1$invoke$$inlined$factoryOf$4 = new AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$4();
        z8.c a13 = aVar.a();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar5 = new org.koin.core.instance.a(new org.koin.core.definition.a(a13, Reflection.getOrCreateKotlinClass(e.class), null, authModuleKt$authModule$1$invoke$$inlined$factoryOf$4, kind, emptyList4));
        module.p(aVar5);
        new Pair(module, aVar5);
        AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$5 authModuleKt$authModule$1$invoke$$inlined$factoryOf$5 = new AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$5();
        z8.c a14 = aVar.a();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar6 = new org.koin.core.instance.a(new org.koin.core.definition.a(a14, Reflection.getOrCreateKotlinClass(d.class), null, authModuleKt$authModule$1$invoke$$inlined$factoryOf$5, kind, emptyList5));
        module.p(aVar6);
        new Pair(module, aVar6);
        AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$6 authModuleKt$authModule$1$invoke$$inlined$factoryOf$6 = new AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$6();
        z8.c a15 = aVar.a();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar7 = new org.koin.core.instance.a(new org.koin.core.definition.a(a15, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.currentuser.i.class), null, authModuleKt$authModule$1$invoke$$inlined$factoryOf$6, kind, emptyList6));
        module.p(aVar7);
        new Pair(module, aVar7);
        AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$7 authModuleKt$authModule$1$invoke$$inlined$factoryOf$7 = new AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$7();
        z8.c a16 = aVar.a();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar8 = new org.koin.core.instance.a(new org.koin.core.definition.a(a16, Reflection.getOrCreateKotlinClass(k.class), null, authModuleKt$authModule$1$invoke$$inlined$factoryOf$7, kind, emptyList7));
        module.p(aVar8);
        new Pair(module, aVar8);
        AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$8 authModuleKt$authModule$1$invoke$$inlined$factoryOf$8 = new AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$8();
        z8.c a17 = aVar.a();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar9 = new org.koin.core.instance.a(new org.koin.core.definition.a(a17, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.currentuser.g.class), null, authModuleKt$authModule$1$invoke$$inlined$factoryOf$8, kind, emptyList8));
        module.p(aVar9);
        new Pair(module, aVar9);
        AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$9 authModuleKt$authModule$1$invoke$$inlined$factoryOf$9 = new AuthModuleKt$authModule$1$invoke$$inlined$factoryOf$9();
        z8.c a18 = aVar.a();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar10 = new org.koin.core.instance.a(new org.koin.core.definition.a(a18, Reflection.getOrCreateKotlinClass(b.class), null, authModuleKt$authModule$1$invoke$$inlined$factoryOf$9, kind, emptyList9));
        module.p(aVar10);
        new Pair(module, aVar10);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}
