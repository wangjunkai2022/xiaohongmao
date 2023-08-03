package com.im.freechat.di;

import com.im.freechat.domain.usecase.currentuser.d;
import com.im.freechat.domain.usecase.currentuser.f;
import com.im.freechat.domain.usecase.currentuser.j;
import com.im.freechat.domain.usecase.currentuser.l;
import com.im.freechat.domain.usecase.currentuser.n;
import com.im.freechat.domain.usecase.settings.b;
import com.im.freechat.ui.settings.SettingsViewModel;
import com.im.freechat.ui.settings.data_usage.DataUsageViewModel;
import com.im.freechat.ui.settings.data_usage.k;
import com.im.freechat.ui.settings.data_usage.o;
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

/* compiled from: SettingsModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class SettingsModuleKt$settingsModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final SettingsModuleKt$settingsModule$1 f41272a = new SettingsModuleKt$settingsModule$1();

    SettingsModuleKt$settingsModule$1() {
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
        List emptyList10;
        List emptyList11;
        List emptyList12;
        List emptyList13;
        List emptyList14;
        List emptyList15;
        Intrinsics.checkNotNullParameter(module, "$this$module");
        SettingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$1 settingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$1 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$1();
        c.a aVar = c.f92526e;
        z8.c a10 = aVar.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(SettingsViewModel.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$1, kind, emptyList));
        module.p(aVar2);
        new Pair(module, aVar2);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$2 settingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$2 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$2();
        z8.c a11 = aVar.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(DataUsageViewModel.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$viewModelOf$2, kind, emptyList2));
        module.p(aVar3);
        new Pair(module, aVar3);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$1 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$1 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$1();
        z8.c a12 = aVar.a();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar4 = new org.koin.core.instance.a(new org.koin.core.definition.a(a12, Reflection.getOrCreateKotlinClass(k.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$1, kind, emptyList3));
        module.p(aVar4);
        new Pair(module, aVar4);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$2 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$2 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$2();
        z8.c a13 = aVar.a();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar5 = new org.koin.core.instance.a(new org.koin.core.definition.a(a13, Reflection.getOrCreateKotlinClass(o.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$2, kind, emptyList4));
        module.p(aVar5);
        new Pair(module, aVar5);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$3 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$3 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$3();
        z8.c a14 = aVar.a();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar6 = new org.koin.core.instance.a(new org.koin.core.definition.a(a14, Reflection.getOrCreateKotlinClass(n.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$3, kind, emptyList5));
        module.p(aVar6);
        new Pair(module, aVar6);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$4 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$4 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$4();
        z8.c a15 = aVar.a();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar7 = new org.koin.core.instance.a(new org.koin.core.definition.a(a15, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.currentuser.o.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$4, kind, emptyList6));
        module.p(aVar7);
        new Pair(module, aVar7);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$5 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$5 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$5();
        z8.c a16 = aVar.a();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar8 = new org.koin.core.instance.a(new org.koin.core.definition.a(a16, Reflection.getOrCreateKotlinClass(d.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$5, kind, emptyList7));
        module.p(aVar8);
        new Pair(module, aVar8);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$6 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$6 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$6();
        z8.c a17 = aVar.a();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar9 = new org.koin.core.instance.a(new org.koin.core.definition.a(a17, Reflection.getOrCreateKotlinClass(l.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$6, kind, emptyList8));
        module.p(aVar9);
        new Pair(module, aVar9);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$7 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$7 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$7();
        z8.c a18 = aVar.a();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar10 = new org.koin.core.instance.a(new org.koin.core.definition.a(a18, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.currentuser.c.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$7, kind, emptyList9));
        module.p(aVar10);
        new Pair(module, aVar10);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$8 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$8 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$8();
        z8.c a19 = aVar.a();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar11 = new org.koin.core.instance.a(new org.koin.core.definition.a(a19, Reflection.getOrCreateKotlinClass(j.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$8, kind, emptyList10));
        module.p(aVar11);
        new Pair(module, aVar11);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$9 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$9 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$9();
        z8.c a20 = aVar.a();
        emptyList11 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar12 = new org.koin.core.instance.a(new org.koin.core.definition.a(a20, Reflection.getOrCreateKotlinClass(f.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$9, kind, emptyList11));
        module.p(aVar12);
        new Pair(module, aVar12);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$10 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$10 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$10();
        z8.c a21 = aVar.a();
        emptyList12 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar13 = new org.koin.core.instance.a(new org.koin.core.definition.a(a21, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.chat.d.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$10, kind, emptyList12));
        module.p(aVar13);
        new Pair(module, aVar13);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$11 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$11 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$11();
        z8.c a22 = aVar.a();
        emptyList13 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar14 = new org.koin.core.instance.a(new org.koin.core.definition.a(a22, Reflection.getOrCreateKotlinClass(b.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$11, kind, emptyList13));
        module.p(aVar14);
        new Pair(module, aVar14);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$12 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$12 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$12();
        z8.c a23 = aVar.a();
        emptyList14 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar15 = new org.koin.core.instance.a(new org.koin.core.definition.a(a23, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.settings.c.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$12, kind, emptyList14));
        module.p(aVar15);
        new Pair(module, aVar15);
        SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$13 settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$13 = new SettingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$13();
        z8.c a24 = aVar.a();
        emptyList15 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar16 = new org.koin.core.instance.a(new org.koin.core.definition.a(a24, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.settings.a.class), null, settingsModuleKt$settingsModule$1$invoke$$inlined$factoryOf$13, kind, emptyList15));
        module.p(aVar16);
        new Pair(module, aVar16);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}
