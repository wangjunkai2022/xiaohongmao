package com.im.freechat.di;

import com.im.freechat.domain.usecase.contact.ListenBlockedContactsInteractor;
import com.im.freechat.domain.usecase.contact.ListenContactListInteractor;
import com.im.freechat.domain.usecase.contact.ListenFollowingsInteractor;
import com.im.freechat.domain.usecase.contact.h;
import com.im.freechat.domain.usecase.contact.i;
import com.im.freechat.domain.usecase.contact.k;
import com.im.freechat.ui.contacts.ContactListViewModel;
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

/* compiled from: ContactModule.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lx8/a;", "", "a", "(Lx8/a;)V"}, k = 3, mv = {1, 7, 1})
/* loaded from: classes3.dex */
final class ContactModuleKt$contactModule$1 extends Lambda implements Function1<x8.a, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final ContactModuleKt$contactModule$1 f41246a = new ContactModuleKt$contactModule$1();

    ContactModuleKt$contactModule$1() {
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
        Intrinsics.checkNotNullParameter(module, "$this$module");
        ContactModuleKt$contactModule$1$invoke$$inlined$viewModelOf$1 contactModuleKt$contactModule$1$invoke$$inlined$viewModelOf$1 = new ContactModuleKt$contactModule$1$invoke$$inlined$viewModelOf$1();
        c.a aVar = c.f92526e;
        z8.c a10 = aVar.a();
        Kind kind = Kind.Factory;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar2 = new org.koin.core.instance.a(new org.koin.core.definition.a(a10, Reflection.getOrCreateKotlinClass(ContactListViewModel.class), null, contactModuleKt$contactModule$1$invoke$$inlined$viewModelOf$1, kind, emptyList));
        module.p(aVar2);
        new Pair(module, aVar2);
        ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$1 contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$1 = new ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$1();
        z8.c a11 = aVar.a();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar3 = new org.koin.core.instance.a(new org.koin.core.definition.a(a11, Reflection.getOrCreateKotlinClass(com.im.freechat.ui.contacts.c.class), null, contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$1, kind, emptyList2));
        module.p(aVar3);
        new Pair(module, aVar3);
        ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$2 contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$2 = new ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$2();
        z8.c a12 = aVar.a();
        emptyList3 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar4 = new org.koin.core.instance.a(new org.koin.core.definition.a(a12, Reflection.getOrCreateKotlinClass(h.class), null, contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$2, kind, emptyList3));
        module.p(aVar4);
        new Pair(module, aVar4);
        ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$3 contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$3 = new ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$3();
        z8.c a13 = aVar.a();
        emptyList4 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar5 = new org.koin.core.instance.a(new org.koin.core.definition.a(a13, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.contact.c.class), null, contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$3, kind, emptyList4));
        module.p(aVar5);
        new Pair(module, aVar5);
        ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$4 contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$4 = new ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$4();
        z8.c a14 = aVar.a();
        emptyList5 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar6 = new org.koin.core.instance.a(new org.koin.core.definition.a(a14, Reflection.getOrCreateKotlinClass(ListenContactListInteractor.class), null, contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$4, kind, emptyList5));
        module.p(aVar6);
        new Pair(module, aVar6);
        ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$5 contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$5 = new ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$5();
        z8.c a15 = aVar.a();
        emptyList6 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar7 = new org.koin.core.instance.a(new org.koin.core.definition.a(a15, Reflection.getOrCreateKotlinClass(ListenFollowingsInteractor.class), null, contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$5, kind, emptyList6));
        module.p(aVar7);
        new Pair(module, aVar7);
        ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$6 contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$6 = new ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$6();
        z8.c a16 = aVar.a();
        emptyList7 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar8 = new org.koin.core.instance.a(new org.koin.core.definition.a(a16, Reflection.getOrCreateKotlinClass(ListenBlockedContactsInteractor.class), null, contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$6, kind, emptyList7));
        module.p(aVar8);
        new Pair(module, aVar8);
        ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$7 contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$7 = new ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$7();
        z8.c a17 = aVar.a();
        emptyList8 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar9 = new org.koin.core.instance.a(new org.koin.core.definition.a(a17, Reflection.getOrCreateKotlinClass(k.class), null, contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$7, kind, emptyList8));
        module.p(aVar9);
        new Pair(module, aVar9);
        ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$8 contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$8 = new ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$8();
        z8.c a18 = aVar.a();
        emptyList9 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar10 = new org.koin.core.instance.a(new org.koin.core.definition.a(a18, Reflection.getOrCreateKotlinClass(com.im.freechat.domain.usecase.contact.g.class), null, contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$8, kind, emptyList9));
        module.p(aVar10);
        new Pair(module, aVar10);
        ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$9 contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$9 = new ContactModuleKt$contactModule$1$invoke$$inlined$factoryOf$9();
        z8.c a19 = aVar.a();
        emptyList10 = CollectionsKt__CollectionsKt.emptyList();
        org.koin.core.instance.a aVar11 = new org.koin.core.instance.a(new org.koin.core.definition.a(a19, Reflection.getOrCreateKotlinClass(i.class), null, contactModuleKt$contactModule$1$invoke$$inlined$factoryOf$9, kind, emptyList10));
        module.p(aVar11);
        new Pair(module, aVar11);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(x8.a aVar) {
        a(aVar);
        return Unit.INSTANCE;
    }
}
